; ModuleID = '/llk/IR_all_yes/kernel/irq/manage.c_pt.bc'
source_filename = "../kernel/irq/manage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+synchronize_hardirq\22, \22a\22\09"
module asm "\09.weak\09__crc_synchronize_hardirq\09\09\09\09"
module asm "\09.long\09__crc_synchronize_hardirq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_hardirq\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+synchronize_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_synchronize_irq\09\09\09\09"
module asm "\09.long\09__crc_synchronize_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_irq\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_set_affinity\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_affinity\09\09\09\09"
module asm "\09.long\09__crc_irq_set_affinity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_force_affinity\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_force_affinity\09\09\09\09"
module asm "\09.long\09__crc_irq_force_affinity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_force_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_force_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_force_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__irq_apply_affinity_hint\22, \22a\22\09"
module asm "\09.weak\09__crc___irq_apply_affinity_hint\09\09\09\09"
module asm "\09.long\09__crc___irq_apply_affinity_hint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_apply_affinity_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_apply_affinity_hint\22\09\09\09\09\09"
module asm "__kstrtabns___irq_apply_affinity_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_set_affinity_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_affinity_notifier\09\09\09\09"
module asm "\09.long\09__crc_irq_set_affinity_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_affinity_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_affinity_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_affinity_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_set_vcpu_affinity\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_vcpu_affinity\09\09\09\09"
module asm "\09.long\09__crc_irq_set_vcpu_affinity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_vcpu_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_vcpu_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_vcpu_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+disable_irq_nosync\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_irq_nosync\09\09\09\09"
module asm "\09.long\09__crc_disable_irq_nosync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_irq_nosync\22\09\09\09\09\09"
module asm "__kstrtabns_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+disable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_irq\09\09\09\09"
module asm "\09.long\09__crc_disable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+disable_hardirq\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_hardirq\09\09\09\09"
module asm "\09.long\09__crc_disable_hardirq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_hardirq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_set_irq_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_irq_wake\09\09\09\09"
module asm "\09.long\09__crc_irq_set_irq_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_irq_wake\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_set_parent\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_parent\09\09\09\09"
module asm "\09.long\09__crc_irq_set_parent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_wake_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_wake_thread\09\09\09\09"
module asm "\09.long\09__crc_irq_wake_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_wake_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_wake_thread\22\09\09\09\09\09"
module asm "__kstrtabns_irq_wake_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_free_irq\09\09\09\09"
module asm "\09.long\09__crc_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+request_threaded_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_request_threaded_irq\09\09\09\09"
module asm "\09.long\09__crc_request_threaded_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22request_threaded_irq\22\09\09\09\09\09"
module asm "__kstrtabns_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+request_any_context_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_request_any_context_irq\09\09\09\09"
module asm "\09.long\09__crc_request_any_context_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22request_any_context_irq\22\09\09\09\09\09"
module asm "__kstrtabns_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+enable_percpu_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_enable_percpu_irq\09\09\09\09"
module asm "\09.long\09__crc_enable_percpu_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_enable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_percpu_is_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_percpu_is_enabled\09\09\09\09"
module asm "\09.long\09__crc_irq_percpu_is_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_percpu_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_percpu_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_irq_percpu_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+disable_percpu_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_percpu_irq\09\09\09\09"
module asm "\09.long\09__crc_disable_percpu_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_percpu_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_free_percpu_irq\09\09\09\09"
module asm "\09.long\09__crc_free_percpu_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22free_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_free_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__request_percpu_irq\22, \22a\22\09"
module asm "\09.weak\09__crc___request_percpu_irq\09\09\09\09"
module asm "\09.long\09__crc___request_percpu_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___request_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22__request_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns___request_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_get_irqchip_state\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_get_irqchip_state\09\09\09\09"
module asm "\09.long\09__crc_irq_get_irqchip_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_irqchip_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_set_irqchip_state\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_set_irqchip_state\09\09\09\09"
module asm "\09.long\09__crc_irq_set_irqchip_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_irqchip_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_has_action\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_has_action\09\09\09\09"
module asm "\09.long\09__crc_irq_has_action\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_has_action:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_has_action\22\09\09\09\09\09"
module asm "__kstrtabns_irq_has_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_check_status_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_check_status_bit\09\09\09\09"
module asm "\09.long\09__crc_irq_check_status_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_check_status_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_check_status_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_check_status_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@force_irqthreads_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__setup_str_setup_forced_irqthreads = internal constant [11 x i8] c"threadirqs\00", section ".init.rodata", align 1
@__setup_setup_forced_irqthreads = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_forced_irqthreads, ptr @setup_forced_irqthreads, i32 1 }, section ".init.setup", align 4
@__kstrtab_synchronize_hardirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_hardirq = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_hardirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_hardirq to i32), ptr @__kstrtab_synchronize_hardirq, ptr @__kstrtabns_synchronize_hardirq }, section "___ksymtab+synchronize_hardirq", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/irq/manage.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_synchronize_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_irq to i32), ptr @__kstrtab_synchronize_irq, ptr @__kstrtabns_synchronize_irq }, section "___ksymtab+synchronize_irq", align 4
@irq_do_set_affinity.tmp_mask_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tmp_mask_lock\00", [18 x i8] zeroinitializer }, align 32
@irq_do_set_affinity.tmp_mask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_irq_set_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_affinity to i32), ptr @__kstrtab_irq_set_affinity, ptr @__kstrtabns_irq_set_affinity }, section "___ksymtab_gpl+irq_set_affinity", align 4
@__kstrtab_irq_force_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_force_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_force_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_force_affinity to i32), ptr @__kstrtab_irq_force_affinity, ptr @__kstrtabns_irq_force_affinity }, section "___ksymtab_gpl+irq_force_affinity", align 4
@__kstrtab___irq_apply_affinity_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_apply_affinity_hint = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_apply_affinity_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_apply_affinity_hint to i32), ptr @__kstrtab___irq_apply_affinity_hint, ptr @__kstrtabns___irq_apply_affinity_hint }, section "___ksymtab_gpl+__irq_apply_affinity_hint", align 4
@irq_set_affinity_notifier.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&notify->work)\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_irq_set_affinity_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_affinity_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_affinity_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_affinity_notifier to i32), ptr @__kstrtab_irq_set_affinity_notifier, ptr @__kstrtabns_irq_set_affinity_notifier }, section "___ksymtab_gpl+irq_set_affinity_notifier", align 4
@irq_default_affinity = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@irq_setup_affinity.mask_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mask_lock\00", [22 x i8] zeroinitializer }, align 32
@irq_setup_affinity.mask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@__kstrtab_irq_set_vcpu_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_vcpu_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_vcpu_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_vcpu_affinity to i32), ptr @__kstrtab_irq_set_vcpu_affinity, ptr @__kstrtabns_irq_set_vcpu_affinity }, section "___ksymtab_gpl+irq_set_vcpu_affinity", align 4
@__kstrtab_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_irq_nosync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_irq_nosync to i32), ptr @__kstrtab_disable_irq_nosync, ptr @__kstrtabns_disable_irq_nosync }, section "___ksymtab+disable_irq_nosync", align 4
@__kstrtab_disable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_irq to i32), ptr @__kstrtab_disable_irq, ptr @__kstrtabns_disable_irq }, section "___ksymtab+disable_irq", align 4
@__kstrtab_disable_hardirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_hardirq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_hardirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_hardirq to i32), ptr @__kstrtab_disable_hardirq, ptr @__kstrtabns_disable_hardirq }, section "___ksymtab_gpl+disable_hardirq", align 4
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Unbalanced enable for IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013enable_irq before setup/request_irq: irq %u\0A\00", [49 x i8] zeroinitializer }, align 32
@__kstrtab_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_irq to i32), ptr @__kstrtab_enable_irq, ptr @__kstrtabns_enable_irq }, section "___ksymtab+enable_irq", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unbalanced IRQ %d wake disable\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_irq_set_irq_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_irq_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_irq_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_irq_wake to i32), ptr @__kstrtab_irq_set_irq_wake, ptr @__kstrtabns_irq_set_irq_wake }, section "___ksymtab+irq_set_irq_wake", align 4
@__irq_set_trigger.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manage\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__irq_set_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No set_type function for IRQ %d (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"genirq: No set_type function for IRQ %d (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__irq_set_trigger._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str, i32 987, ptr null, ptr null }, align 1
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013genirq: Setting trigger mode %lu for irq %u failed (%pS)\0A\00", [36 x i8] zeroinitializer }, align 32
@__irq_set_trigger._entry_ptr = internal global ptr @__irq_set_trigger._entry, section ".printk_index", align 4
@__kstrtab_irq_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_parent to i32), ptr @__kstrtab_irq_set_parent, ptr @__kstrtabns_irq_set_parent }, section "___ksymtab_gpl+irq_set_parent", align 4
@__kstrtab_irq_wake_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_wake_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_wake_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_wake_thread to i32), ptr @__kstrtab_irq_wake_thread, ptr @__kstrtabns_irq_wake_thread }, section "___ksymtab_gpl+irq_wake_thread", align 4
@__kstrtab_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_irq to i32), ptr @__kstrtab_free_irq, ptr @__kstrtabns_free_irq }, section "___ksymtab+free_irq", align 4
@__kstrtab_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_request_threaded_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_threaded_irq to i32), ptr @__kstrtab_request_threaded_irq, ptr @__kstrtabns_request_threaded_irq }, section "___ksymtab+request_threaded_irq", align 4
@__kstrtab_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_request_any_context_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_any_context_irq to i32), ptr @__kstrtab_request_any_context_irq, ptr @__kstrtabns_request_any_context_irq }, section "___ksymtab_gpl+request_any_context_irq", align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set type for IRQ%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_enable_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_percpu_irq to i32), ptr @__kstrtab_enable_percpu_irq, ptr @__kstrtabns_enable_percpu_irq }, section "___ksymtab_gpl+enable_percpu_irq", align 4
@__kstrtab_irq_percpu_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_percpu_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_percpu_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_percpu_is_enabled to i32), ptr @__kstrtab_irq_percpu_is_enabled, ptr @__kstrtabns_irq_percpu_is_enabled }, section "___ksymtab_gpl+irq_percpu_is_enabled", align 4
@__kstrtab_disable_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_percpu_irq to i32), ptr @__kstrtab_disable_percpu_irq, ptr @__kstrtabns_disable_percpu_irq }, section "___ksymtab_gpl+disable_percpu_irq", align 4
@__kstrtab_free_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_free_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_percpu_irq to i32), ptr @__kstrtab_free_percpu_irq, ptr @__kstrtabns_free_percpu_irq }, section "___ksymtab_gpl+free_percpu_irq", align 4
@__kstrtab___request_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns___request_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab___request_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__request_percpu_irq to i32), ptr @__kstrtab___request_percpu_irq, ptr @__kstrtabns___request_percpu_irq }, section "___ksymtab_gpl+__request_percpu_irq", align 4
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013prepare_percpu_nmi called for a non-NMI interrupt: irq %u\0A\00", [35 x i8] zeroinitializer }, align 32
@prepare_percpu_nmi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 2722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013genirq: Failed to setup NMI delivery: irq %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prepare_percpu_nmi\00", [45 x i8] zeroinitializer }, align 32
@prepare_percpu_nmi._entry_ptr = internal global ptr @prepare_percpu_nmi._entry, section ".printk_index", align 4
@__irq_get_irqchip_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_get_irqchip_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_irqchip_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_irqchip_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_irqchip_state to i32), ptr @__kstrtab_irq_get_irqchip_state, ptr @__kstrtabns_irq_get_irqchip_state }, section "___ksymtab_gpl+irq_get_irqchip_state", align 4
@irq_set_irqchip_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_set_irqchip_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_irqchip_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_irqchip_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_irqchip_state to i32), ptr @__kstrtab_irq_set_irqchip_state, ptr @__kstrtabns_irq_set_irqchip_state }, section "___ksymtab_gpl+irq_set_irqchip_state", align 4
@__kstrtab_irq_has_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_has_action = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_has_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_has_action to i32), ptr @__kstrtab_irq_has_action, ptr @__kstrtabns_irq_has_action }, section "___ksymtab_gpl+irq_has_action", align 4
@__kstrtab_irq_check_status_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_check_status_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_check_status_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_check_status_bit to i32), ptr @__kstrtab_irq_check_status_bit, ptr @__kstrtabns_irq_check_status_bit }, section "___ksymtab_gpl+irq_check_status_bit", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@irq_validate_effective_affinity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_validate_effective_affinity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014genirq: irq_chip %s did not update eff. affinity mask of irq %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"irq_validate_effective_affinity\00", [32 x i8] zeroinitializer }, align 32
@irq_validate_effective_affinity._entry_ptr = internal global ptr @irq_validate_effective_affinity._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Trying to free IRQ %d from IRQ context!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Trying to free already-free IRQ %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__free_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@__setup_irq._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1559, ptr null, ptr null }, align 1
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013genirq: Failed to request resources for %s (irq %d) on irqchip %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__setup_irq\00", [20 x i8] zeroinitializer }, align 32
@__setup_irq._entry_ptr = internal global ptr @__setup_irq._entry, section ".printk_index", align 4
@__setup_irq._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 1586, ptr null, ptr null }, align 1
@.str.24 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013genirq: Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\0A\00", [57 x i8] zeroinitializer }, align 32
@__setup_irq._entry_ptr.25 = internal global ptr @__setup_irq._entry.23, section ".printk_index", align 4
@__setup_irq._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str, i32 1680, ptr null, ptr null }, align 1
@.str.27 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013genirq: Threaded irq requested with handler=NULL and !ONESHOT for %s (irq %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@__setup_irq._entry_ptr.28 = internal global ptr @__setup_irq._entry.26, section ".printk_index", align 4
@__setup_irq.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&desc->wait_for_threads\00", [40 x i8] zeroinitializer }, align 32
@noirqdebug = external dso_local local_unnamed_addr global i8, align 1
@__setup_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__setup_irq._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str, i32 1757, ptr null, ptr null }, align 1
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014genirq: irq %d uses trigger mode %u; requested %u\0A\00", [43 x i8] zeroinitializer }, align 32
@__setup_irq._entry_ptr.32 = internal global ptr @__setup_irq._entry.30, section ".printk_index", align 4
@__setup_irq._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str, i32 1800, ptr null, ptr null }, align 1
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013genirq: Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@__setup_irq._entry_ptr.35 = internal global ptr @__setup_irq._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Primary handler called for nested irq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Secondary action handler called for irq %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq/%d-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq/%d-s-%s\00", [20 x i8] zeroinitializer }, align 32
@irq_thread_dtor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_thread_dtor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013genirq: exiting task \22%s\22 (%d) is an active IRQ thread (irq %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_thread_dtor\00", [16 x i8] zeroinitializer }, align 32
@irq_thread_dtor._entry_ptr = internal global ptr @irq_thread_dtor._entry, section ".printk_index", align 4
@irq_wake_secondary.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"percpu IRQ %d still enabled on CPU%d!\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 82432]
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"force_irqthreads_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 28, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 137, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"tmp_mask_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 253, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"tmp_mask\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 254, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 558, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"irq_default_affinity\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 144, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"mask_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 586, i32 9 }
@___asan_gen_.84 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 587, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 774, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 815, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 900, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 949, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 986, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 2363, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 2713, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 2722, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 205, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1846, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1861, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1558, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1585, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1679, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1686, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1756, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1799, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1027, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1033, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1419, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1422, i32 7 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1223, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 108, i32 2 }
@___asan_gen_.190 = private constant [23 x i8] c"../kernel/irq/manage.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 2446, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 695, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__irq_set_trigger._entry, ptr @__irq_set_trigger._entry_ptr, ptr @__ksymtab___irq_apply_affinity_hint, ptr @__ksymtab___request_percpu_irq, ptr @__ksymtab_disable_hardirq, ptr @__ksymtab_disable_irq, ptr @__ksymtab_disable_irq_nosync, ptr @__ksymtab_disable_percpu_irq, ptr @__ksymtab_enable_irq, ptr @__ksymtab_enable_percpu_irq, ptr @__ksymtab_free_irq, ptr @__ksymtab_free_percpu_irq, ptr @__ksymtab_irq_check_status_bit, ptr @__ksymtab_irq_force_affinity, ptr @__ksymtab_irq_get_irqchip_state, ptr @__ksymtab_irq_has_action, ptr @__ksymtab_irq_percpu_is_enabled, ptr @__ksymtab_irq_set_affinity, ptr @__ksymtab_irq_set_affinity_notifier, ptr @__ksymtab_irq_set_irq_wake, ptr @__ksymtab_irq_set_irqchip_state, ptr @__ksymtab_irq_set_parent, ptr @__ksymtab_irq_set_vcpu_affinity, ptr @__ksymtab_irq_wake_thread, ptr @__ksymtab_request_any_context_irq, ptr @__ksymtab_request_threaded_irq, ptr @__ksymtab_synchronize_hardirq, ptr @__ksymtab_synchronize_irq, ptr @__setup_irq._entry, ptr @__setup_irq._entry.23, ptr @__setup_irq._entry.26, ptr @__setup_irq._entry.30, ptr @__setup_irq._entry.33, ptr @__setup_irq._entry_ptr, ptr @__setup_irq._entry_ptr.25, ptr @__setup_irq._entry_ptr.28, ptr @__setup_irq._entry_ptr.32, ptr @__setup_irq._entry_ptr.35, ptr @__setup_setup_forced_irqthreads, ptr @irq_thread_dtor._entry, ptr @irq_thread_dtor._entry_ptr, ptr @irq_validate_effective_affinity._entry, ptr @irq_validate_effective_affinity._entry_ptr, ptr @prepare_percpu_nmi._entry, ptr @prepare_percpu_nmi._entry_ptr, ptr @force_irqthreads_key, ptr @.str, ptr @irq_do_set_affinity.tmp_mask_lock, ptr @.str.1, ptr @irq_do_set_affinity.tmp_mask, ptr @irq_set_affinity_notifier.__key, ptr @.str.2, ptr @irq_default_affinity, ptr @irq_setup_affinity.mask_lock, ptr @.str.3, ptr @irq_setup_affinity.mask, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_irqthreads_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_do_set_affinity.tmp_mask_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_do_set_affinity.tmp_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_set_affinity_notifier.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_default_affinity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_setup_affinity.mask_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_setup_affinity.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_percpu_nmi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_validate_effective_affinity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_thread_dtor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_forced_irqthreads(ptr nocapture noundef readnone %arg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @static_key_enable(ptr noundef nonnull @force_irqthreads_key) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @synchronize_hardirq(i32 noundef %irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body9.i.do.body.i_crit_edge, %if.then
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i41.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool.i.not42.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool.i.not42.i, label %do.body.i.do.body9.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.do.body9.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !190
  %4 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i = and i32 %7, 262144
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.i.do.body9.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.do.body9.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i.do.body9.i_crit_edge, %do.body.i.do.body9.i_crit_edge
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %8 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #11
  %12 = and i32 %11, 262144
  %tobool29.not.i = icmp eq i32 %12, 0
  br i1 %tobool29.not.i, label %__synchronize_hardirq.exit, label %do.body9.i.do.body.i_crit_edge

do.body9.i.do.body.i_crit_edge:                   ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__synchronize_hardirq.exit:                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %threads_active = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %threads_active, i32 noundef 4) #11
  %13 = ptrtoint ptr %threads_active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %threads_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br label %cleanup

cleanup:                                          ; preds = %__synchronize_hardirq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2.not, %__synchronize_hardirq.exit ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__synchronize_hardirq(ptr noundef %desc, i1 noundef zeroext %sync_chip) unnamed_addr #1 align 64 {
entry:
  %inprogress = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inprogress) #11
  %0 = ptrtoint ptr %inprogress to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %inprogress, align 1, !annotation !191
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %do.body19.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i41 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.i.not42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.i.not42, label %do.body.do.body9_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !190
  %5 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i = and i32 %8, 262144
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end.do.body9_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.body9:                                         ; preds = %do.end.do.body9_crit_edge, %do.body.do.body9_crit_edge
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i36 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.i37 = icmp eq i32 %and.i36, 0
  %and.i36.lobit = lshr exact i32 %and.i36, 18
  %13 = trunc i32 %and.i36.lobit to i8
  %14 = ptrtoint ptr %inprogress to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %inprogress, align 1
  %15 = and i1 %tobool.i37, %sync_chip
  br i1 %15, label %do.body9.do.body.i_crit_edge, label %do.body9.do.body19_crit_edge

do.body9.do.body19_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body9.do.body.i_crit_edge:                     ; preds = %do.body9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end43.i.do.body.i_crit_edge, %do.body9.do.body.i_crit_edge
  %data.addr.0.i = phi ptr [ %21, %if.end43.i.do.body.i_crit_edge ], [ %irq_data.i, %do.body9.do.body.i_crit_edge ]
  %chip.i.i = getelementptr inbounds %struct.irq_data, ptr %data.addr.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b61.i = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br i1 %.b61.i, label %land.rhs.i.do.body19_crit_edge, label %if.then.i, !prof !192

land.rhs.i.do.body19_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  br label %do.body19

if.end40.i:                                       ; preds = %do.body.i
  %irq_get_irqchip_state.i = getelementptr inbounds %struct.irq_chip, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %irq_get_irqchip_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_get_irqchip_state.i, align 4
  %tobool41.not.i = icmp eq ptr %19, null
  br i1 %tobool41.not.i, label %if.end43.i, label %do.end46.i

if.end43.i:                                       ; preds = %if.end40.i
  %parent_data.i = getelementptr inbounds %struct.irq_data, ptr %data.addr.0.i, i32 0, i32 6
  %20 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_data.i, align 4
  %tobool45.not.i = icmp eq ptr %21, null
  br i1 %tobool45.not.i, label %if.end43.i.do.body19_crit_edge, label %if.end43.i.do.body.i_crit_edge

if.end43.i.do.body.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end43.i.do.body19_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.end46.i:                                       ; preds = %if.end40.i
  %tobool47.not.i = icmp eq ptr %data.addr.0.i, null
  br i1 %tobool47.not.i, label %do.end46.i.do.body19_crit_edge, label %if.then48.i

do.end46.i.do.body19_crit_edge:                   ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

if.then48.i:                                      ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = call i32 %19(ptr noundef nonnull %data.addr.0.i, i32 noundef 1, ptr noundef nonnull %inprogress) #11
  br label %do.body19

do.body19:                                        ; preds = %if.then48.i, %do.end46.i.do.body19_crit_edge, %if.end43.i.do.body19_crit_edge, %if.then.i, %land.rhs.i.do.body19_crit_edge, %do.body9.do.body19_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  %22 = ptrtoint ptr %inprogress to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %inprogress, align 1, !range !193
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %do.end30, label %do.body19.do.body_crit_edge

do.body19.do.body_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end30:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inprogress) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synchronize_irq(i32 noundef %irq) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  tail call fastcc void @__synchronize_hardirq(ptr noundef nonnull %call, i1 noundef zeroext true)
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 138) #11
  %threads_active = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %threads_active, i32 noundef 4) #11
  %0 = ptrtoint ptr %threads_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %threads_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.then.if.end17_crit_edge, label %if.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 22
  %call826 = call i32 @prepare_to_wait_event(ptr noundef %wait_for_threads, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call.i.i2327 = call zeroext i1 @__kasan_check_read(ptr noundef %threads_active, i32 noundef 4) #11
  %3 = ptrtoint ptr %threads_active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %threads_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not28 = icmp eq i32 %4, 0
  br i1 %tobool11.not28, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %wait_for_threads, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call.i.i23 = call zeroext i1 @__kasan_check_read(ptr noundef %threads_active, i32 noundef 4) #11
  %5 = ptrtoint ptr %threads_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %threads_active, align 4
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_for_threads, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_can_set_affinity(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.__irq_can_set_affinity.exit_crit_edge, label %lor.lhs.false.i

entry.__irq_can_set_affinity.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_can_set_affinity.exit

lor.lhs.false.i:                                  ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.__irq_can_set_affinity.exit_crit_edge

lor.lhs.false.i.__irq_can_set_affinity.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_can_set_affinity.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false1.i.__irq_can_set_affinity.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false1.i.__irq_can_set_affinity.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_can_set_affinity.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  %irq_set_affinity.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_set_affinity.i, align 4
  %tobool7.not.i = icmp ne ptr %7, null
  %phi.cast = zext i1 %tobool7.not.i to i32
  br label %__irq_can_set_affinity.exit

__irq_can_set_affinity.exit:                      ; preds = %lor.lhs.false4.i, %lor.lhs.false1.i.__irq_can_set_affinity.exit_crit_edge, %lor.lhs.false.i.__irq_can_set_affinity.exit_crit_edge, %entry.__irq_can_set_affinity.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false1.i.__irq_can_set_affinity.exit_crit_edge ], [ 0, %lor.lhs.false.i.__irq_can_set_affinity.exit_crit_edge ], [ 0, %entry.__irq_can_set_affinity.exit_crit_edge ], [ %phi.cast, %lor.lhs.false4.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_can_set_affinity_usr(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %lor.lhs.false.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.lhs.false.i:                                  ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.land.end_crit_edge

lor.lhs.false.i.land.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false1.i.land.end_crit_edge, label %__irq_can_set_affinity.exit

lor.lhs.false1.i.land.end_crit_edge:              ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

__irq_can_set_affinity.exit:                      ; preds = %lor.lhs.false1.i
  %irq_set_affinity.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_set_affinity.i, align 4
  %tobool7.not.i.not = icmp eq ptr %7, null
  br i1 %tobool7.not.i.not, label %__irq_can_set_affinity.exit.land.end_crit_edge, label %land.rhs

__irq_can_set_affinity.exit.land.end_crit_edge:   ; preds = %__irq_can_set_affinity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %__irq_can_set_affinity.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %__irq_can_set_affinity.exit.land.end_crit_edge, %lor.lhs.false1.i.land.end_crit_edge, %lor.lhs.false.i.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %__irq_can_set_affinity.exit.land.end_crit_edge ], [ %tobool.i.not, %land.rhs ], [ false, %lor.lhs.false1.i.land.end_crit_edge ], [ false, %lor.lhs.false.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_set_thread_affinity(ptr nocapture noundef readonly %desc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %action1 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %action.06 = load ptr, ptr %action1, align 4
  %tobool.not7 = icmp eq ptr %action.06, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %action.08 = phi ptr [ %action.0, %for.inc.for.body_crit_edge ], [ %action.06, %entry.for.body_crit_edge ]
  %thread = getelementptr inbounds %struct.irqaction, ptr %action.08, i32 0, i32 5
  %1 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %action.08, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %thread_flags) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.irqaction, ptr %action.08, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %action.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %action.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_do_set_affinity(ptr noundef %data, ptr noundef %mask, i1 noundef zeroext %force) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_set_affinity, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.else14_crit_edge, label %land.lhs.true

if.end.if.else14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @housekeeping_enabled(i32 noundef 128) #11
  br i1 %call4, label %if.then5, label %land.lhs.true.if.else14_crit_edge

land.lhs.true.if.else14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @housekeeping_cpumask(i32 noundef 128) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_do_set_affinity.tmp_mask_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull @irq_do_set_affinity.tmp_mask, ptr noundef %mask, ptr noundef %call6, i32 noundef %8) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i43 = tail call i32 @__bitmap_intersects(ptr noundef nonnull @irq_do_set_affinity.tmp_mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool.i44.not = icmp eq i32 %call.i.i43, 0
  %irq_do_set_affinity.tmp_mask.mask = select i1 %tobool.i44.not, ptr %mask, ptr @irq_do_set_affinity.tmp_mask
  %10 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_set_affinity, align 4
  %call13 = tail call i32 %11(ptr noundef %data, ptr noundef %irq_do_set_affinity.tmp_mask.mask, i1 noundef zeroext %force) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_do_set_affinity.tmp_mask_lock) #11
  br label %if.end18

if.else14:                                        ; preds = %land.lhs.true.if.else14_crit_edge, %if.end.if.else14_crit_edge
  %12 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_set_affinity, align 4
  %call17 = tail call i32 %13(ptr noundef %data, ptr noundef %mask, i1 noundef zeroext %force) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then5
  %ret.0 = phi i32 [ %call13, %if.then5 ], [ %call17, %if.else14 ]
  %14 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %if.end18.cleanup_crit_edge [
    i32 0, label %if.end18.sw.bb_crit_edge
    i32 2, label %if.end18.sw.bb_crit_edge46
    i32 1, label %if.end18.sw.bb19_crit_edge
  ]

if.end18.sw.bb19_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

if.end18.sw.bb_crit_edge46:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge46
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i45 = add i32 %17, 31
  %18 = lshr i32 %sub.i.i45, 3
  %mul.i.i = and i32 %18, 536870908
  %19 = call ptr @memcpy(ptr %16, ptr %mask, i32 %mul.i.i)
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb, %if.end18.sw.bb19_crit_edge
  %20 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %effective_affinity.i.i, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %26, i32 noundef %22) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %22)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %22
  br i1 %cmp4.i.i.i, label %land.end.i, label %sw.bb19.irq_validate_effective_affinity.exit_crit_edge

sw.bb19.irq_validate_effective_affinity.exit_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_validate_effective_affinity.exit

land.end.i:                                       ; preds = %sw.bb19
  %.b21.i = load i1, ptr @irq_validate_effective_affinity.__already_done, align 1
  br i1 %.b21.i, label %land.end.i.irq_validate_effective_affinity.exit_crit_edge, label %if.then7.i, !prof !192

land.end.i.irq_validate_effective_affinity.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_validate_effective_affinity.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @irq_validate_effective_affinity.__already_done, align 1
  %name.i = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 1
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %28, i32 noundef %30) #14
  br label %irq_validate_effective_affinity.exit

irq_validate_effective_affinity.exit:             ; preds = %if.then7.i, %land.end.i.irq_validate_effective_affinity.exit_crit_edge, %sw.bb19.irq_validate_effective_affinity.exit_crit_edge
  %action1.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %action1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %action.06.i = load ptr, ptr %action1.i, align 4
  %tobool.not7.i = icmp eq ptr %action.06.i, null
  br i1 %tobool.not7.i, label %irq_validate_effective_affinity.exit.cleanup_crit_edge, label %irq_validate_effective_affinity.exit.for.body.i_crit_edge

irq_validate_effective_affinity.exit.for.body.i_crit_edge: ; preds = %irq_validate_effective_affinity.exit
  br label %for.body.i

irq_validate_effective_affinity.exit.cleanup_crit_edge: ; preds = %irq_validate_effective_affinity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %irq_validate_effective_affinity.exit.for.body.i_crit_edge
  %action.08.i = phi ptr [ %action.0.i, %for.inc.i.for.body.i_crit_edge ], [ %action.06.i, %irq_validate_effective_affinity.exit.for.body.i_crit_edge ]
  %thread.i = getelementptr inbounds %struct.irqaction, ptr %action.08.i, i32 0, i32 5
  %32 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %thread.i, align 4
  %tobool2.not.i = icmp eq ptr %33, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %thread_flags.i = getelementptr inbounds %struct.irqaction, ptr %action.08.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %thread_flags.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.irqaction, ptr %action.08.i, i32 0, i32 3
  %34 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %action.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %action.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %irq_validate_effective_affinity.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end18.cleanup_crit_edge ], [ 0, %irq_validate_effective_affinity.exit.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity_locked(ptr noundef %data, ptr noundef %mask, i1 noundef zeroext %force) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_set_affinity, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 536871424
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %8)
  %9 = icmp eq i32 %8, 536870912
  br i1 %9, label %irq_set_affinity_deactivated.exit.thread, label %if.end6

irq_set_affinity_deactivated.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %12, 31
  %13 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %13, 536870908
  %14 = call ptr @memcpy(ptr %11, ptr %mask, i32 %mul.i.i.i)
  %15 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i, align 4
  %effective_affinity.i.i.i = getelementptr inbounds %struct.irq_common_data, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %effective_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %effective_affinity.i.i.i, align 4
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i.i = add i32 %19, 31
  %20 = lshr i32 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i32 %20, 536870908
  %21 = call ptr @memcpy(ptr %18, ptr %mask, i32 %mul.i.i.i.i)
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %22 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %common.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and.i = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @irq_do_set_affinity(ptr noundef %data, ptr noundef %mask, i1 noundef zeroext %force) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, -16
  %brmerge.i = or i1 %cmp.i, %force
  %spec.select.i = select i1 %brmerge.i, i32 %call.i, i32 -16
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %25, 256
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %23, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %ret.0 = phi i32 [ 0, %if.else ], [ %spec.select.i, %if.then9 ]
  %affinity_notify = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 19
  %27 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %affinity_notify, align 4
  %tobool13.not = icmp eq ptr %28, null
  br i1 %tobool13.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.then14

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then14:                                        ; preds = %if.end12
  %kref = getelementptr inbounds %struct.irq_affinity_notify, ptr %28, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !194
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !195

if.then14.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !192

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %31 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %affinity_notify, align 4
  %work = getelementptr inbounds %struct.irq_affinity_notify, ptr %32, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work) #11
  br i1 %call.i.i, label %kref_get.exit.cleanup.sink.split_crit_edge, label %if.then18

kref_get.exit.cleanup.sink.split_crit_edge:       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then18:                                        ; preds = %kref_get.exit
  %34 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %affinity_notify, align 4
  %kref20 = getelementptr inbounds %struct.irq_affinity_notify, ptr %35, i32 0, i32 1
  %release = getelementptr inbounds %struct.irq_affinity_notify, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref20, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %kref20, i32 1, i32 3, i32 1) #11
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref20, ptr %kref20, i32 1, ptr elementtype(i32) %kref20) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i46 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i46, label %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i, !prof !192

if.end5.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref20, i32 noundef 3) #11
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void %37(ptr noundef %kref20) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, %kref_get.exit.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %irq_set_affinity_deactivated.exit.thread
  %retval.0.ph = phi i32 [ 0, %irq_set_affinity_deactivated.exit.thread ], [ %ret.0, %if.then.i ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.end5.i.i.i.i.cleanup.sink.split_crit_edge ], [ %ret.0, %kref_get.exit.cleanup.sink.split_crit_edge ], [ %ret.0, %if.end12.cleanup.sink.split_crit_edge ]
  %39 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %common.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %or.i.i = or i32 %42, 4096
  store i32 %or.i.i, ptr %40, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_update_affinity_desc(i32 noundef %irq, ptr nocapture noundef readonly %affinity) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %if.end7, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end7:                                          ; preds = %if.end
  %and.i43 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.i44.not = icmp eq i32 %and.i43, 0
  br i1 %tobool.i44.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_domain_deactivate_irq(ptr noundef %irq_data) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %is_managed = getelementptr inbounds %struct.irq_affinity_desc, ptr %affinity, i32 0, i32 1
  %6 = ptrtoint ptr %is_managed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_managed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or.i = or i32 %10, 2097152
  store i32 %or.i, ptr %8, align 4
  %11 = load ptr, ptr %common.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or.i47 = or i32 %13, 8388608
  store i32 %or.i47, ptr %11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %affinity19 = getelementptr inbounds %struct.irq_common_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %affinity19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %affinity19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %16, 31
  %17 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %17, 536870908
  %18 = call ptr @memcpy(ptr %15, ptr %affinity, i32 %mul.i.i)
  br i1 %tobool.i44.not, label %if.end18.out_unlock_crit_edge, label %if.then21

if.end18.out_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 @irq_domain_activate_irq(ptr noundef %irq_data, i1 noundef zeroext false) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then21, %if.end18.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.end18.out_unlock_crit_edge ], [ -16, %if.end.out_unlock_crit_edge ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %20, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity(i32 noundef %irq, ptr noundef %cpumask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__irq_set_affinity.exit_crit_edge, label %do.body.i

entry.__irq_set_affinity.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_set_affinity.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  %call4.i = tail call i32 @irq_set_affinity_locked(ptr noundef %irq_data.i.i, ptr noundef %cpumask, i1 noundef zeroext false) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #11
  br label %__irq_set_affinity.exit

__irq_set_affinity.exit:                          ; preds = %do.body.i, %entry.__irq_set_affinity.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %do.body.i ], [ -22, %entry.__irq_set_affinity.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_force_affinity(i32 noundef %irq, ptr noundef %cpumask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__irq_set_affinity.exit_crit_edge, label %do.body.i

entry.__irq_set_affinity.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_set_affinity.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  %call4.i = tail call i32 @irq_set_affinity_locked(ptr noundef %irq_data.i.i, ptr noundef %cpumask, i1 noundef zeroext true) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #11
  br label %__irq_set_affinity.exit

__irq_set_affinity.exit:                          ; preds = %do.body.i, %entry.__irq_set_affinity.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %do.body.i ], [ -22, %entry.__irq_set_affinity.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__irq_apply_affinity_hint(i32 noundef %irq, ptr noundef %m, i1 noundef zeroext %setaffinity) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %affinity_hint = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 18
  %1 = ptrtoint ptr %affinity_hint to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %m, ptr %affinity_hint, align 32
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %3, i1 noundef zeroext false) #11
  %tobool1.not = icmp ne ptr %m, null
  %4 = and i1 %tobool1.not, %setaffinity
  br i1 %4, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call.i12 = call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %do.body.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call.i12, i32 0, i32 15
  %call1.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i12, i32 0, i32 1
  %call4.i = call i32 @irq_set_affinity_locked(ptr noundef %irq_data.i.i, ptr noundef nonnull %m, i1 noundef zeroext false) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity_notifier(i32 noundef %irq, ptr noundef %notify) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 549) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool5.not = icmp eq ptr %notify, null
  br i1 %tobool5.not, label %if.end.do.body17_crit_edge, label %if.then6

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %notify, align 4
  %kref = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %3 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %kref, align 4
  %work = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @irq_set_affinity_notifier.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry12 = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @irq_affinity_notify, ptr %func, align 4
  br label %do.body17

do.body17:                                        ; preds = %if.then6, %if.end.do.body17_crit_edge
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %affinity_notify = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %affinity_notify, align 4
  store ptr %notify, ptr %affinity_notify, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #11
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %do.body17.cleanup_crit_edge, label %if.then32

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %do.body17
  %work33 = getelementptr inbounds %struct.irq_affinity_notify, ptr %9, i32 0, i32 2
  %call34 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work33) #11
  br i1 %call34, label %if.then35, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.then32
  %kref36 = getelementptr inbounds %struct.irq_affinity_notify, ptr %9, i32 0, i32 1
  %release = getelementptr inbounds %struct.irq_affinity_notify, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref36, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %kref36, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref36, ptr %kref36, i32 1, ptr elementtype(i32) %kref36) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end38_crit_edge, label %if.then10.i.i.i.i, !prof !192

if.end5.i.i.i.i.if.end38_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref36, i32 noundef 3) #11
  br label %if.end38

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void %11(ptr noundef %kref36) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end38_crit_edge, %if.then32.if.end38_crit_edge
  %kref39 = getelementptr inbounds %struct.irq_affinity_notify, ptr %9, i32 0, i32 1
  %release40 = getelementptr inbounds %struct.irq_affinity_notify, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %release40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release40, align 4
  %call.i.i.i.i.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref39, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %kref39, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref39, ptr %kref39, i32 1, ptr elementtype(i32) %kref39) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i65 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i65)
  %cmp.i.i.i.i66 = icmp eq i32 %asmresult.i.i.i.i.i.i.i65, 1
  br i1 %cmp.i.i.i.i66, label %if.then.i70, label %if.end5.i.i.i.i68

if.end5.i.i.i.i68:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i65)
  %.not.i.i.i.i67 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i65, 0
  br i1 %.not.i.i.i.i67, label %if.end5.i.i.i.i68.cleanup_crit_edge, label %if.then10.i.i.i.i69, !prof !192

if.end5.i.i.i.i68.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i69:                              ; preds = %if.end5.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref39, i32 noundef 3) #11
  br label %cleanup

if.then.i70:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void %14(ptr noundef %kref39) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i70, %if.then10.i.i.i.i69, %if.end5.i.i.i.i68.cleanup_crit_edge, %do.body17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body17.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i68.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i69 ], [ 0, %if.then.i70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_affinity_notify(ptr noundef %work) #1 align 64 {
entry:
  %cpumask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpumask) #11
  %2 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cpumask, align 4, !annotation !191
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %call1 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %cpumask, i32 noundef 3264) #11
  br i1 %call1, label %do.body, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %3 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask, align 4
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %7, 31
  %8 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %8, 536870908
  %9 = call ptr @memcpy(ptr %4, ptr %6, i32 %mul.i.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %notify16 = getelementptr i8, ptr %work, i32 44
  %10 = ptrtoint ptr %notify16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify16, align 4
  %12 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpumask, align 4
  call void %11(ptr noundef %add.ptr, ptr noundef %13) #11
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpumask, align 4
  call void @free_cpumask_var(ptr noundef %15) #11
  br label %out

out:                                              ; preds = %do.body, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %kref = getelementptr i8, ptr %work, i32 -4
  %release = getelementptr i8, ptr %work, i32 48
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !192

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void %17(ptr noundef %kref) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpumask) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_setup_affinity(ptr noundef %desc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @irq_default_affinity, align 4
  %tobool.not.i = icmp eq ptr %desc, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i.i = and i32 %4, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i, align 8
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %lor.lhs.false1.i.cleanup_crit_edge, label %__irq_can_set_affinity.exit

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__irq_can_set_affinity.exit:                      ; preds = %lor.lhs.false1.i
  %irq_set_affinity.i = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_set_affinity.i, align 4
  %tobool7.not.i.not = icmp eq ptr %8, null
  br i1 %tobool7.not.i.not, label %__irq_can_set_affinity.exit.cleanup_crit_edge, label %if.end

__irq_can_set_affinity.exit.cleanup_crit_edge:    ; preds = %__irq_can_set_affinity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__irq_can_set_affinity.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_setup_affinity.mask_lock) #11
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %9 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 2101248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %if.end.if.end.i.i_crit_edge, label %if.then5

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then5:                                         ; preds = %if.end
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %affinity, align 4
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef %16, ptr noundef nonnull @__cpu_online_mask, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i40.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i40.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %affinity, align 4
  br label %if.end.i.i

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i42 = and i32 %22, -4097
  store i32 %and.i42, ptr %20, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else, %if.then7, %if.end.if.end.i.i_crit_edge
  %set.0 = phi ptr [ %18, %if.then7 ], [ %0, %if.else ], [ %0, %if.end.if.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i49 = tail call i32 @__bitmap_and(ptr noundef nonnull @irq_setup_affinity.mask, ptr noundef nonnull @__cpu_online_mask, ptr noundef %set.0, i32 noundef %23) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i56 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @irq_setup_affinity.mask, i32 noundef %24) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i56, i32 %24)
  %cmp4.i.i = icmp eq i32 %call.i.i56, %24
  br i1 %cmp4.i.i, label %if.then15, label %if.end.i.i.if.else.i.i69_crit_edge

if.end.i.i.if.else.i.i69_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i69

if.then15:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i59 = add i32 %25, 31
  %26 = lshr i32 %sub.i.i59, 3
  %mul.i.i = and i32 %26, 536870908
  %27 = call ptr @memcpy(ptr @irq_setup_affinity.mask, ptr @__cpu_online_mask, i32 %mul.i.i)
  br label %if.else.i.i69

if.else.i.i69:                                    ; preds = %if.then15, %if.end.i.i.if.else.i.i69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i68 = tail call i32 @__bitmap_intersects(ptr noundef nonnull @irq_setup_affinity.mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %tobool.i71.not = icmp eq i32 %call.i.i68, 0
  br i1 %tobool.i71.not, label %if.else.i.i69.if.end22_crit_edge, label %if.end.i.i80

if.else.i.i69.if.end22_crit_edge:                 ; preds = %if.else.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end.i.i80:                                     ; preds = %if.else.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i79 = tail call i32 @__bitmap_and(ptr noundef nonnull @irq_setup_affinity.mask, ptr noundef nonnull @irq_setup_affinity.mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %29) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.i80, %if.else.i.i69.if.end22_crit_edge
  %call24 = tail call i32 @irq_do_set_affinity(ptr noundef %irq_data, ptr noundef nonnull @irq_setup_affinity.mask, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_setup_affinity.mask_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %__irq_can_set_affinity.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ 0, %__irq_can_set_affinity.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false1.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef %vcpu_info) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %if.end
  %data.0 = phi ptr [ %irq_data.i, %if.end ], [ %6, %if.end6.do.body_crit_edge ]
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %data.0, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %do.body.if.end6_crit_edge, label %land.lhs.true

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %irq_set_vcpu_affinity = getelementptr inbounds %struct.irq_chip, ptr %2, i32 0, i32 28
  %3 = ptrtoint ptr %irq_set_vcpu_affinity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_set_vcpu_affinity, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %do.end

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %do.body.if.end6_crit_edge
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data.0, i32 0, i32 6
  %5 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_data, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %land.lhs.true
  %tobool8.not = icmp eq ptr %data.0, null
  br i1 %tobool8.not, label %do.end.if.end12_crit_edge, label %if.then9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_set_vcpu_affinity.le = getelementptr inbounds %struct.irq_chip, ptr %2, i32 0, i32 28
  %7 = ptrtoint ptr %irq_set_vcpu_affinity.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_set_vcpu_affinity.le, align 4
  %call11 = call i32 %8(ptr noundef nonnull %data.0, ptr noundef %vcpu_info) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then9 ], [ -38, %do.end.if.end12_crit_edge ], [ -38, %if.end6.if.end12_crit_edge ]
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %10, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__disable_irq(ptr noundef %desc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %depth, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irq_disable(ptr noundef %desc) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_irq_nosync(i32 noundef %irq) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !191
  %call.i.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags.i, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.__disable_irq_nosync.exit_crit_edge, label %if.end.i

entry.__disable_irq_nosync.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__disable_irq_nosync.exit

if.end.i:                                         ; preds = %entry
  %depth.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %depth.i.i, align 4
  %inc.i.i = add i32 %2, 1
  store i32 %inc.i.i, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.__disable_irq.exit.i_crit_edge

if.end.i.__disable_irq.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__disable_irq.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_disable(ptr noundef nonnull %call.i.i) #11
  br label %__disable_irq.exit.i

__disable_irq.exit.i:                             ; preds = %if.then.i.i, %if.end.i.__disable_irq.exit.i_crit_edge
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i.i, i32 noundef %4, i1 noundef zeroext true) #11
  br label %__disable_irq_nosync.exit

__disable_irq_nosync.exit:                        ; preds = %__disable_irq.exit.i, %entry.__disable_irq_nosync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_irq(i32 noundef %irq) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !191
  %call.i.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags.i, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__disable_irq_nosync.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %depth.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %depth.i.i, align 4
  %inc.i.i = add i32 %2, 1
  store i32 %inc.i.i, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_disable(ptr noundef nonnull %call.i.i) #11
  br label %if.then

__disable_irq_nosync.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  br label %if.end

if.then:                                          ; preds = %if.then.i.i, %if.end.i.if.then_crit_edge
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i.i, i32 noundef %4, i1 noundef zeroext true) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  call void @synchronize_irq(i32 noundef %irq)
  br label %if.end

if.end:                                           ; preds = %if.then, %__disable_irq_nosync.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @disable_hardirq(i32 noundef %irq) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !191
  %call.i.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags.i, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__disable_irq_nosync.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %depth.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %depth.i.i, align 4
  %inc.i.i = add i32 %2, 1
  store i32 %inc.i.i, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_disable(ptr noundef nonnull %call.i.i) #11
  br label %if.then

__disable_irq_nosync.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  br label %return

if.then:                                          ; preds = %if.then.i.i, %if.end.i.if.then_crit_edge
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i.i, i32 noundef %4, i1 noundef zeroext true) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  %call1 = call zeroext i1 @synchronize_hardirq(i32 noundef %irq)
  br label %return

return:                                           ; preds = %if.then, %__disable_irq_nosync.exit
  %retval.0 = phi i1 [ %call1, %if.then ], [ false, %__disable_irq_nosync.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_nmi_nosync(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #11
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !191
  %call.i.i.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags.i.i, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.disable_irq_nosync.exit_crit_edge, label %if.end.i.i

entry.disable_irq_nosync.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_irq_nosync.exit

if.end.i.i:                                       ; preds = %entry
  %depth.i.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %depth.i.i.i, align 4
  %inc.i.i.i = add i32 %2, 1
  store i32 %inc.i.i.i, ptr %depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.__disable_irq.exit.i.i_crit_edge

if.end.i.i.__disable_irq.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__disable_irq.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_disable(ptr noundef nonnull %call.i.i.i) #11
  br label %__disable_irq.exit.i.i

__disable_irq.exit.i.i:                           ; preds = %if.then.i.i.i, %if.end.i.i.__disable_irq.exit.i.i_crit_edge
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i.i.i, i32 noundef %4, i1 noundef zeroext true) #11
  br label %disable_irq_nosync.exit

disable_irq_nosync.exit:                          ; preds = %__disable_irq.exit.i.i, %entry.disable_irq_nosync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__enable_irq(ptr noundef %desc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %depth, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.do.end_crit_edge
    i32 1, label %sw.bb15
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %sw.bb15.do.end_crit_edge, %entry.do.end_crit_edge
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %4) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %5 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %sw.bb15.do.end_crit_edge

sw.bb15.do.end_crit_edge:                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end18:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %7 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status_use_accessors.i, align 4
  %or.i = or i32 %8, 1024
  store i32 %or.i, ptr %status_use_accessors.i, align 4
  %call19 = tail call i32 @irq_startup(ptr noundef %desc, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %1, -1
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %depth, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_startup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_irq(i32 noundef %irq) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %do.end, label %if.end26.critedge, !prof !195

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 816, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %irq) #11
  br label %out

if.end26.critedge:                                ; preds = %if.end
  %depth.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %depth.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %4, label %sw.default.i [
    i32 0, label %if.end26.critedge.do.end.i_crit_edge
    i32 1, label %sw.bb15.i
  ]

if.end26.critedge.do.end.i_crit_edge:             ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %sw.bb15.i.do.end.i_crit_edge, %if.end26.critedge.do.end.i_crit_edge
  %irq.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %7) #11
  br label %out

sw.bb15.i:                                        ; preds = %if.end26.critedge
  %core_internal_state__do_not_mess_with_it.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and.i = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %sw.bb15.i.do.end.i_crit_edge

sw.bb15.i.do.end.i_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end18.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  %status_use_accessors.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %status_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_use_accessors.i.i, align 4
  %or.i.i = or i32 %11, 1024
  store i32 %or.i.i, ptr %status_use_accessors.i.i, align 4
  %call19.i = call i32 @irq_startup(ptr noundef nonnull %call.i, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %out

sw.default.i:                                     ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %4, -1
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec.i, ptr %depth.i, align 4
  br label %out

out:                                              ; preds = %sw.default.i, %if.end18.i, %do.end.i, %do.end
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %14, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_nmi(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @enable_irq(i32 noundef %irq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef %on) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool4.not = icmp eq i32 %on, 0
  %wake_depth14 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %wake_depth14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wake_depth14, align 16
  br i1 %tobool4.not, label %if.else13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %inc = add i32 %4, 1
  %5 = ptrtoint ptr %wake_depth14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %wake_depth14, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then6, label %if.then5.out_unlock_crit_edge

if.then5.out_unlock_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then6:                                         ; preds = %if.then5
  %call.i67 = call ptr @irq_to_desc(i32 noundef %irq) #11
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i67, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i.i, align 8
  %flags.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.if.else_crit_edge

if.then6.if.else_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %if.then6
  %irq_set_wake.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %irq_set_wake.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_set_wake.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.then9_crit_edge, label %set_irq_wake_real.exit

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

set_irq_wake_real.exit:                           ; preds = %if.end.i
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i67, i32 0, i32 1
  %call8.i = call i32 %11(ptr noundef %irq_data.i, i32 noundef %on) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool8.not = icmp eq i32 %call8.i, 0
  br i1 %tobool8.not, label %set_irq_wake_real.exit.if.else_crit_edge, label %set_irq_wake_real.exit.if.then9_crit_edge

set_irq_wake_real.exit.if.then9_crit_edge:        ; preds = %set_irq_wake_real.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

set_irq_wake_real.exit.if.else_crit_edge:         ; preds = %set_irq_wake_real.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then9:                                         ; preds = %set_irq_wake_real.exit.if.then9_crit_edge, %if.end.i.if.then9_crit_edge
  %retval.0.i88 = phi i32 [ %call8.i, %set_irq_wake_real.exit.if.then9_crit_edge ], [ -6, %if.end.i.if.then9_crit_edge ]
  %12 = ptrtoint ptr %wake_depth14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wake_depth14, align 16
  br label %out_unlock

if.else:                                          ; preds = %set_irq_wake_real.exit.if.else_crit_edge, %if.then6.if.else_crit_edge
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i = or i32 %16, 16384
  store i32 %or.i, ptr %14, align 4
  br label %out_unlock

if.else13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15 = icmp eq i32 %4, 0
  br i1 %cmp15, label %do.end, label %if.else34

do.end:                                           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %irq) #11
  br label %out_unlock

if.else34:                                        ; preds = %if.else13
  %dec = add i32 %4, -1
  %17 = ptrtoint ptr %wake_depth14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %wake_depth14, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36 = icmp eq i32 %dec, 0
  br i1 %cmp36, label %if.then37, label %if.else34.out_unlock_crit_edge

if.else34.out_unlock_crit_edge:                   ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then37:                                        ; preds = %if.else34
  %call.i68 = call ptr @irq_to_desc(i32 noundef %irq) #11
  %chip.i.i69 = getelementptr inbounds %struct.irq_desc, ptr %call.i68, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %chip.i.i69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i.i69, align 8
  %flags.i70 = getelementptr inbounds %struct.irq_chip, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i70, align 4
  %and.i71 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.end.i75, label %if.then37.if.else42_crit_edge

if.then37.if.else42_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42

if.end.i75:                                       ; preds = %if.then37
  %irq_set_wake.i73 = getelementptr inbounds %struct.irq_chip, ptr %19, i32 0, i32 14
  %22 = ptrtoint ptr %irq_set_wake.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_set_wake.i73, align 4
  %tobool2.not.i74 = icmp eq ptr %23, null
  br i1 %tobool2.not.i74, label %if.end.i75.if.then40_crit_edge, label %set_irq_wake_real.exit80

if.end.i75.if.then40_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

set_irq_wake_real.exit80:                         ; preds = %if.end.i75
  %irq_data.i76 = getelementptr inbounds %struct.irq_desc, ptr %call.i68, i32 0, i32 1
  %call8.i77 = call i32 %23(ptr noundef %irq_data.i76, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i77)
  %tobool39.not = icmp eq i32 %call8.i77, 0
  br i1 %tobool39.not, label %set_irq_wake_real.exit80.if.else42_crit_edge, label %set_irq_wake_real.exit80.if.then40_crit_edge

set_irq_wake_real.exit80.if.then40_crit_edge:     ; preds = %set_irq_wake_real.exit80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

set_irq_wake_real.exit80.if.else42_crit_edge:     ; preds = %set_irq_wake_real.exit80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42

if.then40:                                        ; preds = %set_irq_wake_real.exit80.if.then40_crit_edge, %if.end.i75.if.then40_crit_edge
  %retval.0.i7994 = phi i32 [ %call8.i77, %set_irq_wake_real.exit80.if.then40_crit_edge ], [ -6, %if.end.i75.if.then40_crit_edge ]
  %24 = ptrtoint ptr %wake_depth14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %wake_depth14, align 16
  br label %out_unlock

if.else42:                                        ; preds = %set_irq_wake_real.exit80.if.else42_crit_edge, %if.then37.if.else42_crit_edge
  %common.i81 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %common.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i81, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i82 = and i32 %28, -16385
  store i32 %and.i82, ptr %26, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.else42, %if.then40, %if.else34.out_unlock_crit_edge, %do.end, %if.else, %if.then9, %if.then5.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.i88, %if.then9 ], [ 0, %if.else ], [ 0, %if.then5.out_unlock_crit_edge ], [ 0, %do.end ], [ %retval.0.i7994, %if.then40 ], [ 0, %if.else42 ], [ 0, %if.else34.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ]
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %30, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_request_irq(i32 noundef %irq, i32 noundef %irqflags) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %action = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %action, align 64
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then2.if.then8_crit_edge, label %lor.lhs.false

if.then2.if.then8_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then2
  %flags5 = getelementptr inbounds %struct.irqaction, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags5, align 32
  %and = and i32 %irqflags, 128
  %and6 = and i32 %and, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then2.if.then8_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %canrequest.0 = phi i32 [ 1, %if.then8 ], [ 0, %lor.lhs.false.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %8, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %canrequest.0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__irq_set_trigger(ptr noundef %desc, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip1 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_set_type, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %if.end14

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__irq_set_trigger.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__irq_set_trigger, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !199

if.then6:                                         ; preds = %do.body
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  br i1 %tobool.not, label %if.then6.cond.end12_crit_edge, label %cond.true

if.then6.cond.end12_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end12

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool9.not = icmp eq ptr %7, null
  %..str.11 = select i1 %tobool9.not, ptr @.str.11, ptr %7
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true, %if.then6.cond.end12_crit_edge
  %cond13 = phi ptr [ %..str.11, %cond.true ], [ @.str.11, %if.then6.cond.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__irq_set_trigger.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.10, i32 noundef %5, ptr noundef %cond13) #11
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %flags15 = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags15, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.if.end26_crit_edge, label %if.then17

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then17:                                        ; preds = %if.end14
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then20, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mask_irq(ptr noundef %desc) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17.if.end21_crit_edge
  %14 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i82 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.i83 = icmp ne i32 %and.i82, 0
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.end14.if.end26_crit_edge
  %tobool49.not = phi i1 [ true, %if.end14.if.end26_crit_edge ], [ %tobool.i83, %if.end21 ]
  %and27 = and i32 %flags, 15
  %18 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_set_type, align 4
  %call30 = tail call i32 %19(ptr noundef %irq_data, i32 noundef %and27) #11
  %20 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call30, label %do.end44 [
    i32 0, label %if.end26.sw.bb_crit_edge
    i32 2, label %if.end26.sw.bb_crit_edge101
    i32 1, label %if.end26.sw.bb33_crit_edge
  ]

if.end26.sw.bb33_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

if.end26.sw.bb_crit_edge101:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end26.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge101
  %common.i84 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %common.i84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common.i84, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and.i85 = and i32 %24, -16
  store i32 %and.i85, ptr %22, align 4
  %25 = load ptr, ptr %common.i84, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %or.i = or i32 %27, %and27
  store i32 %or.i, ptr %25, align 4
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %if.end26.sw.bb33_crit_edge
  %common.i87 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %common.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common.i87, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i88 = and i32 %31, 15
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %32 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status_use_accessors.i, align 4
  %and.i89 = and i32 %33, -16
  %or.i90 = or i32 %and.i89, %and.i88
  store i32 %or.i90, ptr %status_use_accessors.i, align 4
  %34 = load i32, ptr %29, align 4
  %and.i92 = and i32 %34, -8193
  store i32 %and.i92, ptr %29, align 4
  %35 = load i32, ptr %status_use_accessors.i, align 4
  %and.i94 = and i32 %35, -257
  store i32 %and.i94, ptr %status_use_accessors.i, align 4
  %and37 = and i32 %31, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %sw.bb33.sw.epilog_crit_edge, label %if.then39

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  %or.i96 = or i32 %35, 256
  %36 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i96, ptr %status_use_accessors.i, align 4
  %37 = ptrtoint ptr %common.i87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i87, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %or.i98 = or i32 %40, 8192
  store i32 %or.i98, ptr %38, align 4
  br label %sw.epilog

do.end44:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i99 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %irq.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i99, align 4
  %43 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_set_type, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %and27, i32 noundef %42, ptr noundef %44) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %if.then39, %sw.bb33.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call30, %do.end44 ], [ 0, %if.then39 ], [ 0, %sw.bb33.sw.epilog_crit_edge ]
  br i1 %tobool49.not, label %sw.epilog.cleanup_crit_edge, label %if.then50

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmask_irq(ptr noundef %desc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %sw.epilog.cleanup_crit_edge, %cond.end12, %do.body
  %retval.0 = phi i32 [ 0, %cond.end12 ], [ %ret.0, %if.then50 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_parent(i32 noundef %irq, i32 noundef %parent_irq) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %parent_irq1 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 33
  %1 = ptrtoint ptr %parent_irq1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %parent_irq, ptr %parent_irq1, align 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %3, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_wake_thread(i32 noundef %irq, ptr noundef readnone %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body24, label %do.end, !prof !192

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body24:                                        ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %action29 = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %action29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %action.061 = load ptr, ptr %action29, align 4
  %tobool30.not62 = icmp eq ptr %action.061, null
  br i1 %tobool30.not62, label %do.body24.do.body39_crit_edge, label %do.body24.for.body_crit_edge

do.body24.for.body_crit_edge:                     ; preds = %do.body24
  br label %for.body

do.body24.do.body39_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body24.for.body_crit_edge
  %action.063 = phi ptr [ %action.0, %for.inc.for.body_crit_edge ], [ %action.061, %do.body24.for.body_crit_edge ]
  %dev_id31 = getelementptr inbounds %struct.irqaction, ptr %action.063, i32 0, i32 1
  %3 = ptrtoint ptr %dev_id31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id31, align 4
  %cmp32 = icmp eq ptr %4, %dev_id
  br i1 %cmp32, label %if.then34, label %for.inc

if.then34:                                        ; preds = %for.body
  %thread = getelementptr inbounds %struct.irqaction, ptr %action.063, i32 0, i32 5
  %5 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread, align 4
  %tobool35.not = icmp eq ptr %6, null
  br i1 %tobool35.not, label %if.then34.do.body39_crit_edge, label %if.then36

if.then34.do.body39_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__irq_wake_thread(ptr noundef nonnull %call, ptr noundef nonnull %action.063) #11
  br label %do.body39

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.irqaction, ptr %action.063, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %action.0 = load ptr, ptr %next, align 4
  %tobool30.not = icmp eq ptr %action.0, null
  br i1 %tobool30.not, label %for.inc.do.body39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.body39:                                        ; preds = %for.inc.do.body39_crit_edge, %if.then36, %if.then34.do.body39_crit_edge, %do.body24.do.body39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_wake_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @free_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end23, label %do.end, !prof !192

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1998, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %affinity_notify = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %affinity_notify, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end23.if.end58_crit_edge, label %do.end41, !prof !192

if.end23.if.end58_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2002, i32 noundef 9, ptr noundef null) #11
  %4 = ptrtoint ptr %affinity_notify to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %affinity_notify, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.end41, %if.end23.if.end58_crit_edge
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %irq1.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq1.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i73 = and i32 %10, 15728640
  %11 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i319.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i319.i to ptr
  %preempt_count.i320.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i320.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i320.i, align 4
  %and3.i = and i32 %14, 983040
  %or.i = or i32 %and3.i, %and.i73
  %15 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i321.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i321.i to ptr
  %preempt_count.i322.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i322.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i322.i, align 4
  %and5.i = and i32 %18, 65280
  %or6.i = or i32 %or.i, %and5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i)
  %tobool.not.i = icmp eq i32 %or6.i, 0
  br i1 %tobool.not.i, label %if.end58.if.end.i_crit_edge, label %do.end.i, !prof !192

if.end58.if.end.i_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1846, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %6) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end58.if.end.i_crit_edge
  %request_mutex.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %request_mutex.i, i32 noundef 0) #11
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i.i, align 8
  %irq_bus_lock.i.i = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %irq_bus_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_bus_lock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.chip_bus_lock.exit.i_crit_edge, label %if.then.i.i, !prof !192

if.end.i.chip_bus_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_lock.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %22(ptr noundef %irq_data.i) #11
  br label %chip_bus_lock.exit.i

chip_bus_lock.exit.i:                             ; preds = %if.then.i.i, %if.end.i.chip_bus_lock.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %action31.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %action31.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %action31.i, align 4
  %tobool32.not365.i = icmp eq ptr %24, null
  br i1 %tobool32.not365.i, label %chip_bus_lock.exit.i.do.end46.i_crit_edge, label %if.end70.i.preheader

chip_bus_lock.exit.i.do.end46.i_crit_edge:        ; preds = %chip_bus_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

if.end70.i.preheader:                             ; preds = %chip_bus_lock.exit.i
  %dev_id71.i77 = getelementptr inbounds %struct.irqaction, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dev_id71.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id71.i77, align 4
  %cmp72.i78 = icmp eq ptr %26, %dev_id
  br i1 %cmp72.i78, label %if.end70.i.preheader.for.end.i_crit_edge, label %if.end70.i.preheader.if.end75.i_crit_edge

if.end70.i.preheader.if.end75.i_crit_edge:        ; preds = %if.end70.i.preheader
  br label %if.end75.i

if.end70.i.preheader.for.end.i_crit_edge:         ; preds = %if.end70.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.end46.i:                                       ; preds = %if.end75.i.do.end46.i_crit_edge, %chip_bus_lock.exit.i.do.end46.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1861, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %6) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call28.i) #11
  %27 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip.i.i, align 8
  %irq_bus_sync_unlock.i.i = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %irq_bus_sync_unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_bus_sync_unlock.i.i, align 4
  %tobool.not.i324.i = icmp eq ptr %30, null
  br i1 %tobool.not.i324.i, label %do.end46.i.__free_irq.exit.thread_crit_edge, label %if.then.i326.i, !prof !192

do.end46.i.__free_irq.exit.thread_crit_edge:      ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__free_irq.exit.thread

if.then.i326.i:                                   ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %30(ptr noundef %irq_data.i) #11
  br label %__free_irq.exit.thread

__free_irq.exit.thread:                           ; preds = %if.then.i326.i, %do.end46.i.__free_irq.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %request_mutex.i) #11
  br label %cleanup

if.end70.i:                                       ; preds = %if.end75.i
  %dev_id71.i = getelementptr inbounds %struct.irqaction, ptr %35, i32 0, i32 1
  %31 = ptrtoint ptr %dev_id71.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id71.i, align 4
  %cmp72.i = icmp eq ptr %32, %dev_id
  br i1 %cmp72.i, label %for.end.i.loopexit, label %if.end70.i.if.end75.i_crit_edge

if.end70.i.if.end75.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end70.i.if.end75.i_crit_edge, %if.end70.i.preheader.if.end75.i_crit_edge
  %33 = phi ptr [ %35, %if.end70.i.if.end75.i_crit_edge ], [ %24, %if.end70.i.preheader.if.end75.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.irqaction, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next.i, align 4
  %tobool32.not.i = icmp eq ptr %35, null
  br i1 %tobool32.not.i, label %if.end75.i.do.end46.i_crit_edge, label %if.end70.i

if.end75.i.do.end46.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

for.end.i.loopexit:                               ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.le = getelementptr inbounds %struct.irqaction, ptr %33, i32 0, i32 3
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end70.i.preheader.for.end.i_crit_edge
  %.lcssa = phi ptr [ %24, %if.end70.i.preheader.for.end.i_crit_edge ], [ %35, %for.end.i.loopexit ]
  %action_ptr.0366.i.lcssa = phi ptr [ %action31.i, %if.end70.i.preheader.for.end.i_crit_edge ], [ %next.i.le, %for.end.i.loopexit ]
  %next76.i = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 3
  %36 = ptrtoint ptr %next76.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next76.i, align 4
  %38 = ptrtoint ptr %action_ptr.0366.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %action_ptr.0366.i.lcssa, align 4
  tail call void @irq_pm_remove_action(ptr noundef nonnull %call, ptr noundef nonnull %.lcssa) #11
  %39 = ptrtoint ptr %action31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %action31.i, align 64
  %tobool78.not.i = icmp eq ptr %40, null
  br i1 %tobool78.not.i, label %if.then79.i, label %for.end.i.if.end80.i_crit_edge

for.end.i.if.end80.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

if.then79.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status_use_accessors.i, align 4
  %and.i.i = and i32 %42, -524289
  store i32 %and.i.i, ptr %status_use_accessors.i, align 4
  tail call void @irq_shutdown(ptr noundef nonnull %call) #11
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %for.end.i.if.end80.i_crit_edge
  %affinity_hint.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 18
  %43 = ptrtoint ptr %affinity_hint.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %affinity_hint.i, align 32
  %tobool81.not.i = icmp eq ptr %44, null
  br i1 %tobool81.not.i, label %if.end80.i.do.body136.i_crit_edge, label %land.rhs.i

if.end80.i.do.body136.i_crit_edge:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136.i

land.rhs.i:                                       ; preds = %if.end80.i
  %.b317.i = load i1, ptr @__free_irq.__already_done, align 1
  br i1 %.b317.i, label %land.rhs.i.if.then133.i_crit_edge, label %if.then97.i, !prof !192

land.rhs.i.if.then133.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133.i

if.then97.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__free_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1887, i32 noundef 9, ptr noundef null) #11
  br label %if.then133.i

if.then133.i:                                     ; preds = %if.then97.i, %land.rhs.i.if.then133.i_crit_edge
  %45 = ptrtoint ptr %affinity_hint.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %affinity_hint.i, align 32
  br label %do.body136.i

do.body136.i:                                     ; preds = %if.then133.i, %if.end80.i.do.body136.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call28.i) #11
  %46 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip.i.i, align 8
  %irq_bus_sync_unlock.i328.i = getelementptr inbounds %struct.irq_chip, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %irq_bus_sync_unlock.i328.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irq_bus_sync_unlock.i328.i, align 4
  %tobool.not.i329.i = icmp eq ptr %49, null
  br i1 %tobool.not.i329.i, label %do.body136.i.chip_bus_sync_unlock.exit332.i_crit_edge, label %if.then.i331.i, !prof !192

do.body136.i.chip_bus_sync_unlock.exit332.i_crit_edge: ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_sync_unlock.exit332.i

if.then.i331.i:                                   ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %49(ptr noundef %irq_data.i) #11
  br label %chip_bus_sync_unlock.exit332.i

chip_bus_sync_unlock.exit332.i:                   ; preds = %if.then.i331.i, %do.body136.i.chip_bus_sync_unlock.exit332.i_crit_edge
  tail call void @unregister_handler_proc(i32 noundef %6, ptr noundef nonnull %.lcssa) #11
  tail call fastcc void @__synchronize_hardirq(ptr noundef nonnull %call, i1 noundef zeroext true) #11
  %flags145.i = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 8
  %50 = ptrtoint ptr %flags145.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags145.i, align 32
  %and146.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %chip_bus_sync_unlock.exit332.i.if.end208.i_crit_edge, label %do.body150.i

chip_bus_sync_unlock.exit332.i.if.end208.i_crit_edge: ; preds = %chip_bus_sync_unlock.exit332.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208.i

do.body150.i:                                     ; preds = %chip_bus_sync_unlock.exit332.i
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !200
  %and.i333.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333.i)
  %tobool166.not.i = icmp eq i32 %and.i333.i, 0
  br i1 %tobool166.not.i, label %if.then181.i, label %do.end170.i

do.end170.i:                                      ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %.lcssa, align 128
  %call171.i = tail call i32 %54(i32 noundef %6, ptr noundef %dev_id) #11
  br label %do.body183.i

if.then181.i:                                     ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %55 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %.lcssa, align 128
  %call171362.i = tail call i32 %56(i32 noundef %6, ptr noundef %dev_id) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body183.i

do.body183.i:                                     ; preds = %if.then181.i, %do.end170.i
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !201
  %and.i.i335.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i335.i)
  %tobool191.not.i = icmp eq i32 %and.i.i335.i, 0
  br i1 %tobool191.not.i, label %if.then200.i, label %do.body183.i.do.end203.i_crit_edge, !prof !195

do.body183.i.do.end203.i_crit_edge:               ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end203.i

if.then200.i:                                     ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end203.i

do.end203.i:                                      ; preds = %if.then200.i, %do.body183.i.do.end203.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #11, !srcloc !202
  br label %if.end208.i

if.end208.i:                                      ; preds = %do.end203.i, %chip_bus_sync_unlock.exit332.i.if.end208.i_crit_edge
  %thread.i = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 5
  %58 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %thread.i, align 4
  %tobool209.not.i = icmp eq ptr %59, null
  br i1 %tobool209.not.i, label %if.end208.i.if.end225.i_crit_edge, label %if.then210.i

if.end208.i.if.end225.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

if.then210.i:                                     ; preds = %if.end208.i
  %call212.i = tail call i32 @kthread_stop(ptr noundef nonnull %59) #11
  %60 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %thread.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #11
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i336.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !192

if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_task_struct.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #11
  br label %put_task_struct.exit.i

if.then.i336.i:                                   ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @__put_task_struct(ptr noundef %61) #11
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %if.then.i336.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge
  %secondary.i = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 6
  %63 = ptrtoint ptr %secondary.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %secondary.i, align 8
  %tobool214.not.i = icmp eq ptr %64, null
  br i1 %tobool214.not.i, label %put_task_struct.exit.i.if.end225.i_crit_edge, label %land.lhs.true.i

put_task_struct.exit.i.if.end225.i_crit_edge:     ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

land.lhs.true.i:                                  ; preds = %put_task_struct.exit.i
  %thread216.i = getelementptr inbounds %struct.irqaction, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %thread216.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %thread216.i, align 4
  %tobool217.not.i = icmp eq ptr %66, null
  br i1 %tobool217.not.i, label %land.lhs.true.i.if.end225.i_crit_edge, label %if.then218.i

land.lhs.true.i.if.end225.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

if.then218.i:                                     ; preds = %land.lhs.true.i
  %call221.i = tail call i32 @kthread_stop(ptr noundef nonnull %66) #11
  %67 = ptrtoint ptr %secondary.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %secondary.i, align 8
  %thread223.i = getelementptr inbounds %struct.irqaction, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %thread223.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %thread223.i, align 4
  %usage.i337.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 2
  %call.i.i.i.i.i.i338.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i337.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %usage.i337.i, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i337.i, ptr %usage.i337.i, i32 1, ptr elementtype(i32) %usage.i337.i) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i339.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i339.i)
  %cmp.i.i.i.i340.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i339.i, 1
  br i1 %cmp.i.i.i.i340.i, label %if.then.i344.i, label %if.end5.i.i.i.i342.i

if.end5.i.i.i.i342.i:                             ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i339.i)
  %.not.i.i.i.i341.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i339.i, 0
  br i1 %.not.i.i.i.i341.i, label %if.end5.i.i.i.i342.i.if.end225.i_crit_edge, label %if.then10.i.i.i.i343.i, !prof !192

if.end5.i.i.i.i342.i.if.end225.i_crit_edge:       ; preds = %if.end5.i.i.i.i342.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

if.then10.i.i.i.i343.i:                           ; preds = %if.end5.i.i.i.i342.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i337.i, i32 noundef 3) #11
  br label %if.end225.i

if.then.i344.i:                                   ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @__put_task_struct(ptr noundef %70) #11
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then.i344.i, %if.then10.i.i.i.i343.i, %if.end5.i.i.i.i342.i.if.end225.i_crit_edge, %land.lhs.true.i.if.end225.i_crit_edge, %put_task_struct.exit.i.if.end225.i_crit_edge, %if.end208.i.if.end225.i_crit_edge
  %72 = ptrtoint ptr %action31.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %action31.i, align 64
  %tobool227.not.i = icmp eq ptr %73, null
  br i1 %tobool227.not.i, label %if.then228.i, label %if.end225.i.if.end62_crit_edge

if.end225.i.if.end62_crit_edge:                   ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then228.i:                                     ; preds = %if.end225.i
  %74 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip.i.i, align 8
  %irq_bus_lock.i347.i = getelementptr inbounds %struct.irq_chip, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %irq_bus_lock.i347.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_bus_lock.i347.i, align 4
  %tobool.not.i348.i = icmp eq ptr %77, null
  br i1 %tobool.not.i348.i, label %if.then228.i.chip_bus_lock.exit351.i_crit_edge, label %if.then.i350.i, !prof !192

if.then228.i.chip_bus_lock.exit351.i_crit_edge:   ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_lock.exit351.i

if.then.i350.i:                                   ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %77(ptr noundef %irq_data.i) #11
  br label %chip_bus_lock.exit351.i

chip_bus_lock.exit351.i:                          ; preds = %if.then.i350.i, %if.then228.i.chip_bus_lock.exit351.i_crit_edge
  %call236.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  tail call void @irq_domain_deactivate_irq(ptr noundef %irq_data.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call236.i) #11
  %78 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip.i.i, align 4
  %irq_release_resources.i.i = getelementptr inbounds %struct.irq_chip, ptr %79, i32 0, i32 23
  %80 = ptrtoint ptr %irq_release_resources.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %irq_release_resources.i.i, align 4
  %tobool.not.i353.i = icmp eq ptr %81, null
  br i1 %tobool.not.i353.i, label %chip_bus_lock.exit351.i.irq_release_resources.exit.i_crit_edge, label %if.then.i355.i

chip_bus_lock.exit351.i.irq_release_resources.exit.i_crit_edge: ; preds = %chip_bus_lock.exit351.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_release_resources.exit.i

if.then.i355.i:                                   ; preds = %chip_bus_lock.exit351.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %81(ptr noundef %irq_data.i) #11
  br label %irq_release_resources.exit.i

irq_release_resources.exit.i:                     ; preds = %if.then.i355.i, %chip_bus_lock.exit351.i.irq_release_resources.exit.i_crit_edge
  %82 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chip.i.i, align 8
  %irq_bus_sync_unlock.i357.i = getelementptr inbounds %struct.irq_chip, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %irq_bus_sync_unlock.i357.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %irq_bus_sync_unlock.i357.i, align 4
  %tobool.not.i358.i = icmp eq ptr %85, null
  br i1 %tobool.not.i358.i, label %irq_release_resources.exit.i.if.end62_crit_edge, label %if.then.i360.i, !prof !192

irq_release_resources.exit.i.if.end62_crit_edge:  ; preds = %irq_release_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then.i360.i:                                   ; preds = %irq_release_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %85(ptr noundef %irq_data.i) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then.i360.i, %irq_release_resources.exit.i.if.end62_crit_edge, %if.end225.i.if.end62_crit_edge
  tail call void @mutex_unlock(ptr noundef %request_mutex.i) #11
  %call252.i = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data.i) #11
  %owner.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 34
  %86 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %owner.i, align 16
  tail call void @module_put(ptr noundef %87) #11
  %secondary253.i = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 6
  %88 = ptrtoint ptr %secondary253.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %secondary253.i, align 8
  tail call void @kfree(ptr noundef %89) #11
  %name = getelementptr inbounds %struct.irqaction, ptr %.lcssa, i32 0, i32 11
  %90 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef nonnull %.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %__free_irq.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %91, %if.end62 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %__free_irq.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @free_nmi(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end, label %if.end24, !prof !195

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2050, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end58, label %do.end42, !prof !192

do.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2053, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end58:                                         ; preds = %if.end24
  %depth = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end75, label %if.end58.do.body92_crit_edge, !prof !195

if.end58.do.body92_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body92

do.end75:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2057, i32 noundef 9, ptr noundef null) #11
  tail call void @disable_nmi_nosync(i32 noundef %irq)
  br label %do.body92

do.body92:                                        ; preds = %do.end75, %if.end58.do.body92_crit_edge
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %irq_nmi_teardown.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %irq_nmi_teardown.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_nmi_teardown.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body92.irq_nmi_teardown.exit_crit_edge, label %if.then.i

do.body92.irq_nmi_teardown.exit_crit_edge:        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_nmi_teardown.exit

if.then.i:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i.i) #11
  br label %irq_nmi_teardown.exit

irq_nmi_teardown.exit:                            ; preds = %if.then.i, %do.body92.irq_nmi_teardown.exit_crit_edge
  %call98 = tail call fastcc ptr @__cleanup_nmi(i32 noundef %irq, ptr noundef nonnull %call)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call95) #11
  br label %cleanup

cleanup:                                          ; preds = %irq_nmi_teardown.exit, %do.end42, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end42 ], [ %call98, %irq_nmi_teardown.exit ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__cleanup_nmi(i32 noundef %irq, ptr noundef %desc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, -8193
  store i32 %and, ptr %core_internal_state__do_not_mess_with_it, align 8
  %action = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %action, align 64
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.then20.critedge, !prof !195

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2024, i32 noundef 9, ptr noundef null) #11
  br label %if.end26

if.then20.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irq_pm_remove_action(ptr noundef %desc, ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %action, align 64
  %name = getelementptr inbounds %struct.irqaction, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void @unregister_handler_proc(i32 noundef %irq, ptr noundef %5) #11
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %action, align 64
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %action, align 64
  br label %if.end26

if.end26:                                         ; preds = %if.then20.critedge, %do.end
  %devname.0 = phi ptr [ %7, %if.then20.critedge ], [ null, %do.end ]
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %11 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %12, -524289
  store i32 %and.i, ptr %status_use_accessors.i, align 4
  tail call void @irq_shutdown_and_deactivate(ptr noundef %desc) #11
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i, align 4
  %irq_release_resources.i = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %irq_release_resources.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_release_resources.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end26.irq_release_resources.exit_crit_edge, label %if.then.i

if.end26.irq_release_resources.exit_crit_edge:    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_release_resources.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %16(ptr noundef %irq_data.i) #11
  br label %irq_release_resources.exit

irq_release_resources.exit:                       ; preds = %if.then.i, %if.end26.irq_release_resources.exit_crit_edge
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %call = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  %owner = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 34
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owner, align 16
  tail call void @module_put(ptr noundef %18) #11
  ret ptr %devname.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @request_threaded_irq(i32 noundef %irq, ptr noundef %handler, ptr noundef %thread_fn, i32 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %irqflags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool2.not = icmp eq ptr %dev_id, null
  %.not114 = and i1 %tobool.not, %tobool2.not
  %0 = and i32 %irqflags, 524416
  call void @__sanitizer_cov_trace_const_cmp4(i32 524416, i32 %0)
  %.not = icmp eq i32 %0, 524416
  %or.cond = or i1 %.not, %.not114
  %1 = and i32 %irqflags, 262272
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %1)
  %2 = icmp eq i32 %1, 262144
  %or.cond116 = or i1 %2, %or.cond
  %3 = and i32 %irqflags, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 278528, i32 %3)
  %.not113 = icmp eq i32 %3, 278528
  %or.cond117 = or i1 %.not113, %or.cond116
  br i1 %or.cond117, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool22.not = icmp eq ptr %call, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false26:                                  ; preds = %if.end24
  %and.i112 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.i.not = icmp eq i32 %and.i112, 0
  br i1 %tobool.i.not, label %if.end51, label %do.end, !prof !192

do.end:                                           ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2147, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false26
  %tobool52.not = icmp eq ptr %handler, null
  br i1 %tobool52.not, label %if.then53, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then53:                                        ; preds = %if.end51
  %tobool54.not = icmp eq ptr %thread_fn, null
  br i1 %tobool54.not, label %if.then53.cleanup_crit_edge, label %if.then53.if.end57_crit_edge

if.then53.if.end57_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57:                                         ; preds = %if.then53.if.end57_crit_edge, %if.end51.if.end57_crit_edge
  %handler.addr.0 = phi ptr [ %handler, %if.end51.if.end57_crit_edge ], [ @irq_default_primary_handler, %if.then53.if.end57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #15
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %handler.addr.0, ptr %call7.i.i, align 128
  %thread_fn63 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %thread_fn63 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %thread_fn, ptr %thread_fn63, align 16
  %flags = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %irqflags, ptr %flags, align 32
  %name = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %devname, ptr %name, align 4
  %dev_id64 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev_id64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev_id, ptr %dev_id64, align 4
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call65 = tail call i32 @irq_chip_pm_get(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %call69 = tail call fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %if.then71

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  %secondary = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %secondary, align 8
  tail call void @kfree(ptr noundef %13) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end68.cleanup_crit_edge, %if.then67, %if.end57.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.then67 ], [ -107, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.then53.cleanup_crit_edge ], [ -12, %if.end57.cleanup_crit_edge ], [ %call69, %if.then71 ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irq_default_primary_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef %desc, ptr noundef %new) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.cleanup363_crit_edge, label %if.end

entry.cleanup363_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup363

if.end:                                           ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %cmp = icmp eq ptr %1, @no_irq_chip
  br i1 %cmp, label %if.end.cleanup363_crit_edge, label %if.end2

if.end.cleanup363_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup363

if.end2:                                          ; preds = %if.end
  %owner = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 34
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 16
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #11
  br i1 %call, label %if.end4, label %if.end2.cleanup363_crit_edge

if.end2.cleanup363_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup363

if.end4:                                          ; preds = %if.end2
  %irq5 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 7
  %4 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq5, align 4
  %flags6 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 8
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags6, align 32
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i = and i32 %10, 15
  %or = or i32 %and.i, %6
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags6, align 32
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end4.if.end12_crit_edge
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %12 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_use_accessors.i, align 4
  %and.i523 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i523)
  %tobool.i.not = icmp eq i32 %and.i523, 0
  br i1 %tobool.i.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 4
  %14 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread_fn, align 16
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.then15.out_mput_crit_edge, label %if.end26.thread

if.then15.out_mput_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mput

if.end26.thread:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @irq_nested_primary_handler, ptr %new, align 128
  br label %if.end43

if.else:                                          ; preds = %if.end12
  %and.i525 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i525)
  %tobool.not.i = icmp eq i32 %and.i525, 0
  br i1 %tobool.not.i, label %if.then20, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @force_irqthreads_key, ptr blockaddress(@__setup_irq, %if.end.i)) #11
          to label %if.end26 [label %if.end.i], !srcloc !199

if.end.i:                                         ; preds = %if.then20
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags6, align 32
  %and.i526 = and i32 %18, 74752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i526)
  %tobool3.not.i = icmp eq i32 %and.i526, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.if.end26_crit_edge

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end5.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %new, align 128
  %cmp.i = icmp eq ptr %20, @irq_default_primary_handler
  br i1 %cmp.i, label %if.end5.i.if.end26_crit_edge, label %if.end7.i

if.end5.i.if.end26_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end7.i:                                        ; preds = %if.end5.i
  %or.i = or i32 %18, 8192
  %21 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %flags6, align 32
  %tobool10.not.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end29.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %thread_fn.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 4
  %22 = ptrtoint ptr %thread_fn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thread_fn.i, align 16
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 128) #15
  %secondary.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 6
  %25 = ptrtoint ptr %secondary.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %secondary.i, align 8
  %tobool15.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool15.not.i, label %if.then12.i.out_mput_crit_edge, label %if.end17.i

if.then12.i.out_mput_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mput

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @irq_forced_secondary_handler, ptr %call7.i.i.i, align 128
  %27 = ptrtoint ptr %thread_fn.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %thread_fn.i, align 16
  %thread_fn22.i = getelementptr inbounds %struct.irqaction, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %thread_fn22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %thread_fn22.i, align 16
  %dev_id.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 1
  %30 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id.i, align 4
  %dev_id24.i = getelementptr inbounds %struct.irqaction, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dev_id24.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %dev_id24.i, align 4
  %33 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq5, align 4
  %irq26.i = getelementptr inbounds %struct.irqaction, ptr %call7.i.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %irq26.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %irq26.i, align 4
  %name.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %36 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i, align 4
  %name28.i = getelementptr inbounds %struct.irqaction, ptr %call7.i.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %name28.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %name28.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end17.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end7.i.if.end29.i_crit_edge
  %thread_flags.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %thread_flags.i) #11
  %39 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new, align 128
  %thread_fn31.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 4
  %41 = ptrtoint ptr %thread_fn31.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %thread_fn31.i, align 16
  store ptr @irq_default_primary_handler, ptr %new, align 128
  br label %if.end26

if.end26:                                         ; preds = %if.end29.i, %if.end5.i.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.then20, %if.else.if.end26_crit_edge
  %thread_fn27 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 4
  %42 = ptrtoint ptr %thread_fn27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %thread_fn27, align 16
  %tobool28.not = icmp eq ptr %43, null
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %if.then30

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then30:                                        ; preds = %if.end26
  %name1.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %44 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name1.i, align 4
  %call2.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @irq_thread, ptr noundef %new, i32 noundef -1, ptr noundef nonnull @.str.38, i32 noundef %irq, ptr noundef %45) #11
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %setup_irq_thread.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.then30
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call2.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #11, !srcloc !194
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !195

if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end6.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.setup_irq_thread.exit.thread_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !192

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.setup_irq_thread.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_irq_thread.exit.thread

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %setup_irq_thread.exit.thread

setup_irq_thread.exit.thread:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.setup_irq_thread.exit.thread_crit_edge
  %thread.i = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 5
  %48 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call2.i, ptr %thread.i, align 4
  %thread_flags.i527 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %thread_flags.i527) #11
  %secondary = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 6
  %49 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %secondary, align 8
  %tobool35.not = icmp eq ptr %50, null
  br i1 %tobool35.not, label %setup_irq_thread.exit.thread.if.end43_crit_edge, label %if.then36

setup_irq_thread.exit.thread.if.end43_crit_edge:  ; preds = %setup_irq_thread.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

setup_irq_thread.exit:                            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %call2.i to i32
  br label %out_mput

if.then36:                                        ; preds = %setup_irq_thread.exit.thread
  %call38 = tail call fastcc i32 @setup_irq_thread(ptr noundef nonnull %50, i32 noundef %irq, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end43_crit_edge, label %if.then36.out_thread_crit_edge

if.then36.out_thread_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_thread

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %if.then36.if.end43_crit_edge, %setup_irq_thread.exit.thread.if.end43_crit_edge, %if.end26.if.end43_crit_edge, %if.end26.thread
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 8
  %flags46 = getelementptr inbounds %struct.irq_chip, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags46, align 4
  %and47 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end43.if.end52_crit_edge, label %if.then49

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags6, align 32
  %and51 = and i32 %57, -8193
  store i32 %and51, ptr %flags6, align 32
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43.if.end52_crit_edge
  %request_mutex = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %request_mutex, i32 noundef 0) #11
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 8
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool.not.i529 = icmp eq ptr %61, null
  br i1 %tobool.not.i529, label %if.end52.chip_bus_lock.exit_crit_edge, label %if.then.i, !prof !192

if.end52.chip_bus_lock.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_lock.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %61(ptr noundef %irq_data) #11
  br label %chip_bus_lock.exit

chip_bus_lock.exit:                               ; preds = %if.then.i, %if.end52.chip_bus_lock.exit_crit_edge
  %action = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %62 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %action, align 64
  %tobool53.not = icmp eq ptr %63, null
  br i1 %tobool53.not, label %if.then54, label %chip_bus_lock.exit.do.body64_crit_edge

chip_bus_lock.exit.do.body64_crit_edge:           ; preds = %chip_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

if.then54:                                        ; preds = %chip_bus_lock.exit
  %64 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip, align 4
  %irq_request_resources.i = getelementptr inbounds %struct.irq_chip, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %irq_request_resources.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %irq_request_resources.i, align 4
  %tobool.not.i532 = icmp eq ptr %67, null
  br i1 %tobool.not.i532, label %if.then54.do.body64_crit_edge, label %irq_request_resources.exit

if.then54.do.body64_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

irq_request_resources.exit:                       ; preds = %if.then54
  %call.i = tail call i32 %67(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %irq_request_resources.exit.do.body64_crit_edge, label %do.end

irq_request_resources.exit.do.body64_crit_edge:   ; preds = %irq_request_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

do.end:                                           ; preds = %irq_request_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %68 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name, align 4
  %70 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip, align 8
  %name60 = getelementptr inbounds %struct.irq_chip, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name60, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %69, i32 noundef %irq, ptr noundef %73) #14
  br label %out_bus_unlock

do.body64:                                        ; preds = %irq_request_resources.exit.do.body64_crit_edge, %if.then54.do.body64_crit_edge, %chip_bus_lock.exit.do.body64_crit_edge
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %74 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %action, align 4
  %tobool72.not = icmp eq ptr %75, null
  br i1 %tobool72.not, label %if.end127.thread, label %if.then73

if.then73:                                        ; preds = %do.body64
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %76 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and74 = and i32 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end86, label %cleanup

if.end86:                                         ; preds = %if.then73
  %common.i534 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %common.i534 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %common.i534, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %and.i535 = and i32 %81, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i535)
  %tobool.i536.not = icmp eq i32 %and.i535, 0
  br i1 %tobool.i536.not, label %if.else92, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %and.i538 = and i32 %81, 15
  br label %if.end96

if.else92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags6, align 32
  %and94 = and i32 %83, 15
  %and.i540 = and i32 %81, -16
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and.i540, ptr %79, align 4
  %85 = ptrtoint ptr %common.i534 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %common.i534, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %or.i541 = or i32 %88, %and94
  store i32 %or.i541, ptr %86, align 4
  %89 = load ptr, ptr %common.i534, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %or6.i = or i32 %91, 33554432
  store i32 %or6.i, ptr %89, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then89
  %oldtype.0 = phi i32 [ %and.i538, %if.then89 ], [ %and94, %if.else92 ]
  %flags97 = getelementptr inbounds %struct.irqaction, ptr %75, i32 0, i32 8
  %92 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags97, align 32
  %94 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags6, align 32
  %and99 = and i32 %93, 128
  %and100 = and i32 %and99, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp ne i32 %and100, 0
  %and103 = and i32 %95, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %oldtype.0, i32 %and103)
  %cmp104.not = icmp eq i32 %oldtype.0, %and103
  %or.cond = select i1 %tobool101.not, i1 %cmp104.not, i1 false
  br i1 %or.cond, label %lor.lhs.false106, label %if.end96.mismatch_crit_edge

if.end96.mismatch_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %mismatch

lor.lhs.false106:                                 ; preds = %if.end96
  %xor = xor i32 %95, %93
  %96 = and i32 %xor, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %lor.lhs.false106.do.body121_crit_edge, label %lor.lhs.false106.mismatch_crit_edge

lor.lhs.false106.mismatch_crit_edge:              ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #13
  br label %mismatch

lor.lhs.false106.do.body121_crit_edge:            ; preds = %lor.lhs.false106
  br label %do.body121

do.body121:                                       ; preds = %do.body121.do.body121_crit_edge, %lor.lhs.false106.do.body121_crit_edge
  %thread_mask.0 = phi i32 [ %or123, %do.body121.do.body121_crit_edge ], [ 0, %lor.lhs.false106.do.body121_crit_edge ]
  %old.0 = phi ptr [ %101, %do.body121.do.body121_crit_edge ], [ %75, %lor.lhs.false106.do.body121_crit_edge ]
  %thread_mask122 = getelementptr inbounds %struct.irqaction, ptr %old.0, i32 0, i32 10
  %98 = ptrtoint ptr %thread_mask122 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %thread_mask122, align 8
  %or123 = or i32 %99, %thread_mask.0
  %next = getelementptr inbounds %struct.irqaction, ptr %old.0, i32 0, i32 3
  %100 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %next, align 4
  %tobool125.not = icmp eq ptr %101, null
  br i1 %tobool125.not, label %if.end127, label %do.body121.do.body121_crit_edge

do.body121.do.body121_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body121

cleanup:                                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %name81 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %102 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name81, align 4
  %104 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip, align 8
  %name84 = getelementptr inbounds %struct.irq_chip, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %name84 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name84, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %103, i32 noundef %irq, ptr noundef %107) #14
  br label %do.body327

if.end127:                                        ; preds = %do.body121
  %next.le = getelementptr inbounds %struct.irqaction, ptr %old.0, i32 0, i32 3
  %108 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags6, align 32
  %and129 = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end127.if.else138_crit_edge, label %if.then131

if.end127.if.else138_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else138

if.end127.thread:                                 ; preds = %do.body64
  %110 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags6, align 32
  %and129621 = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129621)
  %tobool130.not622 = icmp eq i32 %and129621, 0
  br i1 %tobool130.not622, label %if.end127.thread.if.else138_crit_edge, label %if.end127.thread.if.end135_crit_edge

if.end127.thread.if.end135_crit_edge:             ; preds = %if.end127.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.end127.thread.if.else138_crit_edge:            ; preds = %if.end127.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else138

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or123)
  %cmp132 = icmp eq i32 %or123, -1
  br i1 %cmp132, label %if.then131.do.body327_crit_edge, label %if.then131.if.end135_crit_edge

if.then131.if.end135_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then131.do.body327_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body327

if.end135:                                        ; preds = %if.then131.if.end135_crit_edge, %if.end127.thread.if.end135_crit_edge
  %shared.1624636 = phi i32 [ 1, %if.then131.if.end135_crit_edge ], [ 0, %if.end127.thread.if.end135_crit_edge ]
  %thread_mask.2626635 = phi i32 [ %or123, %if.then131.if.end135_crit_edge ], [ 0, %if.end127.thread.if.end135_crit_edge ]
  %old_ptr.1628634 = phi ptr [ %next.le, %if.then131.if.end135_crit_edge ], [ %action, %if.end127.thread.if.end135_crit_edge ]
  %112 = phi i32 [ %109, %if.then131.if.end135_crit_edge ], [ %111, %if.end127.thread.if.end135_crit_edge ]
  %neg = xor i32 %thread_mask.2626635, -1
  %113 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #11, !range !203
  %shl = shl nuw i32 1, %113
  %thread_mask137 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 10
  %114 = ptrtoint ptr %thread_mask137 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shl, ptr %thread_mask137, align 8
  br label %if.end156

if.else138:                                       ; preds = %if.end127.thread.if.else138_crit_edge, %if.end127.if.else138_crit_edge
  %115 = phi i32 [ %111, %if.end127.thread.if.else138_crit_edge ], [ %109, %if.end127.if.else138_crit_edge ]
  %old_ptr.1629 = phi ptr [ %action, %if.end127.thread.if.else138_crit_edge ], [ %next.le, %if.end127.if.else138_crit_edge ]
  %shared.1625 = phi i32 [ 0, %if.end127.thread.if.else138_crit_edge ], [ 1, %if.end127.if.else138_crit_edge ]
  %116 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %new, align 128
  %cmp140 = icmp eq ptr %117, @irq_default_primary_handler
  br i1 %cmp140, label %land.lhs.true142, label %if.else138.if.end156_crit_edge

if.else138.if.end156_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

land.lhs.true142:                                 ; preds = %if.else138
  %118 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip, align 8
  %flags145 = getelementptr inbounds %struct.irq_chip, ptr %119, i32 0, i32 33
  %120 = ptrtoint ptr %flags145 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags145, align 4
  %and146 = and i32 %121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.end151, label %land.lhs.true142.if.end156_crit_edge

land.lhs.true142.if.end156_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

do.end151:                                        ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #13
  %name153 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %122 = ptrtoint ptr %name153 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name153, align 4
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %123, i32 noundef %irq) #14
  br label %do.body327

if.end156:                                        ; preds = %land.lhs.true142.if.end156_crit_edge, %if.else138.if.end156_crit_edge, %if.end135
  %124 = phi i32 [ %115, %if.else138.if.end156_crit_edge ], [ %115, %land.lhs.true142.if.end156_crit_edge ], [ %112, %if.end135 ]
  %old_ptr.1627 = phi ptr [ %old_ptr.1629, %if.else138.if.end156_crit_edge ], [ %old_ptr.1629, %land.lhs.true142.if.end156_crit_edge ], [ %old_ptr.1628634, %if.end135 ]
  %shared.1623 = phi i32 [ %shared.1625, %if.else138.if.end156_crit_edge ], [ %shared.1625, %land.lhs.true142.if.end156_crit_edge ], [ %shared.1624636, %if.end135 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shared.1623)
  %tobool157.not = icmp eq i32 %shared.1623, 0
  br i1 %tobool157.not, label %do.body159, label %if.else262

do.body159:                                       ; preds = %if.end156
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %wait_for_threads, ptr noundef nonnull @.str.29, ptr noundef nonnull @__setup_irq.__key) #11
  %125 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags6, align 32
  %and163 = and i32 %126, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %do.body159.if.end172_crit_edge, label %if.then165

do.body159.if.end172_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then165:                                       ; preds = %do.body159
  %call168 = tail call i32 @__irq_set_trigger(ptr noundef %desc, i32 noundef %and163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then165.if.end172_crit_edge, label %if.then165.do.body327_crit_edge

if.then165.do.body327_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body327

if.then165.if.end172_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.end172:                                        ; preds = %if.then165.if.end172_crit_edge, %do.body159.if.end172_crit_edge
  %call173 = tail call i32 @irq_activate(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end172.do.body327_crit_edge

if.end172.do.body327_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body327

if.end176:                                        ; preds = %if.end172
  %core_internal_state__do_not_mess_with_it177 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %127 = ptrtoint ptr %core_internal_state__do_not_mess_with_it177 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %core_internal_state__do_not_mess_with_it177, align 8
  %and178 = and i32 %128, -164
  store i32 %and178, ptr %core_internal_state__do_not_mess_with_it177, align 8
  %common.i542 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %129 = ptrtoint ptr %common.i542 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %common.i542, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %and.i543 = and i32 %132, -262145
  store i32 %and.i543, ptr %130, align 4
  %133 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags6, align 32
  %and181 = and i32 %134, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end176.if.end190_crit_edge, label %if.then183

if.end176.if.end190_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190

if.then183:                                       ; preds = %if.end176
  %135 = ptrtoint ptr %common.i542 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %common.i542, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %or.i545 = or i32 %138, 2048
  store i32 %or.i545, ptr %136, align 4
  %139 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %status_use_accessors.i, align 4
  %or.i547 = or i32 %140, 512
  store i32 %or.i547, ptr %status_use_accessors.i, align 4
  %141 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags6, align 32
  %and186 = and i32 %142, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.then183.if.end190_crit_edge, label %if.then188

if.then183.if.end190_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190

if.then188:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  %or.i549 = or i32 %140, 2097664
  %143 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.i549, ptr %status_use_accessors.i, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.then183.if.end190_crit_edge, %if.end176.if.end190_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @noirqdebug to i32))
  %144 = load i8, ptr @noirqdebug, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool191.not = icmp eq i8 %144, 0
  br i1 %tobool191.not, label %if.end190.if.end193_crit_edge, label %if.then192

if.end190.if.end193_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then192:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %status_use_accessors.i, align 4
  %or.i551 = or i32 %146, 2097152
  store i32 %or.i551, ptr %status_use_accessors.i, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end190.if.end193_crit_edge
  %147 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags6, align 32
  %and195 = and i32 %148, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end193.if.end200_crit_edge, label %if.then197

if.end193.if.end200_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %core_internal_state__do_not_mess_with_it177 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %core_internal_state__do_not_mess_with_it177, align 8
  %or199 = or i32 %150, 32
  store i32 %or199, ptr %core_internal_state__do_not_mess_with_it177, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %if.end193.if.end200_crit_edge
  %151 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags6, align 32
  %and202 = and i32 %152, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end200.if.end206_crit_edge, label %if.then204

if.end200.if.end206_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %status_use_accessors.i, align 4
  %or.i553 = or i32 %154, 8192
  store i32 %or.i553, ptr %status_use_accessors.i, align 4
  %155 = ptrtoint ptr %common.i542 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %common.i542, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %or.i555 = or i32 %158, 1024
  store i32 %or.i555, ptr %156, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end200.if.end206_crit_edge
  %159 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags6, align 32
  %and208 = and i32 %160, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %land.lhs.true210, label %if.end206.if.else215_crit_edge

if.end206.if.else215_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else215

land.lhs.true210:                                 ; preds = %if.end206
  %161 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %status_use_accessors.i, align 4
  %and.i557 = and i32 %162, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i557)
  %tobool.not.i558 = icmp eq i32 %and.i557, 0
  br i1 %tobool.not.i558, label %if.then213, label %land.lhs.true210.if.else215_crit_edge

land.lhs.true210.if.else215_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else215

if.then213:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #13
  %call214 = tail call i32 @irq_startup(ptr noundef %desc, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %if.end281

if.else215:                                       ; preds = %land.lhs.true210.if.else215_crit_edge, %if.end206.if.else215_crit_edge
  %and217 = and i32 %160, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.else215.if.end253_crit_edge, label %land.rhs

if.else215.if.end253_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

land.rhs:                                         ; preds = %if.else215
  %.b516 = load i1, ptr @__setup_irq.__already_done, align 1
  br i1 %.b516, label %land.rhs.if.end253_crit_edge, label %if.then227, !prof !192

land.rhs.if.end253_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then227:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__setup_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1745, i32 noundef 9, ptr noundef null) #11
  br label %if.end253

if.end253:                                        ; preds = %if.then227, %land.rhs.if.end253_crit_edge, %if.else215.if.end253_crit_edge
  %depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %163 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %depth, align 4
  br label %if.end281

if.else262:                                       ; preds = %if.end156
  %and264 = and i32 %124, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.else262.land.lhs.true283_crit_edge, label %if.then266

if.else262.land.lhs.true283_crit_edge:            ; preds = %if.else262
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true283

if.then266:                                       ; preds = %if.else262
  %common.i559 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %164 = ptrtoint ptr %common.i559 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %common.i559, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  %and.i560 = and i32 %167, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and264, i32 %and.i560)
  %cmp271.not = icmp eq i32 %and264, %and.i560
  br i1 %cmp271.not, label %if.then266.land.lhs.true283_crit_edge, label %do.end276

if.then266.land.lhs.true283_crit_edge:            ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true283

do.end276:                                        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %irq, i32 noundef %and.i560, i32 noundef %and264) #14
  br label %land.lhs.true283

if.end281:                                        ; preds = %if.end253, %if.then213
  %168 = ptrtoint ptr %old_ptr.1627 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %new, ptr %old_ptr.1627, align 4
  tail call void @irq_pm_install_action(ptr noundef %desc, ptr noundef %new) #11
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 10
  %169 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %irq_count, align 8
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  %170 = ptrtoint ptr %irqs_unhandled to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %irqs_unhandled, align 32
  br label %do.body291

land.lhs.true283:                                 ; preds = %do.end276, %if.then266.land.lhs.true283_crit_edge, %if.else262.land.lhs.true283_crit_edge
  %171 = ptrtoint ptr %old_ptr.1627 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %new, ptr %old_ptr.1627, align 4
  tail call void @irq_pm_install_action(ptr noundef %desc, ptr noundef %new) #11
  %irq_count.c521 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 10
  %172 = ptrtoint ptr %irq_count.c521 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %irq_count.c521, align 8
  %irqs_unhandled.c522 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  %173 = ptrtoint ptr %irqs_unhandled.c522 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %irqs_unhandled.c522, align 32
  %core_internal_state__do_not_mess_with_it284 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %174 = ptrtoint ptr %core_internal_state__do_not_mess_with_it284 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %core_internal_state__do_not_mess_with_it284, align 8
  %and285 = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %land.lhs.true283.do.body291_crit_edge, label %if.then287

land.lhs.true283.do.body291_crit_edge:            ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body291

if.then287:                                       ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #13
  %and289 = and i32 %175, -3
  %176 = ptrtoint ptr %core_internal_state__do_not_mess_with_it284 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %and289, ptr %core_internal_state__do_not_mess_with_it284, align 8
  tail call void @__enable_irq(ptr noundef %desc)
  br label %do.body291

do.body291:                                       ; preds = %if.then287, %land.lhs.true283.do.body291_crit_edge, %if.end281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call68) #11
  %177 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %chip, align 8
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %178, i32 0, i32 16
  %179 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool.not.i562 = icmp eq ptr %180, null
  br i1 %tobool.not.i562, label %do.body291.chip_bus_sync_unlock.exit_crit_edge, label %if.then.i564, !prof !192

do.body291.chip_bus_sync_unlock.exit_crit_edge:   ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_sync_unlock.exit

if.then.i564:                                     ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %180(ptr noundef %irq_data) #11
  br label %chip_bus_sync_unlock.exit

chip_bus_sync_unlock.exit:                        ; preds = %if.then.i564, %do.body291.chip_bus_sync_unlock.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %request_mutex) #11
  %thread = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 5
  %181 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %thread, align 4
  %tobool301.not = icmp eq ptr %182, null
  br i1 %tobool301.not, label %chip_bus_sync_unlock.exit.if.end305_crit_edge, label %if.then302

chip_bus_sync_unlock.exit.if.end305_crit_edge:    ; preds = %chip_bus_sync_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end305

if.then302:                                       ; preds = %chip_bus_sync_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call304 = tail call i32 @wake_up_process(ptr noundef nonnull %182) #11
  br label %if.end305

if.end305:                                        ; preds = %if.then302, %chip_bus_sync_unlock.exit.if.end305_crit_edge
  %secondary306 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 6
  %183 = ptrtoint ptr %secondary306 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %secondary306, align 8
  %tobool307.not = icmp eq ptr %184, null
  br i1 %tobool307.not, label %if.end305.if.end312_crit_edge, label %if.then308

if.end305.if.end312_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end312

if.then308:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  %thread310 = getelementptr inbounds %struct.irqaction, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %thread310 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %thread310, align 4
  %call311 = tail call i32 @wake_up_process(ptr noundef %186) #11
  br label %if.end312

if.end312:                                        ; preds = %if.then308, %if.end305.if.end312_crit_edge
  tail call void @register_irq_proc(i32 noundef %irq, ptr noundef %desc) #11
  %dir = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 12
  %187 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %dir, align 16
  tail call void @register_handler_proc(i32 noundef %irq, ptr noundef %new) #11
  br label %cleanup363

mismatch:                                         ; preds = %lor.lhs.false106.mismatch_crit_edge, %if.end96.mismatch_crit_edge
  %188 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %flags6, align 32
  %and314 = and i32 %189, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %do.end319, label %mismatch.do.body327_crit_edge

mismatch.do.body327_crit_edge:                    ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body327

do.end319:                                        ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #13
  %name322 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %190 = ptrtoint ptr %name322 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %name322, align 4
  %192 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %flags97, align 32
  %name324 = getelementptr inbounds %struct.irqaction, ptr %75, i32 0, i32 11
  %194 = ptrtoint ptr %name324 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %name324, align 4
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %irq, i32 noundef %189, ptr noundef %191, i32 noundef %193, ptr noundef %195) #14
  tail call void @dump_stack() #14
  br label %do.body327

do.body327:                                       ; preds = %do.end319, %mismatch.do.body327_crit_edge, %if.end172.do.body327_crit_edge, %if.then165.do.body327_crit_edge, %do.end151, %if.then131.do.body327_crit_edge, %cleanup
  %ret.4 = phi i32 [ -22, %cleanup ], [ %call168, %if.then165.do.body327_crit_edge ], [ %call173, %if.end172.do.body327_crit_edge ], [ -22, %do.end151 ], [ -16, %if.then131.do.body327_crit_edge ], [ -16, %do.end319 ], [ -16, %mismatch.do.body327_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call68) #11
  %196 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %action, align 64
  %tobool337.not = icmp eq ptr %197, null
  br i1 %tobool337.not, label %if.then338, label %do.body327.out_bus_unlock_crit_edge

do.body327.out_bus_unlock_crit_edge:              ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bus_unlock

if.then338:                                       ; preds = %do.body327
  %198 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %chip, align 4
  %irq_release_resources.i = getelementptr inbounds %struct.irq_chip, ptr %199, i32 0, i32 23
  %200 = ptrtoint ptr %irq_release_resources.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %irq_release_resources.i, align 4
  %tobool.not.i567 = icmp eq ptr %201, null
  br i1 %tobool.not.i567, label %if.then338.out_bus_unlock_crit_edge, label %if.then.i569

if.then338.out_bus_unlock_crit_edge:              ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bus_unlock

if.then.i569:                                     ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %201(ptr noundef %irq_data) #11
  br label %out_bus_unlock

out_bus_unlock:                                   ; preds = %if.then.i569, %if.then338.out_bus_unlock_crit_edge, %do.body327.out_bus_unlock_crit_edge, %do.end
  %ret.5 = phi i32 [ %ret.4, %do.body327.out_bus_unlock_crit_edge ], [ %call.i, %do.end ], [ %ret.4, %if.then338.out_bus_unlock_crit_edge ], [ %ret.4, %if.then.i569 ]
  %202 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %chip, align 8
  %irq_bus_sync_unlock.i572 = getelementptr inbounds %struct.irq_chip, ptr %203, i32 0, i32 16
  %204 = ptrtoint ptr %irq_bus_sync_unlock.i572 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %irq_bus_sync_unlock.i572, align 4
  %tobool.not.i573 = icmp eq ptr %205, null
  br i1 %tobool.not.i573, label %out_bus_unlock.chip_bus_sync_unlock.exit577_crit_edge, label %if.then.i575, !prof !192

out_bus_unlock.chip_bus_sync_unlock.exit577_crit_edge: ; preds = %out_bus_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_sync_unlock.exit577

if.then.i575:                                     ; preds = %out_bus_unlock
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %205(ptr noundef %irq_data) #11
  br label %chip_bus_sync_unlock.exit577

chip_bus_sync_unlock.exit577:                     ; preds = %if.then.i575, %out_bus_unlock.chip_bus_sync_unlock.exit577_crit_edge
  tail call void @mutex_unlock(ptr noundef %request_mutex) #11
  br label %out_thread

out_thread:                                       ; preds = %chip_bus_sync_unlock.exit577, %if.then36.out_thread_crit_edge
  %ret.6 = phi i32 [ %ret.5, %chip_bus_sync_unlock.exit577 ], [ %call38, %if.then36.out_thread_crit_edge ]
  %thread341 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 5
  %206 = ptrtoint ptr %thread341 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %thread341, align 4
  %tobool342.not = icmp eq ptr %207, null
  br i1 %tobool342.not, label %out_thread.if.end347_crit_edge, label %if.then343

out_thread.if.end347_crit_edge:                   ; preds = %out_thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end347

if.then343:                                       ; preds = %out_thread
  %208 = ptrtoint ptr %thread341 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %thread341, align 4
  %call346 = tail call i32 @kthread_stop(ptr noundef nonnull %207) #11
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %207, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %209 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i578 = extractvalue { i32, i32, i32 } %209, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i578)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i578, 1
  br i1 %cmp.i.i.i.i, label %if.then.i579, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i578)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i578, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end347_crit_edge, label %if.then10.i.i.i.i, !prof !192

if.end5.i.i.i.i.if.end347_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end347

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %if.end347

if.then.i579:                                     ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @__put_task_struct(ptr noundef nonnull %207) #11
  br label %if.end347

if.end347:                                        ; preds = %if.then.i579, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end347_crit_edge, %out_thread.if.end347_crit_edge
  %secondary348 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 6
  %210 = ptrtoint ptr %secondary348 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %secondary348, align 8
  %tobool349.not = icmp eq ptr %211, null
  br i1 %tobool349.not, label %if.end347.out_mput_crit_edge, label %land.lhs.true350

if.end347.out_mput_crit_edge:                     ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mput

land.lhs.true350:                                 ; preds = %if.end347
  %thread352 = getelementptr inbounds %struct.irqaction, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %thread352 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %thread352, align 4
  %tobool353.not = icmp eq ptr %213, null
  br i1 %tobool353.not, label %land.lhs.true350.out_mput_crit_edge, label %if.then354

land.lhs.true350.out_mput_crit_edge:              ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mput

if.then354:                                       ; preds = %land.lhs.true350
  %214 = ptrtoint ptr %thread352 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %thread352, align 4
  %call360 = tail call i32 @kthread_stop(ptr noundef nonnull %213) #11
  %usage.i581 = getelementptr inbounds %struct.task_struct, ptr %213, i32 0, i32 2
  %call.i.i.i.i.i.i582 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i581, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %usage.i581, i32 1, i32 3, i32 1) #11
  %215 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i581, ptr %usage.i581, i32 1, ptr elementtype(i32) %usage.i581) #11, !srcloc !197
  %asmresult.i.i.i.i.i.i.i583 = extractvalue { i32, i32, i32 } %215, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i583)
  %cmp.i.i.i.i584 = icmp eq i32 %asmresult.i.i.i.i.i.i.i583, 1
  br i1 %cmp.i.i.i.i584, label %if.then.i588, label %if.end5.i.i.i.i586

if.end5.i.i.i.i586:                               ; preds = %if.then354
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i583)
  %.not.i.i.i.i585 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i583, 0
  br i1 %.not.i.i.i.i585, label %if.end5.i.i.i.i586.out_mput_crit_edge, label %if.then10.i.i.i.i587, !prof !192

if.end5.i.i.i.i586.out_mput_crit_edge:            ; preds = %if.end5.i.i.i.i586
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mput

if.then10.i.i.i.i587:                             ; preds = %if.end5.i.i.i.i586
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i581, i32 noundef 3) #11
  br label %out_mput

if.then.i588:                                     ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @__put_task_struct(ptr noundef nonnull %213) #11
  br label %out_mput

out_mput:                                         ; preds = %if.then.i588, %if.then10.i.i.i.i587, %if.end5.i.i.i.i586.out_mput_crit_edge, %land.lhs.true350.out_mput_crit_edge, %if.end347.out_mput_crit_edge, %setup_irq_thread.exit, %if.then12.i.out_mput_crit_edge, %if.then15.out_mput_crit_edge
  %ret.7 = phi i32 [ %ret.6, %land.lhs.true350.out_mput_crit_edge ], [ %ret.6, %if.end347.out_mput_crit_edge ], [ %51, %setup_irq_thread.exit ], [ -22, %if.then15.out_mput_crit_edge ], [ %ret.6, %if.end5.i.i.i.i586.out_mput_crit_edge ], [ %ret.6, %if.then10.i.i.i.i587 ], [ %ret.6, %if.then.i588 ], [ -12, %if.then12.i.out_mput_crit_edge ]
  %216 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %owner, align 16
  tail call void @module_put(ptr noundef %217) #11
  br label %cleanup363

cleanup363:                                       ; preds = %out_mput, %if.end312, %if.end2.cleanup363_crit_edge, %if.end.cleanup363_crit_edge, %entry.cleanup363_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out_mput ], [ 0, %if.end312 ], [ -22, %entry.cleanup363_crit_edge ], [ -38, %if.end.cleanup363_crit_edge ], [ -19, %if.end2.cleanup363_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @request_any_context_irq(i32 noundef %irq, ptr noundef %handler, i32 noundef %flags, ptr noundef %name, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef %handler, i32 noundef %flags, ptr noundef %name, ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 1, i32 %call5
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef %handler, ptr noundef null, i32 noundef %flags, ptr noundef %name, ptr noundef %dev_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then4 ], [ %call.i, %if.end7 ], [ -107, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @request_nmi(i32 noundef %irq, ptr noundef %handler, i32 noundef %irqflags, ptr noundef %name, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i32 %irqflags, 267392
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %0)
  %1 = icmp ne i32 %0, 1024
  %tobool8.not = icmp eq ptr %handler, null
  %or.cond129 = or i1 %tobool8.not, %1
  br i1 %or.cond129, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %3, 4096
  %and13 = and i32 %irqflags, 524288
  %4 = or i32 %and.i, %and13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  %and.i131 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  %or.cond142 = select i1 %5, i1 %tobool.not.i132, i1 false
  br i1 %or.cond142, label %lor.lhs.false17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %and.i134 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.i.not = icmp eq i32 %and.i134, 0
  br i1 %tobool.i.not, label %lor.lhs.false41.critedge, label %do.end, !prof !192

do.end:                                           ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2296, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

lor.lhs.false41.critedge:                         ; preds = %lor.lhs.false17
  %parent_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_data.i, align 4
  %tobool.not.i135 = icmp eq ptr %7, null
  br i1 %tobool.not.i135, label %if.end.i, label %lor.lhs.false41.critedge.cleanup_crit_edge

lor.lhs.false41.critedge.cleanup_crit_edge:       ; preds = %lor.lhs.false41.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false41.critedge
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %irq_supports_nmi.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

irq_supports_nmi.exit:                            ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 33
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i136 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool7.i.not = icmp eq i32 %and.i136, 0
  br i1 %tobool7.i.not, label %irq_supports_nmi.exit.cleanup_crit_edge, label %if.end44

irq_supports_nmi.exit.cleanup_crit_edge:          ; preds = %irq_supports_nmi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %irq_supports_nmi.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 128) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %handler, ptr %call7.i.i, align 128
  %or50 = or i32 %irqflags, 67584
  %flags51 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %flags51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or50, ptr %flags51, align 32
  %name52 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %name52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %name52, align 4
  %dev_id53 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev_id53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev_id, ptr %dev_id53, align 4
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call54 = tail call i32 @irq_chip_pm_get(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end48.err_out_crit_edge, label %if.end57

if.end48.err_out_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end57:                                         ; preds = %if.end48
  %call58 = tail call fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.body62, label %err_irq_setup

do.body62:                                        ; preds = %if.end57
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or68 = or i32 %22, 8192
  store i32 %or68, ptr %core_internal_state__do_not_mess_with_it, align 8
  %23 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip.i, align 4
  %irq_nmi_setup.i = getelementptr inbounds %struct.irq_chip, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %irq_nmi_setup.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_nmi_setup.i, align 4
  %tobool.not.i138 = icmp eq ptr %26, null
  br i1 %tobool.not.i138, label %do.body62.if.then71_crit_edge, label %irq_nmi_setup.exit

do.body62.if.then71_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

irq_nmi_setup.exit:                               ; preds = %do.body62
  %call2.i = tail call i32 %26(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool70.not = icmp eq i32 %call2.i, 0
  br i1 %tobool70.not, label %do.body83, label %irq_nmi_setup.exit.if.then71_crit_edge

irq_nmi_setup.exit.if.then71_crit_edge:           ; preds = %irq_nmi_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then71:                                        ; preds = %irq_nmi_setup.exit.if.then71_crit_edge, %do.body62.if.then71_crit_edge
  %call72 = tail call fastcc ptr @__cleanup_nmi(i32 noundef %irq, ptr noundef nonnull %call)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call65) #11
  br label %cleanup

do.body83:                                        ; preds = %irq_nmi_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call65) #11
  br label %cleanup

err_irq_setup:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call93 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  br label %err_out

err_out:                                          ; preds = %err_irq_setup, %if.end48.err_out_crit_edge
  %retval1.0 = phi i32 [ %call54, %if.end48.err_out_crit_edge ], [ %call58, %err_irq_setup ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.body83, %if.then71, %if.end44.cleanup_crit_edge, %irq_supports_nmi.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false41.critedge.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ -22, %if.then71 ], [ 0, %do.body83 ], [ -107, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %irq_supports_nmi.exit.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ -22, %lor.lhs.false41.critedge.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_percpu_irq(i32 noundef %irq, i32 noundef %type) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.end:                                           ; preds = %entry
  %and = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end5, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end5:                                          ; preds = %if.end
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i45 = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %cmp6.not = icmp eq i32 %and.i45, 0
  br i1 %cmp6.not, label %if.end5.if.end29_crit_edge, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %type.addr.048 = phi i32 [ %and.i45, %if.end5.if.then7_crit_edge ], [ %and, %if.end.if.then7_crit_edge ]
  %call8 = call i32 @__irq_set_trigger(ptr noundef nonnull %call.i, i32 noundef %type.addr.048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end29_crit_edge, label %cleanup

if.then7.if.end29_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

cleanup:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2363, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %irq) #11
  br label %out

if.end29:                                         ; preds = %if.then7.if.end29_crit_edge, %if.end5.if.end29_crit_edge
  call void @irq_percpu_enable(ptr noundef nonnull %call.i, i32 noundef %3) #11
  br label %out

out:                                              ; preds = %if.end29, %cleanup
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %10, i1 noundef zeroext false) #11
  br label %cleanup30

cleanup30:                                        ; preds = %out, %entry.cleanup30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_percpu_nmi(i32 noundef %irq, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @enable_percpu_irq(i32 noundef %irq, i32 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_percpu_is_enabled(i32 noundef %irq) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 16
  %5 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %percpu_enabled, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %7, %3
  br i1 %cmp.not.i.i.i, label %if.end.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end.cpumask_test_cpu.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !192

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.end.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4 = icmp ne i32 %11, 0
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %13, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %cpumask_test_cpu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool4, %cpumask_test_cpu.exit ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_percpu_irq(i32 noundef %irq) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_percpu_disable(ptr noundef nonnull %call.i, i32 noundef %3) #11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %6, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags.i, align 4, !annotation !191
  %call.i.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags.i, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.disable_percpu_irq.exit_crit_edge, label %if.end.i

entry.disable_percpu_irq.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_percpu_irq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @irq_percpu_disable(ptr noundef nonnull %call.i.i, i32 noundef %3) #11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i.i, i32 noundef %6, i1 noundef zeroext false) #11
  br label %disable_percpu_irq.exit

disable_percpu_irq.exit:                          ; preds = %if.end.i, %entry.disable_percpu_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @remove_percpu_irq(i32 noundef %irq, ptr nocapture noundef readonly %act) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, ptr %act, i32 0, i32 2
  %2 = ptrtoint ptr %percpu_dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %percpu_dev_id, align 8
  %call2 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %irq, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__free_percpu_irq(i32 noundef %irq, ptr noundef readnone %dev_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i141 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i141 to ptr
  %preempt_count.i142 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i142, align 4
  %and3 = and i32 %7, 983040
  %or = or i32 %and3, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i143 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i143 to ptr
  %preempt_count.i144 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i144 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i144, align 4
  %and5 = and i32 %11, 65280
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %irq) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %do.body29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body29:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %action34 = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %action34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action34, align 64
  %tobool35.not = icmp eq ptr %13, null
  br i1 %tobool35.not, label %do.body29.do.end51_crit_edge, label %lor.lhs.false

do.body29.do.end51_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

lor.lhs.false:                                    ; preds = %do.body29
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %percpu_dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %percpu_dev_id, align 8
  %cmp36.not = icmp eq ptr %15, %dev_id
  br i1 %cmp36.not, label %if.end65, label %lor.lhs.false.do.end51_crit_edge

lor.lhs.false.do.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false.do.end51_crit_edge, %do.body29.do.end51_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2441, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %irq) #11
  br label %do.body109

if.end65:                                         ; preds = %lor.lhs.false
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %percpu_enabled, align 8
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %18, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %16)
  %cmp4.i.i = icmp eq i32 %call.i.i, %16
  br i1 %cmp4.i.i, label %if.end96, label %do.end80

do.end80:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %percpu_enabled, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %20, i32 noundef %21) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2447, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %irq, i32 noundef %call.i) #11
  br label %do.body109

if.end96:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %action34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %action34, align 64
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and98 = and i32 %24, -8193
  store i32 %and98, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #11
  tail call void @unregister_handler_proc(i32 noundef %irq, ptr noundef nonnull %13) #11
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call108 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  %owner = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 34
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner, align 16
  tail call void @module_put(ptr noundef %26) #11
  br label %cleanup

do.body109:                                       ; preds = %do.end80, %do.end51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body109, %if.end96, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body109 ], [ %13, %if.end96 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_percpu_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.chip_bus_lock.exit_crit_edge, label %if.then.i, !prof !192

if.end.chip_bus_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_lock.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #11
  br label %chip_bus_lock.exit

chip_bus_lock.exit:                               ; preds = %if.then.i, %if.end.chip_bus_lock.exit_crit_edge
  %call2 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %irq, ptr noundef %dev_id)
  tail call void @kfree(ptr noundef %call2) #11
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 8
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool.not.i8 = icmp eq ptr %9, null
  br i1 %tobool.not.i8, label %chip_bus_lock.exit.cleanup_crit_edge, label %if.then.i10, !prof !192

chip_bus_lock.exit.cleanup_crit_edge:             ; preds = %chip_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i10:                                      ; preds = %chip_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %irq_data.i9 = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i10, %chip_bus_lock.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_percpu_nmi(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %if.end27, !prof !195

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2516, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %irq, ptr noundef %dev_id)
  tail call void @kfree(ptr noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_percpu_irq(i32 noundef %irq, ptr noundef %act) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call3 = tail call i32 @irq_chip_pm_get(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef nonnull %call, ptr noundef %act)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__request_percpu_irq(i32 noundef %irq, ptr noundef %handler, i32 noundef %flags, ptr noundef %devname, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %2 = and i32 %1, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %2)
  %3 = icmp eq i32 %2, 131072
  br i1 %3, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %4 = zext i32 %flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %flags, label %if.end7.cleanup_crit_edge [
    i32 0, label %if.end7.if.end10_crit_edge
    i32 82432, label %if.end7.if.end10_crit_edge51
  ]

if.end7.if.end10_crit_edge51:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.end7.if.end10_crit_edge51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 128) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %handler, ptr %call7.i.i, align 128
  %or16 = or i32 %flags, 17408
  %flags17 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or16, ptr %flags17, align 32
  %name = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %devname, ptr %name, align 4
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %percpu_dev_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_id, ptr %percpu_dev_id, align 8
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call18 = tail call i32 @irq_chip_pm_get(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end14.cleanup.sink.split_crit_edge, label %if.end21

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end14
  %call22 = tail call fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.then24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.end14.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call22, %if.then24 ], [ %call18, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @request_percpu_nmi(i32 noundef %irq, ptr noundef %handler, ptr noundef %name, ptr noundef %dev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handler, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %2 = and i32 %1, 137216
  call void @__sanitizer_cov_trace_const_cmp4(i32 135168, i32 %2)
  %.not = icmp eq i32 %2, 135168
  br i1 %.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %parent_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_data.i, align 4
  %tobool.not.i72 = icmp eq ptr %4, null
  br i1 %tobool.not.i72, label %if.end.i, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i, align 4
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 16
  %9 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %irq_supports_nmi.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

irq_supports_nmi.exit:                            ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 33
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i73 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool7.i.not = icmp eq i32 %and.i73, 0
  br i1 %tobool7.i.not, label %irq_supports_nmi.exit.cleanup_crit_edge, label %if.end11

irq_supports_nmi.exit.cleanup_crit_edge:          ; preds = %irq_supports_nmi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %irq_supports_nmi.exit
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 128) #15
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %handler, ptr %call7.i.i, align 128
  %flags20 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 84992, ptr %flags20, align 32
  %name21 = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %name21, align 4
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %percpu_dev_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev_id, ptr %percpu_dev_id, align 8
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %call22 = tail call i32 @irq_chip_pm_get(ptr noundef %irq_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end18.err_out_crit_edge, label %if.end24

if.end18.err_out_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end24:                                         ; preds = %if.end18
  %call25 = tail call fastcc i32 @__setup_irq(i32 noundef %irq, ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body, label %err_irq_setup

do.body:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %20 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or = or i32 %21, 8192
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #11
  br label %cleanup

err_irq_setup:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 @irq_chip_pm_put(ptr noundef %irq_data) #11
  br label %err_out

err_out:                                          ; preds = %err_irq_setup, %if.end18.err_out_crit_edge
  %retval1.0 = phi i32 [ %call22, %if.end18.err_out_crit_edge ], [ %call25, %err_irq_setup ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.body, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %irq_supports_nmi.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -22, %irq_supports_nmi.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prepare_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %1 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !201
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end22, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end22:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2706, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end22, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.end38

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %do.end58, label %if.end74, !prof !195

do.end58:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2715, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %irq) #11
  br label %out

if.end74:                                         ; preds = %if.end38
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %irq_nmi_setup.i = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %irq_nmi_setup.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_nmi_setup.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end74.do.end80_crit_edge, label %irq_nmi_setup.exit

if.end74.do.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

irq_nmi_setup.exit:                               ; preds = %if.end74
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  %call2.i = call i32 %11(ptr noundef %irq_data.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool76.not = icmp eq i32 %call2.i, 0
  br i1 %tobool76.not, label %irq_nmi_setup.exit.out_crit_edge, label %irq_nmi_setup.exit.do.end80_crit_edge

irq_nmi_setup.exit.do.end80_crit_edge:            ; preds = %irq_nmi_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

irq_nmi_setup.exit.out_crit_edge:                 ; preds = %irq_nmi_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end80:                                         ; preds = %irq_nmi_setup.exit.do.end80_crit_edge, %if.end74.do.end80_crit_edge
  %cond.i96 = phi i32 [ %call2.i, %irq_nmi_setup.exit.do.end80_crit_edge ], [ -22, %if.end74.do.end80_crit_edge ]
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %irq) #14
  br label %out

out:                                              ; preds = %do.end80, %irq_nmi_setup.exit.out_crit_edge, %do.end58
  %ret.0 = phi i32 [ -22, %do.end58 ], [ %cond.i96, %do.end80 ], [ 0, %irq_nmi_setup.exit.out_crit_edge ]
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %13, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @teardown_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %1 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !201
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end22, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end22:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2748, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end22, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext false, i32 noundef 3) #11
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.end38

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %do.end58, label %if.end74.critedge, !prof !195

do.end58:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2755, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end74.critedge:                                ; preds = %if.end38
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %irq_nmi_teardown.i = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %irq_nmi_teardown.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_nmi_teardown.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end74.critedge.out_crit_edge, label %if.then.i

if.end74.critedge.out_crit_edge:                  ; preds = %if.end74.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %if.end74.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  call void %11(ptr noundef %irq_data.i.i) #11
  br label %out

out:                                              ; preds = %if.then.i, %if.end74.critedge.out_crit_edge, %do.end58
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %13, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__irq_get_irqchip_state(ptr noundef %data, i32 noundef %which, ptr noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end43.do.body_crit_edge, %entry
  %data.addr.0 = phi ptr [ %data, %entry ], [ %5, %if.end43.do.body_crit_edge ]
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %data.addr.0, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %do.body
  %.b61 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !192

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end40:                                         ; preds = %do.body
  %irq_get_irqchip_state = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %irq_get_irqchip_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_get_irqchip_state, align 4
  %tobool41.not = icmp eq ptr %3, null
  br i1 %tobool41.not, label %if.end43, label %do.end46

if.end43:                                         ; preds = %if.end40
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data.addr.0, i32 0, i32 6
  %4 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_data, align 4
  %tobool45.not = icmp eq ptr %5, null
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.end43.do.body_crit_edge

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  %tobool47.not = icmp eq ptr %data.addr.0, null
  br i1 %tobool47.not, label %do.end46.cleanup_crit_edge, label %if.then48

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 %3(ptr noundef nonnull %data.addr.0, i32 noundef %which, ptr noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.end46.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then ], [ %call50, %if.then48 ], [ -22, %do.end46.cleanup_crit_edge ], [ -19, %land.rhs.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_get_irqchip_state(i32 noundef %irq, i32 noundef %which, ptr noundef %state) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end43.i.do.body.i_crit_edge, %if.end
  %data.addr.0.i = phi ptr [ %irq_data.i, %if.end ], [ %6, %if.end43.i.do.body.i_crit_edge ]
  %chip.i.i = getelementptr inbounds %struct.irq_data, ptr %data.addr.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b61.i = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br i1 %.b61.i, label %land.rhs.i.__irq_get_irqchip_state.exit_crit_edge, label %if.then.i, !prof !192

land.rhs.i.__irq_get_irqchip_state.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_get_irqchip_state.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  br label %__irq_get_irqchip_state.exit

if.end40.i:                                       ; preds = %do.body.i
  %irq_get_irqchip_state.i = getelementptr inbounds %struct.irq_chip, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %irq_get_irqchip_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_get_irqchip_state.i, align 4
  %tobool41.not.i = icmp eq ptr %4, null
  br i1 %tobool41.not.i, label %if.end43.i, label %do.end46.i

if.end43.i:                                       ; preds = %if.end40.i
  %parent_data.i = getelementptr inbounds %struct.irq_data, ptr %data.addr.0.i, i32 0, i32 6
  %5 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_data.i, align 4
  %tobool45.not.i = icmp eq ptr %6, null
  br i1 %tobool45.not.i, label %if.end43.i.__irq_get_irqchip_state.exit_crit_edge, label %if.end43.i.do.body.i_crit_edge

if.end43.i.do.body.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end43.i.__irq_get_irqchip_state.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_get_irqchip_state.exit

do.end46.i:                                       ; preds = %if.end40.i
  %tobool47.not.i = icmp eq ptr %data.addr.0.i, null
  br i1 %tobool47.not.i, label %do.end46.i.__irq_get_irqchip_state.exit_crit_edge, label %if.then48.i

do.end46.i.__irq_get_irqchip_state.exit_crit_edge: ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__irq_get_irqchip_state.exit

if.then48.i:                                      ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = call i32 %4(ptr noundef nonnull %data.addr.0.i, i32 noundef %which, ptr noundef %state) #11
  br label %__irq_get_irqchip_state.exit

__irq_get_irqchip_state.exit:                     ; preds = %if.then48.i, %do.end46.i.__irq_get_irqchip_state.exit_crit_edge, %if.end43.i.__irq_get_irqchip_state.exit_crit_edge, %if.then.i, %land.rhs.i.__irq_get_irqchip_state.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then.i ], [ %call50.i, %if.then48.i ], [ -22, %do.end46.i.__irq_get_irqchip_state.exit_crit_edge ], [ -19, %land.rhs.i.__irq_get_irqchip_state.exit_crit_edge ], [ -22, %if.end43.i.__irq_get_irqchip_state.exit_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %8, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %__irq_get_irqchip_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__irq_get_irqchip_state.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_irqchip_state(i32 noundef %irq, i32 noundef %which, i1 noundef zeroext %val) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !191
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end49.do.body_crit_edge, %if.end
  %data.0 = phi ptr [ %irq_data.i, %if.end ], [ %6, %if.end49.do.body_crit_edge ]
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %data.0, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %do.body
  %.b74 = load i1, ptr @irq_set_irqchip_state.__already_done, align 1
  br i1 %.b74, label %land.rhs.out_unlock_crit_edge, label %if.then13, !prof !192

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @irq_set_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2850, i32 noundef 9, ptr noundef null) #11
  br label %out_unlock

if.end46:                                         ; preds = %do.body
  %irq_set_irqchip_state = getelementptr inbounds %struct.irq_chip, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %irq_set_irqchip_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_set_irqchip_state, align 4
  %tobool47.not = icmp eq ptr %4, null
  br i1 %tobool47.not, label %if.end49, label %do.end52

if.end49:                                         ; preds = %if.end46
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data.0, i32 0, i32 6
  %5 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_data, align 4
  %tobool51.not = icmp eq ptr %6, null
  br i1 %tobool51.not, label %if.end49.out_unlock_crit_edge, label %if.end49.do.body_crit_edge

if.end49.do.body_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end49.out_unlock_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end52:                                         ; preds = %if.end46
  %tobool53.not = icmp eq ptr %data.0, null
  br i1 %tobool53.not, label %do.end52.out_unlock_crit_edge, label %if.then54

do.end52.out_unlock_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then54:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = call i32 %4(ptr noundef nonnull %data.0, i32 noundef %which, i1 noundef zeroext %val) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then54, %do.end52.out_unlock_crit_edge, %if.end49.out_unlock_crit_edge, %if.then13, %land.rhs.out_unlock_crit_edge
  %err.0 = phi i32 [ %call57, %if.then54 ], [ -22, %do.end52.out_unlock_crit_edge ], [ -19, %if.then13 ], [ -19, %land.rhs.out_unlock_crit_edge ], [ -22, %if.end49.out_unlock_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %8, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_has_action(i32 noundef %irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not.i3 = icmp eq ptr %call, null
  br i1 %tobool.not.i3, label %rcu_read_lock.exit.irq_desc_has_action.exit_crit_edge, label %land.rhs.i

rcu_read_lock.exit.irq_desc_has_action.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_desc_has_action.exit

land.rhs.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %action.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %action.i, align 64
  %cmp.i = icmp ne ptr %5, null
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %irq_desc_has_action.exit

irq_desc_has_action.exit:                         ; preds = %land.rhs.i, %rcu_read_lock.exit.irq_desc_has_action.exit_crit_edge
  %6 = phi i32 [ 0, %rcu_read_lock.exit.irq_desc_has_action.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %irq_desc_has_action.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

irq_desc_has_action.exit.rcu_read_unlock.exit_crit_edge: ; preds = %irq_desc_has_action.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %irq_desc_has_action.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %irq_desc_has_action.exit.rcu_read_unlock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %7 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i.i11 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_check_status_bit(i32 noundef %irq, i32 noundef %bitmask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %status_use_accessors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status_use_accessors, align 4
  %and = and i32 %5, %bitmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %res.0.off0 = phi i1 [ %tobool1, %if.then ], [ false, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %6 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i.i12 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %res.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_pm_remove_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_handler_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_nested_primary_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %irq) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_irq_thread(ptr noundef %new, i32 noundef %irq, i1 noundef zeroext %secondary) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 11
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 4
  %.str.39..str.38 = select i1 %secondary, ptr @.str.39, ptr @.str.38
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @irq_thread, ptr noundef %new, i32 noundef -1, ptr noundef nonnull %.str.39..str.38, i32 noundef %irq, ptr noundef %1) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !194
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !195

if.end6.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !192

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #11
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %thread = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 5
  %5 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %thread, align 4
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %new, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %thread_flags) #11
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %if.then4
  %retval.0 = phi i32 [ %2, %if.then4 ], [ 0, %get_task_struct.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_pm_install_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_irq_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_handler_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_forced_secondary_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 9, ptr noundef nonnull @.str.37, i32 noundef %irq) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_thread(ptr noundef %data) #1 align 64 {
entry:
  %on_exit_work = alloca %struct.callback_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %on_exit_work) #11
  %0 = ptrtoint ptr %on_exit_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %on_exit_work, align 4, !annotation !191
  %1 = getelementptr inbounds %struct.callback_head, ptr %on_exit_work, i32 0, i32 1
  %irq = getelementptr inbounds %struct.irqaction, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %3) #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo(ptr noundef %7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @force_irqthreads_key, ptr blockaddress(@irq_thread, %land.lhs.true)) #11
          to label %if.else [label %land.lhs.true], !srcloc !199

land.lhs.true:                                    ; preds = %entry
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %thread_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %thread_flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %handler_fn.0 = phi ptr [ @irq_thread_fn, %if.else ], [ @irq_forced_thread_fn, %land.lhs.true.if.end_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @irq_thread_dtor, ptr %1, align 4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %call9 = call i32 @task_work_add(ptr noundef %13, ptr noundef nonnull %on_exit_work, i32 noundef 0) #11
  call fastcc void @irq_thread_check_affinity(ptr noundef %call, ptr noundef %data)
  %call1032 = call fastcc i32 @irq_wait_for_interrupt(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1032)
  %tobool11.not33 = icmp eq i32 %call1032, 0
  br i1 %tobool11.not33, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %secondary1.i = getelementptr inbounds %struct.irqaction, ptr %data, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %threads_active.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 21
  %wait_for_threads.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %wake_threads_waitq.exit.while.body_crit_edge, %while.body.lr.ph
  call fastcc void @irq_thread_check_affinity(ptr noundef %call, ptr noundef %data)
  %call14 = call i32 %handler_fn.0(ptr noundef %call, ptr noundef %data) #11, !callees !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp = icmp eq i32 %call14, 2
  br i1 %cmp, label %if.then15, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %while.body
  %14 = ptrtoint ptr %secondary1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %secondary1.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.then15
  %.b47.i = load i1, ptr @irq_wake_secondary.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.end16_crit_edge, label %if.then.i, !prof !192

land.rhs.i.if.end16_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @irq_wake_secondary.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1243, i32 noundef 9, ptr noundef null) #11
  br label %if.end16

if.end40.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  call void @__irq_wake_thread(ptr noundef %call, ptr noundef nonnull %15) #11
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end40.i, %if.then.i, %land.rhs.i.if.end16_crit_edge, %while.body.if.end16_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %threads_active.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !207
  call void @llvm.prefetch.p0(ptr %threads_active.i, i32 1, i32 3, i32 1) #11
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_active.i, ptr %threads_active.i, i32 1, ptr elementtype(i32) %threads_active.i) #11, !srcloc !208
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i30, label %if.end16.wake_threads_waitq.exit_crit_edge

if.end16.wake_threads_waitq.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %wake_threads_waitq.exit

if.then.i30:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up(ptr noundef %wait_for_threads.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %wake_threads_waitq.exit

wake_threads_waitq.exit:                          ; preds = %if.then.i30, %if.end16.wake_threads_waitq.exit_crit_edge
  %call10 = call fastcc i32 @irq_wait_for_interrupt(ptr noundef %data)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %wake_threads_waitq.exit.while.body_crit_edge, label %wake_threads_waitq.exit.while.end_crit_edge

wake_threads_waitq.exit.while.end_crit_edge:      ; preds = %wake_threads_waitq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

wake_threads_waitq.exit.while.body_crit_edge:     ; preds = %wake_threads_waitq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %wake_threads_waitq.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %call19 = call ptr @task_work_cancel(ptr noundef %18, ptr noundef nonnull @irq_thread_dtor) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %on_exit_work) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_forced_thread_fn(ptr noundef %desc, ptr noundef %action) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !201
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !210
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 4
  %1 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread_fn, align 16
  %irq = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %dev_id = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %call2 = tail call i32 %2(i32 noundef %4, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %threads_handled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %threads_handled, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %threads_handled, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_handled, ptr %threads_handled, i32 1, ptr elementtype(i32) %threads_handled) #11, !srcloc !211
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %desc, ptr noundef %action)
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !212
  tail call fastcc void @local_bh_enable()
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_thread_fn(ptr noundef %desc, ptr noundef %action) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 4
  %0 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_fn, align 16
  %irq = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %dev_id = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 1
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %call = tail call i32 %1(i32 noundef %3, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %threads_handled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %threads_handled, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %threads_handled, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_handled, ptr %threads_handled, i32 1, ptr elementtype(i32) %threads_handled) #11, !srcloc !211
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %desc, ptr noundef %action)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_thread_dtor(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b64 = load i1, ptr @irq_thread_dtor.__already_done, align 1
  br i1 %.b64, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !192

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @irq_thread_dtor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1218, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end41:                                         ; preds = %entry
  %call42 = tail call ptr @kthread_data(ptr noundef %3) #11
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %irq = getelementptr inbounds %struct.irqaction, ptr %call42, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, i32 noundef %7, i32 noundef %9) #14
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call49 = tail call ptr @irq_to_desc(i32 noundef %11) #11
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %call42, i32 0, i32 9
  %call50 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %thread_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end41.if.end53_crit_edge, label %if.then52

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end41
  %threads_active.i = getelementptr inbounds %struct.irq_desc, ptr %call49, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %threads_active.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr %threads_active.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_active.i, ptr %threads_active.i, i32 1, ptr elementtype(i32) %threads_active.i) #11, !srcloc !208
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then52.if.end53_crit_edge

if.then52.if.end53_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %wait_for_threads.i = getelementptr inbounds %struct.irq_desc, ptr %call49, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %wait_for_threads.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then.i, %if.then52.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %call49, ptr noundef %call42)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_thread_check_affinity(ptr noundef %desc, ptr noundef %action) unnamed_addr #1 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #11
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !191
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 9
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %thread_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #11
  br i1 %call1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 2, ptr noundef %thread_flags) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 3
  %1 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %affinity, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %if.end14.critedge, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %effective_affinity.i, align 4
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %9, 31
  %10 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %10, 536870908
  %11 = call ptr @memcpy(ptr %8, ptr %6, i32 %mul.i.i)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %12 = call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask, align 4
  %call13 = call i32 @set_cpus_allowed_ptr(ptr noundef %15, ptr noundef %17) #11
  br label %if.end14

if.end14.critedge:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end14.critedge, %if.then6
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irq_wait_for_interrupt(ptr noundef %action) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_flags209 = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 9
  br label %__here

__here:                                           ; preds = %if.end284, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@irq_wait_for_interrupt, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !213
  %call60 = tail call zeroext i1 @kthread_should_stop() #11
  %call62 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %thread_flags209) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %call60, label %if.then61, label %if.end208

if.then61:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select305 = sext i1 %tobool63.not to i32
  br label %return

if.end208:                                        ; preds = %__here
  br i1 %tobool63.not, label %if.end284, label %if.end208.return_crit_edge

if.end208.return_crit_edge:                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end284:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @schedule() #11
  br label %__here

return:                                           ; preds = %if.end208.return_crit_edge, %if.then61
  %retval.0 = phi i32 [ %spec.select305, %if.then61 ], [ 0, %if.end208.return_crit_edge ]
  %.pn = inttoptr i32 %and.i to ptr
  %task.le.sink304 = getelementptr inbounds %struct.thread_info, ptr %.pn, i32 0, i32 2
  %7 = ptrtoint ptr %task.le.sink304 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.le.sink304, align 8
  %task_state_change267 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change267 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@irq_wait_for_interrupt, %return) to i32), ptr %task_state_change267, align 4
  %10 = load ptr, ptr %task.le.sink304, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %10, align 128
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_finalize_oneshot(ptr noundef %desc, ptr noundef %action) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %action, align 128
  %cmp = icmp eq ptr %3, @irq_forced_secondary_handler
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %again.preheader

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

again.preheader:                                  ; preds = %lor.lhs.false
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  br label %again

again:                                            ; preds = %chip_bus_sync_unlock.exit, %again.preheader
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %again.chip_bus_lock.exit_crit_edge, label %if.then.i, !prof !192

again.chip_bus_lock.exit_crit_edge:               ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_lock.exit

if.then.i:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %irq_data.i) #11
  br label %chip_bus_lock.exit

chip_bus_lock.exit:                               ; preds = %if.then.i, %again.chip_bus_lock.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %if.then3, !prof !192

if.then3:                                         ; preds = %chip_bus_lock.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 8
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool.not.i40 = icmp eq ptr %15, null
  br i1 %tobool.not.i40, label %if.then3.chip_bus_sync_unlock.exit_crit_edge, label %if.then.i42, !prof !192

if.then3.chip_bus_sync_unlock.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %chip_bus_sync_unlock.exit

if.then.i42:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef %irq_data.i) #11
  br label %chip_bus_sync_unlock.exit

chip_bus_sync_unlock.exit:                        ; preds = %if.then.i42, %if.then3.chip_bus_sync_unlock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !215
  br label %again

if.end9:                                          ; preds = %chip_bus_lock.exit
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 9
  %16 = ptrtoint ptr %thread_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %thread_flags, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_unlock_crit_edge

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end13:                                         ; preds = %if.end9
  %thread_mask = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 10
  %18 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %thread_mask, align 8
  %neg = xor i32 %19, -1
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 20
  %20 = ptrtoint ptr %threads_oneshot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %threads_oneshot, align 8
  %and14 = and i32 %21, %neg
  store i32 %and14, ptr %threads_oneshot, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool16.not = icmp eq i32 %and14, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end13.out_unlock_crit_edge

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.end13
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = and i32 %23, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %24)
  %25 = icmp eq i32 %24, 131072
  br i1 %25, label %if.then22, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmask_threaded_irq(ptr noundef %desc) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then22, %land.lhs.true.out_unlock_crit_edge, %if.end13.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %26 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip.i, align 8
  %irq_bus_sync_unlock.i50 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %irq_bus_sync_unlock.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_bus_sync_unlock.i50, align 4
  %tobool.not.i51 = icmp eq ptr %29, null
  br i1 %tobool.not.i51, label %out_unlock.return_crit_edge, label %if.then.i53, !prof !192

out_unlock.return_crit_edge:                      ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i53:                                      ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %29(ptr noundef %irq_data.i) #11
  br label %return

return:                                           ; preds = %if.then.i53, %out_unlock.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_threaded_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !161, !163, !165, !167, !169, !170, !172, !174, !175, !176, !178}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @force_irqthreads_key, !1, !"force_irqthreads_key", i1 false, i1 false}
!1 = !{!"../kernel/irq/manage.c", i32 28, i32 1}
!2 = !{ptr @__setup_setup_forced_irqthreads, !3, !"__setup_setup_forced_irqthreads", i1 false, i1 false}
!3 = !{!"../kernel/irq/manage.c", i32 35, i32 1}
!4 = !{ptr @__ksymtab_synchronize_hardirq, !5, !"__ksymtab_synchronize_hardirq", i1 false, i1 false}
!5 = !{!"../kernel/irq/manage.c", i32 109, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/irq/manage.c", i32 137, i32 3}
!8 = !{ptr @__ksymtab_synchronize_irq, !9, !"__ksymtab_synchronize_irq", i1 false, i1 false}
!9 = !{!"../kernel/irq/manage.c", i32 141, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/manage.c", i32 253, i32 10}
!12 = !{ptr @irq_do_set_affinity.tmp_mask_lock, !11, !"tmp_mask_lock", i1 false, i1 false}
!13 = !{ptr @irq_do_set_affinity.tmp_mask, !14, !"tmp_mask", i1 false, i1 false}
!14 = !{!"../kernel/irq/manage.c", i32 254, i32 25}
!15 = !{ptr @__ksymtab_irq_set_affinity, !16, !"__ksymtab_irq_set_affinity", i1 false, i1 false}
!16 = !{!"../kernel/irq/manage.c", i32 470, i32 1}
!17 = !{ptr @__ksymtab_irq_force_affinity, !18, !"__ksymtab_irq_force_affinity", i1 false, i1 false}
!18 = !{!"../kernel/irq/manage.c", i32 487, i32 1}
!19 = !{ptr @__ksymtab___irq_apply_affinity_hint, !20, !"__ksymtab___irq_apply_affinity_hint", i1 false, i1 false}
!20 = !{!"../kernel/irq/manage.c", i32 503, i32 1}
!21 = !{ptr @irq_set_affinity_notifier.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../kernel/irq/manage.c", i32 558, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_irq_set_affinity_notifier, !25, !"__ksymtab_irq_set_affinity_notifier", i1 false, i1 false}
!25 = !{!"../kernel/irq/manage.c", i32 576, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/irq/manage.c", i32 586, i32 9}
!28 = !{ptr @irq_setup_affinity.mask_lock, !27, !"mask_lock", i1 false, i1 false}
!29 = !{ptr @irq_setup_affinity.mask, !30, !"mask", i1 false, i1 false}
!30 = !{!"../kernel/irq/manage.c", i32 587, i32 24}
!31 = !{ptr @__ksymtab_irq_set_vcpu_affinity, !32, !"__ksymtab_irq_set_vcpu_affinity", i1 false, i1 false}
!32 = !{!"../kernel/irq/manage.c", i32 672, i32 1}
!33 = !{ptr @__ksymtab_disable_irq_nosync, !34, !"__ksymtab_disable_irq_nosync", i1 false, i1 false}
!34 = !{!"../kernel/irq/manage.c", i32 707, i32 1}
!35 = !{ptr @__ksymtab_disable_irq, !36, !"__ksymtab_disable_irq", i1 false, i1 false}
!36 = !{!"../kernel/irq/manage.c", i32 726, i32 1}
!37 = !{ptr @__ksymtab_disable_hardirq, !38, !"__ksymtab_disable_hardirq", i1 false, i1 false}
!38 = !{!"../kernel/irq/manage.c", i32 752, i32 1}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/irq/manage.c", i32 774, i32 3}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/irq/manage.c", i32 815, i32 6}
!43 = !{ptr @__ksymtab_enable_irq, !44, !"__ksymtab_enable_irq", i1 false, i1 false}
!44 = !{!"../kernel/irq/manage.c", i32 823, i32 1}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/irq/manage.c", i32 900, i32 4}
!47 = !{ptr @__ksymtab_irq_set_irq_wake, !48, !"__ksymtab_irq_set_irq_wake", i1 false, i1 false}
!48 = !{!"../kernel/irq/manage.c", i32 914, i32 1}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/irq/manage.c", i32 949, i32 3}
!51 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__irq_set_trigger.__UNIQUE_ID_ddebug228, !50, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!54 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/irq/manage.c", i32 986, i32 3}
!58 = !{ptr @__irq_set_trigger._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__irq_set_trigger._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_irq_set_parent, !61, !"__ksymtab_irq_set_parent", i1 false, i1 false}
!61 = !{!"../kernel/irq/manage.c", i32 1008, i32 1}
!62 = !{ptr @__ksymtab_irq_wake_thread, !63, !"__ksymtab_irq_wake_thread", i1 false, i1 false}
!63 = !{!"../kernel/irq/manage.c", i32 1322, i32 1}
!64 = !{ptr @__ksymtab_free_irq, !65, !"__ksymtab_free_irq", i1 false, i1 false}
!65 = !{!"../kernel/irq/manage.c", i32 2015, i32 1}
!66 = !{ptr @__ksymtab_request_threaded_irq, !67, !"__ksymtab_request_threaded_irq", i1 false, i1 false}
!67 = !{!"../kernel/irq/manage.c", i32 2201, i32 1}
!68 = !{ptr @__ksymtab_request_any_context_irq, !69, !"__ksymtab_request_any_context_irq", i1 false, i1 false}
!69 = !{!"../kernel/irq/manage.c", i32 2242, i32 1}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/irq/manage.c", i32 2363, i32 4}
!72 = !{ptr @__ksymtab_enable_percpu_irq, !73, !"__ksymtab_enable_percpu_irq", i1 false, i1 false}
!73 = !{!"../kernel/irq/manage.c", i32 2372, i32 1}
!74 = !{ptr @__ksymtab_irq_percpu_is_enabled, !75, !"__ksymtab_irq_percpu_is_enabled", i1 false, i1 false}
!75 = !{!"../kernel/irq/manage.c", i32 2402, i32 1}
!76 = !{ptr @__ksymtab_disable_percpu_irq, !77, !"__ksymtab_disable_percpu_irq", i1 false, i1 false}
!77 = !{!"../kernel/irq/manage.c", i32 2416, i32 1}
!78 = !{ptr @__ksymtab_free_percpu_irq, !79, !"__ksymtab_free_percpu_irq", i1 false, i1 false}
!79 = !{!"../kernel/irq/manage.c", i32 2507, i32 1}
!80 = !{ptr @__ksymtab___request_percpu_irq, !81, !"__ksymtab___request_percpu_irq", i1 false, i1 false}
!81 = !{!"../kernel/irq/manage.c", i32 2609, i32 1}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/irq/manage.c", i32 2713, i32 6}
!84 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/irq/manage.c", i32 2722, i32 3}
!86 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @prepare_percpu_nmi._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @prepare_percpu_nmi._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../kernel/irq/manage.c", i32 2771, i32 7}
!91 = !{ptr @__ksymtab_irq_get_irqchip_state, !92, !"__ksymtab_irq_get_irqchip_state", i1 false, i1 false}
!92 = !{!"../kernel/irq/manage.c", i32 2819, i32 1}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../kernel/irq/manage.c", i32 2850, i32 7}
!95 = !{ptr @__ksymtab_irq_set_irqchip_state, !96, !"__ksymtab_irq_set_irqchip_state", i1 false, i1 false}
!96 = !{!"../kernel/irq/manage.c", i32 2870, i32 1}
!97 = !{ptr @__ksymtab_irq_has_action, !98, !"__ksymtab_irq_has_action", i1 false, i1 false}
!98 = !{!"../kernel/irq/manage.c", i32 2887, i32 1}
!99 = !{ptr @__ksymtab_irq_check_status_bit, !100, !"__ksymtab_irq_check_status_bit", i1 false, i1 false}
!100 = !{!"../kernel/irq/manage.c", i32 2908, i32 1}
!101 = !{ptr @irq_default_affinity, !102, !"irq_default_affinity", i1 false, i1 false}
!102 = !{!"../kernel/irq/manage.c", i32 144, i32 15}
!103 = !{ptr @__setup_str_setup_forced_irqthreads, !3, !"__setup_str_setup_forced_irqthreads", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../kernel/irq/manage.c", i32 205, i32 2}
!106 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @irq_validate_effective_affinity._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @irq_validate_effective_affinity._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.19, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/irq/manage.c", i32 1846, i32 2}
!112 = !{ptr @.str.20, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/irq/manage.c", i32 1861, i32 4}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../kernel/irq/manage.c", i32 1887, i32 6}
!116 = !{ptr @.str.21, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/irq/manage.c", i32 1558, i32 4}
!118 = !{ptr @.str.22, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @__setup_irq._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @__setup_irq._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.24, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../kernel/irq/manage.c", i32 1585, i32 4}
!123 = !{ptr @__setup_irq._entry.23, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @__setup_irq._entry_ptr.25, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.27, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/irq/manage.c", i32 1679, i32 3}
!127 = !{ptr @__setup_irq._entry.26, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @__setup_irq._entry_ptr.28, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @__setup_irq.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../kernel/irq/manage.c", i32 1686, i32 3}
!131 = !{ptr @.str.29, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../kernel/irq/manage.c", i32 1745, i32 4}
!134 = !{ptr @.str.31, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/irq/manage.c", i32 1756, i32 4}
!136 = !{ptr @__setup_irq._entry.30, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @__setup_irq._entry_ptr.32, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.34, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/irq/manage.c", i32 1799, i32 3}
!140 = !{ptr @__setup_irq._entry.33, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @__setup_irq._entry_ptr.35, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/irq/manage.c", i32 1027, i32 2}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/irq/manage.c", i32 1033, i32 2}
!146 = !{ptr @.str.38, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/irq/manage.c", i32 1419, i32 7}
!148 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/irq/manage.c", i32 1422, i32 7}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../kernel/irq/manage.c", i32 1218, i32 6}
!152 = !{ptr @.str.40, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/irq/manage.c", i32 1223, i32 2}
!154 = !{ptr @.str.41, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @irq_thread_dtor._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @irq_thread_dtor._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../kernel/irq/manage.c", i32 1040, i32 3}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../kernel/irq/manage.c", i32 1046, i32 5}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../kernel/irq/manage.c", i32 1049, i32 4}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../kernel/irq/manage.c", i32 1055, i32 4}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../kernel/irq/manage.c", i32 1243, i32 6}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!169 = !{ptr @.str.45, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.46, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/irq/manage.c", i32 2446, i32 3}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!174 = !{ptr @.str.47, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.48, !173, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!178 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i64 2154130258}
!190 = !{i64 2154130100}
!191 = !{!"auto-init"}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i8 0, i8 2}
!194 = !{i64 2148598263, i64 2148598295, i64 2148598324, i64 2148598358, i64 2148598389, i64 2148598412}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2148686288}
!197 = !{i64 2148600728, i64 2148600760, i64 2148600789, i64 2148600823, i64 2148600854, i64 2148600877}
!198 = !{i64 2149957012}
!199 = !{i64 2148421331, i64 2148421336, i64 2148421349, i64 2148421393, i64 2148421427, i64 2148421448}
!200 = !{i64 1001413, i64 1001474}
!201 = !{i64 1004145}
!202 = !{i64 1004430}
!203 = !{i32 0, i32 33}
!204 = !{i64 2150006555}
!205 = !{i64 2150006821}
!206 = !{ptr @irq_forced_thread_fn, ptr @irq_thread_fn}
!207 = !{i64 2148685209}
!208 = !{i64 2148599918, i64 2148599950, i64 2148599979, i64 2148600013, i64 2148600044, i64 2148600067}
!209 = !{i64 2148685438}
!210 = !{i64 1001848}
!211 = !{i64 2148596733, i64 2148596759, i64 2148596788, i64 2148596822, i64 2148596853, i64 2148596876}
!212 = !{i64 1001658}
!213 = !{i64 2154177949}
!214 = !{i64 2154191939}
!215 = !{i64 2154191781}

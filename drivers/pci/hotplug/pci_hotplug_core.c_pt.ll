; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/pci_hotplug_core.c_pt.bc'
source_filename = "../drivers/pci/hotplug/pci_hotplug_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__pci_hp_register\22, \22a\22\09"
module asm "\09.weak\09__crc___pci_hp_register\09\09\09\09"
module asm "\09.long\09__crc___pci_hp_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_hp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_hp_register\22\09\09\09\09\09"
module asm "__kstrtabns___pci_hp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pci_hp_initialize\22, \22a\22\09"
module asm "\09.weak\09__crc___pci_hp_initialize\09\09\09\09"
module asm "\09.long\09__crc___pci_hp_initialize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_hp_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_hp_initialize\22\09\09\09\09\09"
module asm "__kstrtabns___pci_hp_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_add\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_add\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_add\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_deregister\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_del\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_del\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_del:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_del\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_destroy\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.pci_slot_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___pci_hp_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_hp_register = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_hp_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_hp_register to i32), ptr @__kstrtab___pci_hp_register, ptr @__kstrtabns___pci_hp_register }, section "___ksymtab_gpl+__pci_hp_register", align 4
@__kstrtab___pci_hp_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_hp_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_hp_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_hp_initialize to i32), ptr @__kstrtab___pci_hp_initialize, ptr @__kstrtabns___pci_hp_initialize }, section "___ksymtab_gpl+__pci_hp_initialize", align 4
@pci_hp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_hp_mutex, i64 52), ptr getelementptr (i8, ptr @pci_hp_mutex, i64 52) }, ptr @pci_hp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pci_hotplug_slot_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pci_hotplug_slot_list, ptr @pci_hotplug_slot_list }, [24 x i8] zeroinitializer }, align 32
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pci_hp_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: Added slot %s to the list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_hp_add\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/hotplug/pci_hotplug_core.c\00", [57 x i8] zeroinitializer }, align 32
@pci_hp_add._entry_ptr = internal global ptr @pci_hp_add._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_hotplug\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_pci_hp_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_add = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_add to i32), ptr @__kstrtab_pci_hp_add, ptr @__kstrtabns_pci_hp_add }, section "___ksymtab_gpl+pci_hp_add", align 4
@__kstrtab_pci_hp_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_deregister to i32), ptr @__kstrtab_pci_hp_deregister, ptr @__kstrtabns_pci_hp_deregister }, section "___ksymtab_gpl+pci_hp_deregister", align 4
@pci_hp_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: Removed slot %s from the list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_hp_del\00", [21 x i8] zeroinitializer }, align 32
@pci_hp_del._entry_ptr = internal global ptr @pci_hp_del._entry, section ".printk_index", align 4
@__kstrtab_pci_hp_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_del = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_del to i32), ptr @__kstrtab_pci_hp_del, ptr @__kstrtabns_pci_hp_del }, section "___ksymtab_gpl+pci_hp_del", align 4
@__kstrtab_pci_hp_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_destroy to i32), ptr @__kstrtab_pci_hp_destroy, ptr @__kstrtabns_pci_hp_destroy }, section "___ksymtab_gpl+pci_hp_destroy", align 4
@__initcall__kmod_pci_hotplug__252_573_pci_hotplug_init6 = internal global ptr @pci_hotplug_init, section ".initcall6.init", align 4
@__param_str_debug = internal constant [18 x i8] c"pci_hotplug.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype253 = internal constant [32 x i8] c"pci_hotplug.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug254 = internal constant [53 x i8] c"pci_hotplug.parm=debug:Debugging mode enabled or not\00", section ".modinfo", align 1
@hotplug_slot_attr_power = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.6, i16 -32348, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_read_file, ptr @power_write_file }, [36 x i8] zeroinitializer }, align 32
@hotplug_slot_attr_attention = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.13, i16 -32348, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attention_read_file, ptr @attention_write_file }, [36 x i8] zeroinitializer }, align 32
@hotplug_slot_attr_latch = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.16, i16 -32476, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @latch_read_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@hotplug_slot_attr_presence = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.17, i16 -32476, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @presence_read_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@hotplug_slot_attr_test = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.18, i16 -32348, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @test_write_file }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@power_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s: power = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power_write_file\00", [47 x i8] zeroinitializer }, align 32
@power_write_file._entry_ptr = internal global ptr @power_write_file._entry, section ".printk_index", align 4
@power_write_file._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Illegal value specified for power\0A\00", [55 x i8] zeroinitializer }, align 32
@power_write_file._entry_ptr.12 = internal global ptr @power_write_file._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"attention\00", [22 x i8] zeroinitializer }, align 32
@attention_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s:  - attention = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"attention_write_file\00", [43 x i8] zeroinitializer }, align 32
@attention_write_file._entry_ptr = internal global ptr @attention_write_file._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"latch\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adapter\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@test_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: test = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_write_file\00", [16 x i8] zeroinitializer }, align 32
@test_write_file._entry_ptr = internal global ptr @test_write_file._entry, section ".printk_index", align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_hp_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_hp_mutex\00", [19 x i8] zeroinitializer }, align 32
@pci_hotplug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: cpci_hotplug_init with error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_hotplug_init\00", [47 x i8] zeroinitializer }, align 32
@pci_hotplug_init._entry_ptr = internal global ptr @pci_hotplug_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"pci_hp_mutex\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"pci_hotplug_slot_list\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 45, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 43, i32 13 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 490, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 535, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"hotplug_slot_attr_power\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 118, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [28 x i8] c"hotplug_slot_attr_attention\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 163, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"hotplug_slot_attr_latch\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 181, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"hotplug_slot_attr_presence\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 198, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"hotplug_slot_attr_test\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 229, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 119, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 76, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 89, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 107, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 164, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 147, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 182, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 199, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 230, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 213, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 46, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [42 x i8] c"../drivers/pci/hotplug/pci_hotplug_core.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 567, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_debug254, ptr @__UNIQUE_ID_debugtype253, ptr @__initcall__kmod_pci_hotplug__252_573_pci_hotplug_init6, ptr @__ksymtab___pci_hp_initialize, ptr @__ksymtab___pci_hp_register, ptr @__ksymtab_pci_hp_add, ptr @__ksymtab_pci_hp_del, ptr @__ksymtab_pci_hp_deregister, ptr @__ksymtab_pci_hp_destroy, ptr @__param_debug, ptr @attention_write_file._entry, ptr @attention_write_file._entry_ptr, ptr @pci_hotplug_init._entry, ptr @pci_hotplug_init._entry_ptr, ptr @pci_hp_add._entry, ptr @pci_hp_add._entry_ptr, ptr @pci_hp_del._entry, ptr @pci_hp_del._entry_ptr, ptr @power_write_file._entry, ptr @power_write_file._entry.10, ptr @power_write_file._entry_ptr, ptr @power_write_file._entry_ptr.12, ptr @test_write_file._entry, ptr @test_write_file._entry_ptr, ptr @pci_hp_mutex, ptr @pci_hotplug_slot_list, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hotplug_slot_attr_power, ptr @hotplug_slot_attr_attention, ptr @hotplug_slot_attr_latch, ptr @hotplug_slot_attr_presence, ptr @hotplug_slot_attr_test, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hotplug_slot_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hp_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hp_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_slot_attr_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_slot_attr_attention to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_slot_attr_latch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_slot_attr_presence to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_slot_attr_test to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_write_file._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attention_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hotplug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pci_hp_register(ptr noundef %slot, ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %slot, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %owner4.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 3
  %2 = ptrtoint ptr %owner4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %owner, ptr %owner4.i, align 4
  %mod_name5.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 4
  %3 = ptrtoint ptr %mod_name5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mod_name, ptr %mod_name5.i, align 4
  %call.i = tail call ptr @pci_create_slot(ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef nonnull %slot) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__pci_hp_initialize.exit, label %__pci_hp_initialize.exit.thread13

__pci_hp_initialize.exit.thread13:                ; preds = %if.end3.i
  %pci_slot10.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %4 = ptrtoint ptr %pci_slot10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %pci_slot10.i, align 4
  %hotplug.i = getelementptr inbounds %struct.pci_slot, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %hotplug.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %slot, ptr %hotplug.i, align 4
  %call1 = tail call i32 @pci_hp_add(ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %__pci_hp_initialize.exit.thread13.cleanup_crit_edge, label %if.then3

__pci_hp_initialize.exit.thread13.cleanup_crit_edge: ; preds = %__pci_hp_initialize.exit.thread13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__pci_hp_initialize.exit:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.then3:                                         ; preds = %__pci_hp_initialize.exit.thread13
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pci_slot10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_slot10.i, align 4
  store ptr null, ptr %pci_slot10.i, align 4
  %hotplug.i10 = getelementptr inbounds %struct.pci_slot, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hotplug.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %hotplug.i10, align 4
  tail call void @pci_destroy_slot(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %__pci_hp_initialize.exit, %__pci_hp_initialize.exit.thread13.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %__pci_hp_initialize.exit ], [ %call1, %if.then3 ], [ 0, %__pci_hp_initialize.exit.thread13.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pci_hp_initialize(ptr noundef %slot, ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %slot, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %owner4 = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 3
  %2 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %owner, ptr %owner4, align 4
  %mod_name5 = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 4
  %3 = ptrtoint ptr %mod_name5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mod_name, ptr %mod_name5, align 4
  %call = tail call ptr @pci_create_slot(ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef nonnull %slot) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %pci_slot10 = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %5 = ptrtoint ptr %pci_slot10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %pci_slot10, align 4
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %hotplug to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slot, ptr %hotplug, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ 0, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_hp_add(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %pci_slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_slot1, align 4
  tail call void @pci_hp_create_module_link(ptr noundef %1) #6
  %hotplug.i.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i
  %disable_slot.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %disable_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_slot.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i.i, label %has_power_file.exit.i, label %lor.lhs.false4.i.i.if.then.i_crit_edge

lor.lhs.false4.i.i.if.then.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

has_power_file.exit.i:                            ; preds = %lor.lhs.false4.i.i
  %get_power_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %get_power_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_power_status.i.i, align 4
  %tobool9.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i.not.i, label %has_power_file.exit.i.if.end4.i_crit_edge, label %has_power_file.exit.i.if.then.i_crit_edge

has_power_file.exit.i.if.then.i_crit_edge:        ; preds = %has_power_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

has_power_file.exit.i.if.end4.i_crit_edge:        ; preds = %has_power_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %has_power_file.exit.i.if.then.i_crit_edge, %lor.lhs.false4.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %kobj.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj.i, ptr noundef nonnull @hotplug_slot_attr_power, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.fs_add_slot.exit_crit_edge

if.then.i.fs_add_slot.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %has_power_file.exit.i.if.end4.i_crit_edge
  %12 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i78.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i78.i, label %if.end4.i.if.end_crit_edge, label %lor.lhs.false.i80.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i80.i:                              ; preds = %if.end4.i
  %13 = ptrtoint ptr %.pr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr177.i = load ptr, ptr %.pr.i, align 4
  %tobool1.not.i79.i = icmp eq ptr %.pr177.i, null
  br i1 %tobool1.not.i79.i, label %lor.lhs.false.i80.i.if.end_crit_edge, label %if.end.i82.i

lor.lhs.false.i80.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i82.i:                                     ; preds = %lor.lhs.false.i80.i
  %set_attention_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr177.i, i32 0, i32 2
  %14 = ptrtoint ptr %set_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_attention_status.i.i, align 4
  %tobool3.not.i81.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i81.i, label %has_attention_file.exit.i, label %if.end.i82.i.if.then6.i_crit_edge

if.end.i82.i.if.then6.i_crit_edge:                ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

has_attention_file.exit.i:                        ; preds = %if.end.i82.i
  %get_attention_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr177.i, i32 0, i32 5
  %16 = ptrtoint ptr %get_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_attention_status.i.i, align 4
  %tobool6.not.i83.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i83.not.i, label %has_attention_file.exit.i.if.end12.i_crit_edge, label %has_attention_file.exit.i.if.then6.i_crit_edge

has_attention_file.exit.i.if.then6.i_crit_edge:   ; preds = %has_attention_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

has_attention_file.exit.i.if.end12.i_crit_edge:   ; preds = %has_attention_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then6.i:                                       ; preds = %has_attention_file.exit.i.if.then6.i_crit_edge, %if.end.i82.i.if.then6.i_crit_edge
  %kobj7.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call.i86.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj7.i, ptr noundef nonnull @hotplug_slot_attr_attention, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool9.not.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then6.i.exit_attention.i_crit_edge

if.then6.i.exit_attention.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_attention.i

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then6.i.if.end12.i_crit_edge, %has_attention_file.exit.i.if.end12.i_crit_edge
  %18 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr179.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i88.i = icmp eq ptr %.pr179.pr.i, null
  br i1 %tobool.not.i88.i, label %if.end12.i.if.end_crit_edge, label %lor.lhs.false.i90.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i90.i:                              ; preds = %if.end12.i
  %19 = ptrtoint ptr %.pr179.pr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr183.pr.i = load ptr, ptr %.pr179.pr.i, align 4
  %tobool1.not.i89.i = icmp eq ptr %.pr183.pr.i, null
  br i1 %tobool1.not.i89.i, label %lor.lhs.false.i90.i.if.end_crit_edge, label %has_latch_file.exit.i

lor.lhs.false.i90.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

has_latch_file.exit.i:                            ; preds = %lor.lhs.false.i90.i
  %get_latch_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr183.pr.i, i32 0, i32 6
  %20 = ptrtoint ptr %get_latch_status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_latch_status.i.i, align 4
  %tobool3.not.i91.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i91.not.i, label %has_latch_file.exit.i.if.end20.i_crit_edge, label %if.then14.i

has_latch_file.exit.i.if.end20.i_crit_edge:       ; preds = %has_latch_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then14.i:                                      ; preds = %has_latch_file.exit.i
  %kobj15.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call.i94.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj15.i, ptr noundef nonnull @hotplug_slot_attr_latch, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool17.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.exit_latch.i_crit_edge

if.then14.i.exit_latch.i_crit_edge:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_latch.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %has_latch_file.exit.i.if.end20.i_crit_edge
  %22 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr185.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i96.i = icmp eq ptr %.pr185.pr.i, null
  br i1 %tobool.not.i96.i, label %if.end20.i.if.end_crit_edge, label %lor.lhs.false.i98.i

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i98.i:                              ; preds = %if.end20.i
  %23 = ptrtoint ptr %.pr185.pr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr189.pr.i = load ptr, ptr %.pr185.pr.i, align 4
  %tobool1.not.i97.i = icmp eq ptr %.pr189.pr.i, null
  br i1 %tobool1.not.i97.i, label %lor.lhs.false.i98.i.if.end_crit_edge, label %has_adapter_file.exit.i

lor.lhs.false.i98.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

has_adapter_file.exit.i:                          ; preds = %lor.lhs.false.i98.i
  %get_adapter_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr189.pr.i, i32 0, i32 7
  %24 = ptrtoint ptr %get_adapter_status.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_adapter_status.i.i, align 4
  %tobool3.not.i99.not.i = icmp eq ptr %25, null
  br i1 %tobool3.not.i99.not.i, label %has_adapter_file.exit.i.if.end28.i_crit_edge, label %if.then22.i

has_adapter_file.exit.i.if.end28.i_crit_edge:     ; preds = %has_adapter_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then22.i:                                      ; preds = %has_adapter_file.exit.i
  %kobj23.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call.i102.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj23.i, ptr noundef nonnull @hotplug_slot_attr_presence, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool25.not.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool25.not.i, label %if.then22.i.if.end28.i_crit_edge, label %if.then22.i.exit_adapter.i_crit_edge

if.then22.i.exit_adapter.i_crit_edge:             ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_adapter.i

if.then22.i.if.end28.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i.if.end28.i_crit_edge, %has_adapter_file.exit.i.if.end28.i_crit_edge
  %26 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr191.pr.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i104.i = icmp eq ptr %.pr191.pr.pr.i, null
  br i1 %tobool.not.i104.i, label %if.end28.i.if.end_crit_edge, label %lor.lhs.false.i106.i

if.end28.i.if.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i106.i:                             ; preds = %if.end28.i
  %27 = ptrtoint ptr %.pr191.pr.pr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr195.pr.pr.i = load ptr, ptr %.pr191.pr.pr.i, align 4
  %tobool1.not.i105.i = icmp eq ptr %.pr195.pr.pr.i, null
  br i1 %tobool1.not.i105.i, label %lor.lhs.false.i106.i.if.end_crit_edge, label %has_test_file.exit.i

lor.lhs.false.i106.i.if.end_crit_edge:            ; preds = %lor.lhs.false.i106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

has_test_file.exit.i:                             ; preds = %lor.lhs.false.i106.i
  %hardware_test.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr195.pr.pr.i, i32 0, i32 3
  %28 = ptrtoint ptr %hardware_test.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hardware_test.i.i, align 4
  %tobool3.not.i107.not.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i107.not.i, label %has_test_file.exit.i.if.end_crit_edge, label %if.then30.i

has_test_file.exit.i.if.end_crit_edge:            ; preds = %has_test_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then30.i:                                      ; preds = %has_test_file.exit.i
  %kobj31.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call.i110.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj31.i, ptr noundef nonnull @hotplug_slot_attr_test, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %tobool33.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.end_crit_edge, label %exit_test.i

if.then30.i.if.end_crit_edge:                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

exit_test.i:                                      ; preds = %if.then30.i
  %30 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i112.i = icmp eq ptr %31, null
  br i1 %tobool.not.i112.i, label %exit_test.i.fs_add_slot.exit_crit_edge, label %lor.lhs.false.i114.i

exit_test.i.fs_add_slot.exit_crit_edge:           ; preds = %exit_test.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

lor.lhs.false.i114.i:                             ; preds = %exit_test.i
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool1.not.i113.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i113.i, label %lor.lhs.false.i114.i.fs_add_slot.exit_crit_edge, label %has_adapter_file.exit119.i

lor.lhs.false.i114.i.fs_add_slot.exit_crit_edge:  ; preds = %lor.lhs.false.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

has_adapter_file.exit119.i:                       ; preds = %lor.lhs.false.i114.i
  %get_adapter_status.i115.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %get_adapter_status.i115.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_adapter_status.i115.i, align 4
  %tobool3.not.i116.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i116.not.i, label %has_adapter_file.exit119.i.exit_adapter.i_crit_edge, label %if.then38.i

has_adapter_file.exit119.i.exit_adapter.i_crit_edge: ; preds = %has_adapter_file.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_adapter.i

if.then38.i:                                      ; preds = %has_adapter_file.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj31.i, ptr noundef nonnull @hotplug_slot_attr_presence, ptr noundef null) #6
  br label %exit_adapter.i

exit_adapter.i:                                   ; preds = %if.then38.i, %has_adapter_file.exit119.i.exit_adapter.i_crit_edge, %if.then22.i.exit_adapter.i_crit_edge
  %retval1.4.ph.i = phi i32 [ %call.i110.i, %has_adapter_file.exit119.i.exit_adapter.i_crit_edge ], [ %call.i110.i, %if.then38.i ], [ %call.i102.i, %if.then22.i.exit_adapter.i_crit_edge ]
  %36 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr197.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i121.i = icmp eq ptr %.pr197.i, null
  br i1 %tobool.not.i121.i, label %exit_adapter.i.fs_add_slot.exit_crit_edge, label %lor.lhs.false.i123.i

exit_adapter.i.fs_add_slot.exit_crit_edge:        ; preds = %exit_adapter.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

lor.lhs.false.i123.i:                             ; preds = %exit_adapter.i
  %37 = ptrtoint ptr %.pr197.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr205.i = load ptr, ptr %.pr197.i, align 4
  %tobool1.not.i122.i = icmp eq ptr %.pr205.i, null
  br i1 %tobool1.not.i122.i, label %lor.lhs.false.i123.i.fs_add_slot.exit_crit_edge, label %has_latch_file.exit128.i

lor.lhs.false.i123.i.fs_add_slot.exit_crit_edge:  ; preds = %lor.lhs.false.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

has_latch_file.exit128.i:                         ; preds = %lor.lhs.false.i123.i
  %get_latch_status.i124.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr205.i, i32 0, i32 6
  %38 = ptrtoint ptr %get_latch_status.i124.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_latch_status.i124.i, align 4
  %tobool3.not.i125.not.i = icmp eq ptr %39, null
  br i1 %tobool3.not.i125.not.i, label %has_latch_file.exit128.i.exit_latch.i_crit_edge, label %if.then42.i

has_latch_file.exit128.i.exit_latch.i_crit_edge:  ; preds = %has_latch_file.exit128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_latch.i

if.then42.i:                                      ; preds = %has_latch_file.exit128.i
  call void @__sanitizer_cov_trace_pc() #8
  %kobj43.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj43.i, ptr noundef nonnull @hotplug_slot_attr_latch, ptr noundef null) #6
  br label %exit_latch.i

exit_latch.i:                                     ; preds = %if.then42.i, %has_latch_file.exit128.i.exit_latch.i_crit_edge, %if.then14.i.exit_latch.i_crit_edge
  %retval1.5.ph.ph.i = phi i32 [ %call.i94.i, %if.then14.i.exit_latch.i_crit_edge ], [ %retval1.4.ph.i, %if.then42.i ], [ %retval1.4.ph.i, %has_latch_file.exit128.i.exit_latch.i_crit_edge ]
  %40 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr208.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i130.i = icmp eq ptr %.pr208.pr.i, null
  br i1 %tobool.not.i130.i, label %exit_latch.i.fs_add_slot.exit_crit_edge, label %lor.lhs.false.i132.i

exit_latch.i.fs_add_slot.exit_crit_edge:          ; preds = %exit_latch.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

lor.lhs.false.i132.i:                             ; preds = %exit_latch.i
  %41 = ptrtoint ptr %.pr208.pr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr217.pr.i = load ptr, ptr %.pr208.pr.i, align 4
  %tobool1.not.i131.i = icmp eq ptr %.pr217.pr.i, null
  br i1 %tobool1.not.i131.i, label %lor.lhs.false.i132.i.fs_add_slot.exit_crit_edge, label %if.end.i135.i

lor.lhs.false.i132.i.fs_add_slot.exit_crit_edge:  ; preds = %lor.lhs.false.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

if.end.i135.i:                                    ; preds = %lor.lhs.false.i132.i
  %set_attention_status.i133.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr217.pr.i, i32 0, i32 2
  %42 = ptrtoint ptr %set_attention_status.i133.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_attention_status.i133.i, align 4
  %tobool3.not.i134.i = icmp eq ptr %43, null
  br i1 %tobool3.not.i134.i, label %has_attention_file.exit140.i, label %if.end.i135.i.if.then46.i_crit_edge

if.end.i135.i.if.then46.i_crit_edge:              ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

has_attention_file.exit140.i:                     ; preds = %if.end.i135.i
  %get_attention_status.i136.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr217.pr.i, i32 0, i32 5
  %44 = ptrtoint ptr %get_attention_status.i136.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_attention_status.i136.i, align 4
  %tobool6.not.i137.not.i = icmp eq ptr %45, null
  br i1 %tobool6.not.i137.not.i, label %has_attention_file.exit140.i.exit_attention.i_crit_edge, label %has_attention_file.exit140.i.if.then46.i_crit_edge

has_attention_file.exit140.i.if.then46.i_crit_edge: ; preds = %has_attention_file.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

has_attention_file.exit140.i.exit_attention.i_crit_edge: ; preds = %has_attention_file.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_attention.i

if.then46.i:                                      ; preds = %has_attention_file.exit140.i.if.then46.i_crit_edge, %if.end.i135.i.if.then46.i_crit_edge
  %kobj47.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj47.i, ptr noundef nonnull @hotplug_slot_attr_attention, ptr noundef null) #6
  br label %exit_attention.i

exit_attention.i:                                 ; preds = %if.then46.i, %has_attention_file.exit140.i.exit_attention.i_crit_edge, %if.then6.i.exit_attention.i_crit_edge
  %retval1.6.ph.ph.i = phi i32 [ %call.i86.i, %if.then6.i.exit_attention.i_crit_edge ], [ %retval1.5.ph.ph.i, %if.then46.i ], [ %retval1.5.ph.ph.i, %has_attention_file.exit140.i.exit_attention.i_crit_edge ]
  %46 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr220.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i142.i = icmp eq ptr %.pr220.pr.i, null
  br i1 %tobool.not.i142.i, label %exit_attention.i.fs_add_slot.exit_crit_edge, label %lor.lhs.false.i144.i

exit_attention.i.fs_add_slot.exit_crit_edge:      ; preds = %exit_attention.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

lor.lhs.false.i144.i:                             ; preds = %exit_attention.i
  %47 = ptrtoint ptr %.pr220.pr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr228.pr.i = load ptr, ptr %.pr220.pr.i, align 4
  %tobool1.not.i143.i = icmp eq ptr %.pr228.pr.i, null
  br i1 %tobool1.not.i143.i, label %lor.lhs.false.i144.i.fs_add_slot.exit_crit_edge, label %if.end.i146.i

lor.lhs.false.i144.i.fs_add_slot.exit_crit_edge:  ; preds = %lor.lhs.false.i144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

if.end.i146.i:                                    ; preds = %lor.lhs.false.i144.i
  %48 = ptrtoint ptr %.pr228.pr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %.pr228.pr.i, align 4
  %tobool3.not.i145.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i145.i, label %lor.lhs.false4.i149.i, label %if.end.i146.i.if.then50.i_crit_edge

if.end.i146.i.if.then50.i_crit_edge:              ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

lor.lhs.false4.i149.i:                            ; preds = %if.end.i146.i
  %disable_slot.i147.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr228.pr.i, i32 0, i32 1
  %50 = ptrtoint ptr %disable_slot.i147.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disable_slot.i147.i, align 4
  %tobool6.not.i148.i = icmp eq ptr %51, null
  br i1 %tobool6.not.i148.i, label %has_power_file.exit154.i, label %lor.lhs.false4.i149.i.if.then50.i_crit_edge

lor.lhs.false4.i149.i.if.then50.i_crit_edge:      ; preds = %lor.lhs.false4.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

has_power_file.exit154.i:                         ; preds = %lor.lhs.false4.i149.i
  %get_power_status.i150.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr228.pr.i, i32 0, i32 4
  %52 = ptrtoint ptr %get_power_status.i150.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_power_status.i150.i, align 4
  %tobool9.not.i151.not.i = icmp eq ptr %53, null
  br i1 %tobool9.not.i151.not.i, label %has_power_file.exit154.i.fs_add_slot.exit_crit_edge, label %has_power_file.exit154.i.if.then50.i_crit_edge

has_power_file.exit154.i.if.then50.i_crit_edge:   ; preds = %has_power_file.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

has_power_file.exit154.i.fs_add_slot.exit_crit_edge: ; preds = %has_power_file.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_add_slot.exit

if.then50.i:                                      ; preds = %has_power_file.exit154.i.if.then50.i_crit_edge, %lor.lhs.false4.i149.i.if.then50.i_crit_edge, %if.end.i146.i.if.then50.i_crit_edge
  %kobj51.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj51.i, ptr noundef nonnull @hotplug_slot_attr_power, ptr noundef null) #6
  br label %fs_add_slot.exit

fs_add_slot.exit:                                 ; preds = %if.then50.i, %has_power_file.exit154.i.fs_add_slot.exit_crit_edge, %lor.lhs.false.i144.i.fs_add_slot.exit_crit_edge, %exit_attention.i.fs_add_slot.exit_crit_edge, %lor.lhs.false.i132.i.fs_add_slot.exit_crit_edge, %exit_latch.i.fs_add_slot.exit_crit_edge, %lor.lhs.false.i123.i.fs_add_slot.exit_crit_edge, %exit_adapter.i.fs_add_slot.exit_crit_edge, %lor.lhs.false.i114.i.fs_add_slot.exit_crit_edge, %exit_test.i.fs_add_slot.exit_crit_edge, %if.then.i.fs_add_slot.exit_crit_edge
  %retval1.7.i = phi i32 [ %call.i.i, %if.then.i.fs_add_slot.exit_crit_edge ], [ %retval1.6.ph.ph.i, %if.then50.i ], [ %retval1.6.ph.ph.i, %has_power_file.exit154.i.fs_add_slot.exit_crit_edge ], [ %retval1.6.ph.ph.i, %exit_attention.i.fs_add_slot.exit_crit_edge ], [ %retval1.6.ph.ph.i, %lor.lhs.false.i144.i.fs_add_slot.exit_crit_edge ], [ %retval1.5.ph.ph.i, %exit_latch.i.fs_add_slot.exit_crit_edge ], [ %retval1.5.ph.ph.i, %lor.lhs.false.i132.i.fs_add_slot.exit_crit_edge ], [ %call.i110.i, %lor.lhs.false.i114.i.fs_add_slot.exit_crit_edge ], [ %retval1.4.ph.i, %lor.lhs.false.i123.i.fs_add_slot.exit_crit_edge ], [ %call.i110.i, %exit_test.i.fs_add_slot.exit_crit_edge ], [ %retval1.4.ph.i, %exit_adapter.i.fs_add_slot.exit_crit_edge ]
  tail call void @pci_hp_remove_module_link(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %if.then30.i.if.end_crit_edge, %has_test_file.exit.i.if.end_crit_edge, %lor.lhs.false.i106.i.if.end_crit_edge, %if.end28.i.if.end_crit_edge, %lor.lhs.false.i98.i.if.end_crit_edge, %if.end20.i.if.end_crit_edge, %lor.lhs.false.i90.i.if.end_crit_edge, %if.end12.i.if.end_crit_edge, %lor.lhs.false.i80.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_hp_mutex, i32 noundef 0) #6
  %slot_list = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 1
  %54 = load ptr, ptr @pci_hotplug_slot_list, align 4
  %call.i.i16 = tail call zeroext i1 @__list_add_valid(ptr noundef %slot_list, ptr noundef nonnull @pci_hotplug_slot_list, ptr noundef %54) #6
  br i1 %call.i.i16, label %if.end.i.i17, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %slot_list, ptr %prev1.i.i, align 4
  %56 = ptrtoint ptr %slot_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %slot_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pci_hotplug_slot_list, ptr %prev3.i.i, align 4
  store volatile ptr %slot_list, ptr @pci_hotplug_slot_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i17, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pci_hp_mutex) #6
  %58 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool3.not = icmp eq i8 %58, 0
  br i1 %tobool3.not, label %list_add.exit.cleanup_crit_edge, label %do.end

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %pci_slot1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_slot1, align 4
  %kobj.i.i = getelementptr inbounds %struct.pci_slot, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %kobj.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %kobj.i.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %62) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add.exit.cleanup_crit_edge, %fs_add_slot.exit
  %retval.0 = phi i32 [ %retval1.7.i, %fs_add_slot.exit ], [ 0, %do.end ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_hp_destroy(ptr nocapture noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %pci_slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_slot1, align 4
  store ptr null, ptr %pci_slot1, align 4
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hotplug to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hotplug, align 4
  tail call void @pci_destroy_slot(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_create_slot(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_hp_deregister(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_hp_del(ptr noundef %slot)
  %pci_slot1.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %pci_slot1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_slot1.i, align 4
  store ptr null, ptr %pci_slot1.i, align 4
  %hotplug.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hotplug.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hotplug.i, align 4
  tail call void @pci_destroy_slot(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_hp_del(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %slot, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !96

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 523, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_hp_mutex, i32 noundef 0) #6
  %pci_slot.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_slot.i, align 4
  %kobj.i.i = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %kobj.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kobj.i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end23
  %.pn.in.i = phi ptr [ @pci_hotplug_slot_list, %if.end23 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pci_hotplug_slot_list
  br i1 %cmp.not.i, label %for.cond.i.get_slot_from_name.exit_crit_edge, label %for.body.i

for.cond.i.get_slot_from_name.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_slot_from_name.exit

for.body.i:                                       ; preds = %for.cond.i
  %pci_slot.i.i = getelementptr i8, ptr %.pn.i, i32 8
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  %call1.i = tail call i32 @strcmp(ptr noundef %8, ptr noundef %3) #10
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %cleanup.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

cleanup.split.loop.exit10.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %get_slot_from_name.exit

get_slot_from_name.exit:                          ; preds = %cleanup.split.loop.exit10.i, %for.cond.i.get_slot_from_name.exit_crit_edge
  %retval.0.i = phi ptr [ %slot.0.le.i, %cleanup.split.loop.exit10.i ], [ null, %for.cond.i.get_slot_from_name.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %slot
  br i1 %cmp.not, label %if.end57, label %do.end41, !prof !97

do.end41:                                         ; preds = %get_slot_from_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef nonnull @pci_hp_mutex) #6
  br label %cleanup

if.end57:                                         ; preds = %get_slot_from_name.exit
  %slot_list = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %slot_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end57.list_del.exit_crit_edge

if.end57.list_del.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %slot_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slot_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end57.list_del.exit_crit_edge
  %15 = ptrtoint ptr %slot_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %slot_list, align 4
  %prev.i = getelementptr inbounds %struct.hotplug_slot, ptr %slot, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pci_hp_mutex) #6
  %17 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool59.not = icmp eq i8 %17, 0
  br i1 %tobool59.not, label %list_del.exit.do.end69_crit_edge, label %do.end63

list_del.exit.do.end69_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

do.end63:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_slot.i, align 4
  %kobj.i.i78 = getelementptr inbounds %struct.pci_slot, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %kobj.i.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kobj.i.i78, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %21) #9
  br label %do.end69

do.end69:                                         ; preds = %do.end63, %list_del.exit.do.end69_crit_edge
  %22 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_slot.i, align 4
  %hotplug.i.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %do.end69.fs_remove_slot.exit_crit_edge, label %lor.lhs.false.i.i

do.end69.fs_remove_slot.exit_crit_edge:           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

lor.lhs.false.i.i:                                ; preds = %do.end69
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool1.not.i.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.fs_remove_slot.exit_crit_edge, label %if.end.i.i79

lor.lhs.false.i.i.fs_remove_slot.exit_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

if.end.i.i79:                                     ; preds = %lor.lhs.false.i.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool3.not.i.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %if.end.i.i79.if.then.i_crit_edge

if.end.i.i79.if.then.i_crit_edge:                 ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i79
  %disable_slot.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %disable_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disable_slot.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %31, null
  br i1 %tobool6.not.i.i, label %has_power_file.exit.i, label %lor.lhs.false4.i.i.if.then.i_crit_edge

lor.lhs.false4.i.i.if.then.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

has_power_file.exit.i:                            ; preds = %lor.lhs.false4.i.i
  %get_power_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %get_power_status.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_power_status.i.i, align 4
  %tobool9.not.i.not.i = icmp eq ptr %33, null
  br i1 %tobool9.not.i.not.i, label %has_power_file.exit.i.if.end.i_crit_edge, label %has_power_file.exit.i.if.then.i_crit_edge

has_power_file.exit.i.if.then.i_crit_edge:        ; preds = %has_power_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

has_power_file.exit.i.if.end.i_crit_edge:         ; preds = %has_power_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %has_power_file.exit.i.if.then.i_crit_edge, %lor.lhs.false4.i.i.if.then.i_crit_edge, %if.end.i.i79.if.then.i_crit_edge
  %kobj.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj.i, ptr noundef nonnull @hotplug_slot_attr_power, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %has_power_file.exit.i.if.end.i_crit_edge
  %34 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i28.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i28.i, label %if.end.i.fs_remove_slot.exit_crit_edge, label %lor.lhs.false.i30.i

if.end.i.fs_remove_slot.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

lor.lhs.false.i30.i:                              ; preds = %if.end.i
  %35 = ptrtoint ptr %.pr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr70.i = load ptr, ptr %.pr.i, align 4
  %tobool1.not.i29.i = icmp eq ptr %.pr70.i, null
  br i1 %tobool1.not.i29.i, label %lor.lhs.false.i30.i.fs_remove_slot.exit_crit_edge, label %if.end.i32.i

lor.lhs.false.i30.i.fs_remove_slot.exit_crit_edge: ; preds = %lor.lhs.false.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

if.end.i32.i:                                     ; preds = %lor.lhs.false.i30.i
  %set_attention_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr70.i, i32 0, i32 2
  %36 = ptrtoint ptr %set_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_attention_status.i.i, align 4
  %tobool3.not.i31.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i31.i, label %has_attention_file.exit.i, label %if.end.i32.i.if.then2.i_crit_edge

if.end.i32.i.if.then2.i_crit_edge:                ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

has_attention_file.exit.i:                        ; preds = %if.end.i32.i
  %get_attention_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr70.i, i32 0, i32 5
  %38 = ptrtoint ptr %get_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_attention_status.i.i, align 4
  %tobool6.not.i33.not.i = icmp eq ptr %39, null
  br i1 %tobool6.not.i33.not.i, label %has_attention_file.exit.i.if.end4.i_crit_edge, label %has_attention_file.exit.i.if.then2.i_crit_edge

has_attention_file.exit.i.if.then2.i_crit_edge:   ; preds = %has_attention_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

has_attention_file.exit.i.if.end4.i_crit_edge:    ; preds = %has_attention_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %has_attention_file.exit.i.if.then2.i_crit_edge, %if.end.i32.i.if.then2.i_crit_edge
  %kobj3.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj3.i, ptr noundef nonnull @hotplug_slot_attr_attention, ptr noundef null) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %has_attention_file.exit.i.if.end4.i_crit_edge
  %40 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr72.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i37.i = icmp eq ptr %.pr72.pr.i, null
  br i1 %tobool.not.i37.i, label %if.end4.i.fs_remove_slot.exit_crit_edge, label %lor.lhs.false.i39.i

if.end4.i.fs_remove_slot.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

lor.lhs.false.i39.i:                              ; preds = %if.end4.i
  %41 = ptrtoint ptr %.pr72.pr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr76.pr.i = load ptr, ptr %.pr72.pr.i, align 4
  %tobool1.not.i38.i = icmp eq ptr %.pr76.pr.i, null
  br i1 %tobool1.not.i38.i, label %lor.lhs.false.i39.i.fs_remove_slot.exit_crit_edge, label %has_latch_file.exit.i

lor.lhs.false.i39.i.fs_remove_slot.exit_crit_edge: ; preds = %lor.lhs.false.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

has_latch_file.exit.i:                            ; preds = %lor.lhs.false.i39.i
  %get_latch_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr76.pr.i, i32 0, i32 6
  %42 = ptrtoint ptr %get_latch_status.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_latch_status.i.i, align 4
  %tobool3.not.i40.not.i = icmp eq ptr %43, null
  br i1 %tobool3.not.i40.not.i, label %has_latch_file.exit.i.if.end8.i_crit_edge, label %if.then6.i

has_latch_file.exit.i.if.end8.i_crit_edge:        ; preds = %has_latch_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %has_latch_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %kobj7.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj7.i, ptr noundef nonnull @hotplug_slot_attr_latch, ptr noundef null) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %has_latch_file.exit.i.if.end8.i_crit_edge
  %44 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr78.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %.pr78.pr.i, null
  br i1 %tobool.not.i44.i, label %if.end8.i.fs_remove_slot.exit_crit_edge, label %lor.lhs.false.i46.i

if.end8.i.fs_remove_slot.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

lor.lhs.false.i46.i:                              ; preds = %if.end8.i
  %45 = ptrtoint ptr %.pr78.pr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr82.pr.i = load ptr, ptr %.pr78.pr.i, align 4
  %tobool1.not.i45.i = icmp eq ptr %.pr82.pr.i, null
  br i1 %tobool1.not.i45.i, label %lor.lhs.false.i46.i.fs_remove_slot.exit_crit_edge, label %has_adapter_file.exit.i

lor.lhs.false.i46.i.fs_remove_slot.exit_crit_edge: ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

has_adapter_file.exit.i:                          ; preds = %lor.lhs.false.i46.i
  %get_adapter_status.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr82.pr.i, i32 0, i32 7
  %46 = ptrtoint ptr %get_adapter_status.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_adapter_status.i.i, align 4
  %tobool3.not.i47.not.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i47.not.i, label %has_adapter_file.exit.i.if.end12.i_crit_edge, label %if.then10.i

has_adapter_file.exit.i.if.end12.i_crit_edge:     ; preds = %has_adapter_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %has_adapter_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %kobj11.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj11.i, ptr noundef nonnull @hotplug_slot_attr_presence, ptr noundef null) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %has_adapter_file.exit.i.if.end12.i_crit_edge
  %48 = ptrtoint ptr %hotplug.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr84.pr.pr.i = load ptr, ptr %hotplug.i.i, align 4
  %tobool.not.i51.i = icmp eq ptr %.pr84.pr.pr.i, null
  br i1 %tobool.not.i51.i, label %if.end12.i.fs_remove_slot.exit_crit_edge, label %lor.lhs.false.i53.i

if.end12.i.fs_remove_slot.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

lor.lhs.false.i53.i:                              ; preds = %if.end12.i
  %49 = ptrtoint ptr %.pr84.pr.pr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr88.pr.pr.i = load ptr, ptr %.pr84.pr.pr.i, align 4
  %tobool1.not.i52.i = icmp eq ptr %.pr88.pr.pr.i, null
  br i1 %tobool1.not.i52.i, label %lor.lhs.false.i53.i.fs_remove_slot.exit_crit_edge, label %has_test_file.exit.i

lor.lhs.false.i53.i.fs_remove_slot.exit_crit_edge: ; preds = %lor.lhs.false.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

has_test_file.exit.i:                             ; preds = %lor.lhs.false.i53.i
  %hardware_test.i.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %.pr88.pr.pr.i, i32 0, i32 3
  %50 = ptrtoint ptr %hardware_test.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hardware_test.i.i, align 4
  %tobool3.not.i54.not.i = icmp eq ptr %51, null
  br i1 %tobool3.not.i54.not.i, label %has_test_file.exit.i.fs_remove_slot.exit_crit_edge, label %if.then14.i

has_test_file.exit.i.fs_remove_slot.exit_crit_edge: ; preds = %has_test_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_remove_slot.exit

if.then14.i:                                      ; preds = %has_test_file.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %kobj15.i = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj15.i, ptr noundef nonnull @hotplug_slot_attr_test, ptr noundef null) #6
  br label %fs_remove_slot.exit

fs_remove_slot.exit:                              ; preds = %if.then14.i, %has_test_file.exit.i.fs_remove_slot.exit_crit_edge, %lor.lhs.false.i53.i.fs_remove_slot.exit_crit_edge, %if.end12.i.fs_remove_slot.exit_crit_edge, %lor.lhs.false.i46.i.fs_remove_slot.exit_crit_edge, %if.end8.i.fs_remove_slot.exit_crit_edge, %lor.lhs.false.i39.i.fs_remove_slot.exit_crit_edge, %if.end4.i.fs_remove_slot.exit_crit_edge, %lor.lhs.false.i30.i.fs_remove_slot.exit_crit_edge, %if.end.i.fs_remove_slot.exit_crit_edge, %lor.lhs.false.i.i.fs_remove_slot.exit_crit_edge, %do.end69.fs_remove_slot.exit_crit_edge
  tail call void @pci_hp_remove_module_link(ptr noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %fs_remove_slot.exit, %do.end41, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_destroy_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_hotplug_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @debug, align 1, !range !95
  %1 = zext i8 %0 to i32
  %call = tail call i32 @cpci_hotplug_init(i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_create_module_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_remove_module_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_read_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !98
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %1 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hotplug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %owner.i = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %get_power_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %get_power_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_power_status.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %get_power_status.exit.thread7, label %get_power_status.exit

get_power_status.exit.thread7:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %if.end

get_power_status.exit:                            ; preds = %if.end.i
  %call5.i = call i32 %8(ptr noundef %2, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %get_power_status.exit.if.end_crit_edge, label %get_power_status.exit.cleanup_crit_edge

get_power_status.exit.cleanup_crit_edge:          ; preds = %get_power_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_power_status.exit.if.end_crit_edge:           ; preds = %get_power_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %get_power_status.exit.if.end_crit_edge, %get_power_status.exit.thread7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %conv = zext i8 %14 to i32
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_power_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %get_power_status.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_write_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hotplug, align 4
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #6
  %2 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = and i32 %call, 255
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef %conv3) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  %call7 = tail call zeroext i1 @try_module_get(ptr noundef %4) #6
  br i1 %call7, label %if.end9, label %do.end6.exit.thread_crit_edge

do.end6.exit.thread_crit_edge:                    ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.end9:                                          ; preds = %do.end6
  %trunc = trunc i32 %call to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %exit.thread52 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %disable_slot = getelementptr inbounds %struct.hotplug_slot_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %disable_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_slot, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %sw.bb.exit.thread49_crit_edge, label %sw.bb.exit_crit_edge

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

sw.bb.exit.thread49_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread49

sw.bb17:                                          ; preds = %if.end9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %sw.bb17.exit.thread49_crit_edge, label %sw.bb17.exit_crit_edge

sw.bb17.exit_crit_edge:                           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

sw.bb17.exit.thread49_crit_edge:                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread49

exit.thread52:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #9
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %15) #6
  br label %exit.thread

exit.thread49:                                    ; preds = %sw.bb17.exit.thread49_crit_edge, %sw.bb.exit.thread49_crit_edge
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %17) #6
  br label %20

exit:                                             ; preds = %sw.bb17.exit_crit_edge, %sw.bb.exit_crit_edge
  %.sink = phi ptr [ %9, %sw.bb.exit_crit_edge ], [ %13, %sw.bb17.exit_crit_edge ]
  %call15 = tail call i32 %.sink(ptr noundef %1) #6
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool31.not = icmp eq i32 %call15, 0
  br i1 %tobool31.not, label %exit._crit_edge, label %exit.exit.thread_crit_edge

exit.exit.thread_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %20

20:                                               ; preds = %exit._crit_edge, %exit.thread49
  br label %exit.thread

exit.thread:                                      ; preds = %20, %exit.exit.thread_crit_edge, %exit.thread52, %do.end6.exit.thread_crit_edge
  %21 = phi i32 [ %count, %20 ], [ %call15, %exit.exit.thread_crit_edge ], [ -22, %exit.thread52 ], [ -19, %do.end6.exit.thread_crit_edge ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attention_read_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !98
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %1 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hotplug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %owner.i = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %get_attention_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %get_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_attention_status.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %get_attention_status.exit.thread7, label %get_attention_status.exit

get_attention_status.exit.thread7:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %if.end

get_attention_status.exit:                        ; preds = %if.end.i
  %call5.i = call i32 %8(ptr noundef %2, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %get_attention_status.exit.if.end_crit_edge, label %get_attention_status.exit.cleanup_crit_edge

get_attention_status.exit.cleanup_crit_edge:      ; preds = %get_attention_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_attention_status.exit.if.end_crit_edge:       ; preds = %get_attention_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %get_attention_status.exit.if.end_crit_edge, %get_attention_status.exit.thread7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %conv = zext i8 %14 to i32
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_attention_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %get_attention_status.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attention_write_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hotplug, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #6
  %conv = trunc i32 %call to i8
  %4 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4 = and i32 %call, 255
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef %conv4) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %call8 = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call8, label %if.end10, label %do.end7.exit.thread_crit_edge

do.end7.exit.thread_crit_edge:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.end10:                                         ; preds = %do.end7
  %set_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %set_attention_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_attention_status, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %exit.thread32, label %exit

exit.thread32:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %13

exit:                                             ; preds = %if.end10
  %call14 = tail call i32 %8(ptr noundef %1, i8 noundef zeroext %conv) #6
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool17.not = icmp eq i32 %call14, 0
  br i1 %tobool17.not, label %exit._crit_edge, label %exit.exit.thread_crit_edge

exit.exit.thread_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %13

13:                                               ; preds = %exit._crit_edge, %exit.thread32
  br label %exit.thread

exit.thread:                                      ; preds = %13, %exit.exit.thread_crit_edge, %do.end7.exit.thread_crit_edge
  %14 = phi i32 [ %count, %13 ], [ %call14, %exit.exit.thread_crit_edge ], [ -19, %do.end7.exit.thread_crit_edge ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latch_read_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !98
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %1 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hotplug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %owner.i = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %get_latch_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %get_latch_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_latch_status.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %get_latch_status.exit.thread7, label %get_latch_status.exit

get_latch_status.exit.thread7:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %if.end

get_latch_status.exit:                            ; preds = %if.end.i
  %call5.i = call i32 %8(ptr noundef %2, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %get_latch_status.exit.if.end_crit_edge, label %get_latch_status.exit.cleanup_crit_edge

get_latch_status.exit.cleanup_crit_edge:          ; preds = %get_latch_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_latch_status.exit.if.end_crit_edge:           ; preds = %get_latch_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %get_latch_status.exit.if.end_crit_edge, %get_latch_status.exit.thread7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %conv = zext i8 %14 to i32
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_latch_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %get_latch_status.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @presence_read_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !98
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %1 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hotplug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %owner.i = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %get_adapter_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %get_adapter_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_adapter_status.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %get_adapter_status.exit.thread7, label %get_adapter_status.exit

get_adapter_status.exit.thread7:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %if.end

get_adapter_status.exit:                          ; preds = %if.end.i
  %call5.i = call i32 %8(ptr noundef %2, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %get_adapter_status.exit.if.end_crit_edge, label %get_adapter_status.exit.cleanup_crit_edge

get_adapter_status.exit.cleanup_crit_edge:        ; preds = %get_adapter_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_adapter_status.exit.if.end_crit_edge:         ; preds = %get_adapter_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %get_adapter_status.exit.if.end_crit_edge, %get_adapter_status.exit.thread7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %conv = zext i8 %14 to i32
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_adapter_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %get_adapter_status.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_write_file(ptr nocapture noundef readonly %pci_slot, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hotplug, align 4
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #6
  %2 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  %call6 = tail call zeroext i1 @try_module_get(ptr noundef %4) #6
  br i1 %call6, label %if.end8, label %do.end5.exit.thread_crit_edge

do.end5.exit.thread_crit_edge:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.end8:                                          ; preds = %do.end5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %hardware_test = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hardware_test to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hardware_test, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %exit.thread30, label %exit

exit.thread30:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %10) #6
  br label %13

exit:                                             ; preds = %if.end8
  %call13 = tail call i32 %8(ptr noundef %1, i32 noundef %call) #6
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %exit._crit_edge, label %exit.exit.thread_crit_edge

exit.exit.thread_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %13

13:                                               ; preds = %exit._crit_edge, %exit.thread30
  br label %exit.thread

exit.thread:                                      ; preds = %13, %exit.exit.thread_crit_edge, %do.end5.exit.thread_crit_edge
  %14 = phi i32 [ %count, %13 ], [ %call13, %exit.exit.thread_crit_edge ], [ -19, %do.end5.exit.thread_crit_edge ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_hotplug_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab___pci_hp_register, !1, !"__ksymtab___pci_hp_register", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 420, i32 1}
!2 = !{ptr @__ksymtab___pci_hp_initialize, !3, !"__ksymtab___pci_hp_initialize", i1 false, i1 false}
!3 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 465, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 490, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pci_hp_add._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @pci_hp_add._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_pci_hp_add, !12, !"__ksymtab_pci_hp_add", i1 false, i1 false}
!12 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 493, i32 1}
!13 = !{ptr @__ksymtab_pci_hp_deregister, !14, !"__ksymtab_pci_hp_deregister", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 509, i32 1}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 535, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pci_hp_del._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @pci_hp_del._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_pci_hp_del, !21, !"__ksymtab_pci_hp_del", i1 false, i1 false}
!21 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 538, i32 1}
!22 = !{ptr @__ksymtab_pci_hp_destroy, !23, !"__ksymtab_pci_hp_destroy", i1 false, i1 false}
!23 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 559, i32 1}
!24 = !{ptr @__initcall__kmod_pci_hotplug__252_573_pci_hotplug_init6, !25, !"__initcall__kmod_pci_hotplug__252_573_pci_hotplug_init6", i1 false, i1 false}
!25 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 573, i32 1}
!26 = !{ptr @__param_debug, !27, !"__param_debug", i1 false, i1 false}
!27 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 579, i32 1}
!28 = !{ptr @__UNIQUE_ID_debugtype253, !27, !"__UNIQUE_ID_debugtype253", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_debug254, !30, !"__UNIQUE_ID_debug254", i1 false, i1 false}
!30 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 580, i32 1}
!31 = !{ptr @debug, !32, !"debug", i1 false, i1 false}
!32 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 43, i32 13}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 119, i32 19}
!35 = !{ptr @hotplug_slot_attr_power, !36, !"hotplug_slot_attr_power", i1 false, i1 false}
!36 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 118, i32 34}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 76, i32 25}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 89, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @power_write_file._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @power_write_file._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 107, i32 3}
!46 = !{ptr @power_write_file._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @power_write_file._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 164, i32 19}
!50 = !{ptr @hotplug_slot_attr_attention, !51, !"hotplug_slot_attr_attention", i1 false, i1 false}
!51 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 163, i32 34}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 147, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @attention_write_file._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @attention_write_file._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 182, i32 19}
!59 = !{ptr @hotplug_slot_attr_latch, !60, !"hotplug_slot_attr_latch", i1 false, i1 false}
!60 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 181, i32 34}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 199, i32 19}
!63 = !{ptr @hotplug_slot_attr_presence, !64, !"hotplug_slot_attr_presence", i1 false, i1 false}
!64 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 198, i32 34}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 230, i32 19}
!67 = !{ptr @hotplug_slot_attr_test, !68, !"hotplug_slot_attr_test", i1 false, i1 false}
!68 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 229, i32 34}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 213, i32 2}
!71 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @test_write_file._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @test_write_file._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 46, i32 8}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pci_hp_mutex, !75, !"pci_hp_mutex", i1 false, i1 false}
!78 = !{ptr @pci_hotplug_slot_list, !79, !"pci_hotplug_slot_list", i1 false, i1 false}
!79 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 45, i32 8}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/hotplug/pci_hotplug_core.c", i32 567, i32 3}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pci_hotplug_init._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pci_hotplug_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__param_str_debug, !27, !"__param_str_debug", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i8 0, i8 2}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!"auto-init"}

; ModuleID = '/llk/IR_all_yes/drivers/misc/c2port/core.c_pt.bc'
source_filename = "../drivers/misc/c2port/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+c2port_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_c2port_device_register\09\09\09\09"
module asm "\09.long\09__crc_c2port_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_c2port_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22c2port_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_c2port_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+c2port_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_c2port_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_c2port_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_c2port_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22c2port_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_c2port_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.c2port_ops = type { i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.c2port_device = type { i8, i32, [32 x i8], ptr, %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@c2port_idr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@c2port_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bin_attr_flash_data = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @c2port_read_flash_data, ptr @c2port_write_flash_data, ptr null }, [52 x i8] zeroinitializer }, align 32
@c2port_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"c2port%d\00", [23 x i8] zeroinitializer }, align 32
@c2port_device_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c2dev->mutex\00", [18 x i8] zeroinitializer }, align 32
@c2port_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 934, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"C2 port %s added\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c2port_device_register\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/c2port/core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c2port_device_register._entry_ptr = internal global ptr @c2port_device_register._entry, section ".printk_index", align 4
@c2port_device_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 938, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s flash has %d blocks x %d bytes (%d bytes total)\0A\00", [44 x i8] zeroinitializer }, align 32
@c2port_device_register._entry_ptr.9 = internal global ptr @c2port_device_register._entry.7, section ".printk_index", align 4
@__kstrtab_c2port_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_c2port_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_c2port_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @c2port_device_register to i32), ptr @__kstrtab_c2port_device_register, ptr @__kstrtabns_c2port_device_register }, section "___ksymtab+c2port_device_register", align 4
@c2port_device_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 959, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"C2 port %s removed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"c2port_device_unregister\00", [39 x i8] zeroinitializer }, align 32
@c2port_device_unregister._entry_ptr = internal global ptr @c2port_device_unregister._entry, section ".printk_index", align 4
@__kstrtab_c2port_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_c2port_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_c2port_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @c2port_device_unregister to i32), ptr @__kstrtab_c2port_device_unregister, ptr @__kstrtabns_c2port_device_unregister }, section "___ksymtab+c2port_device_unregister", align 4
@__initcall__kmod_core__183_995_c2port_init6 = internal global ptr @c2port_init, section ".initcall6.init", align 4
@__exitcall_c2port_exit = internal global ptr @c2port_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [49 x i8] c"core.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [56 x i8] c"core.description=Silicon Labs C2 port support v. 0.51.0\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [35 x i8] c"core.file=drivers/misc/c2port/core\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [17 x i8] c"core.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c2port_idr_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c2port_idr.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flash_data\00", [21 x i8] zeroinitializer }, align 32
@c2port_read_flash_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 732, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot read %s flash\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c2port_read_flash_data\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@c2port_read_flash_data._entry_ptr = internal global ptr @c2port_read_flash_data._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@c2port_write_flash_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 847, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot write %s flash\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"c2port_write_flash_data\00", [40 x i8] zeroinitializer }, align 32
@c2port_write_flash_data._entry_ptr = internal global ptr @c2port_write_flash_data._entry, section ".printk_index", align 4
@c2port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016Silicon Labs C2 port support v. 0.51.0 - (C) 2007 Rodolfo Giometti\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"c2port_init\00", [20 x i8] zeroinitializer }, align 32
@c2port_init._entry_ptr = internal global ptr @c2port_init._entry, section ".printk_index", align 4
@c2port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"c2port\00", [25 x i8] zeroinitializer }, align 32
@c2port_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.4, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013c2port: failed to allocate class\0A\00", [60 x i8] zeroinitializer }, align 32
@c2port_init._entry_ptr.28 = internal global ptr @c2port_init._entry.26, section ".printk_index", align 4
@c2port_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @c2port_group, ptr null], [24 x i8] zeroinitializer }, align 32
@c2port_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @c2port_attrs, ptr @c2port_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@c2port_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_name, ptr @dev_attr_flash_blocks_num, ptr @dev_attr_flash_block_size, ptr @dev_attr_flash_size, ptr @dev_attr_access, ptr @dev_attr_reset, ptr @dev_attr_dev_id, ptr @dev_attr_rev_id, ptr @dev_attr_flash_access, ptr @dev_attr_flash_erase, ptr null], [52 x i8] zeroinitializer }, align 32
@c2port_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_flash_data, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_blocks_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_flash_blocks_num, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_flash_block_size, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_flash_size, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_access = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @access_show, ptr @access_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @c2port_store_reset }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dev_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_dev_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rev_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_rev_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_access = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @c2port_show_flash_access, ptr @c2port_store_flash_access }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flash_erase = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @c2port_store_flash_erase }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash_blocks_num\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash_block_size\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flash_size\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dev_id\00", [25 x i8] zeroinitializer }, align 32
@c2port_show_dev_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 431, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot read from %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c2port_show_dev_id\00", [45 x i8] zeroinitializer }, align 32
@c2port_show_dev_id._entry_ptr = internal global ptr @c2port_show_dev_id._entry, section ".printk_index", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rev_id\00", [25 x i8] zeroinitializer }, align 32
@c2port_show_rev_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.42, ptr @.str.4, i32 468, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c2port_show_rev_id\00", [45 x i8] zeroinitializer }, align 32
@c2port_show_rev_id._entry_ptr = internal global ptr @c2port_show_rev_id._entry, section ".printk_index", align 4
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flash_access\00", [19 x i8] zeroinitializer }, align 32
@c2port_store_flash_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 536, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot enable %s flash programming\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"c2port_store_flash_access\00", [38 x i8] zeroinitializer }, align 32
@c2port_store_flash_access._entry_ptr = internal global ptr @c2port_store_flash_access._entry, section ".printk_index", align 4
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_erase\00", [20 x i8] zeroinitializer }, align 32
@c2port_store_flash_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 618, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot erase %s flash\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"c2port_store_flash_erase\00", [39 x i8] zeroinitializer }, align 32
@c2port_store_flash_erase._entry_ptr = internal global ptr @c2port_store_flash_erase._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"c2port_idr_lock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"c2port_idr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"bin_attr_flash_data\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"c2port_class\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 33, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 919, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 928, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 934, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 935, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 959, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 26, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 27, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 36, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 852, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 732, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 847, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 977, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 980, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 982, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"c2port_groups\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 882, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"c2port_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 877, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"c2port_attrs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 858, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"c2port_bin_attrs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 872, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"dev_attr_flash_blocks_num\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"dev_attr_flash_block_size\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"dev_attr_flash_size\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"dev_attr_access\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"dev_attr_dev_id\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"dev_attr_rev_id\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"dev_attr_flash_access\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"dev_attr_flash_erase\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 310, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 308, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 320, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 318, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 330, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 340, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 377, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 357, i32 20 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 398, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 435, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 431, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 472, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 468, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 542, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 535, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 624, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [30 x i8] c"../drivers/misc/c2port/core.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 618, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_c2port_exit, ptr @__initcall__kmod_core__183_995_c2port_init6, ptr @__ksymtab_c2port_device_register, ptr @__ksymtab_c2port_device_unregister, ptr @c2port_device_register._entry, ptr @c2port_device_register._entry.7, ptr @c2port_device_register._entry_ptr, ptr @c2port_device_register._entry_ptr.9, ptr @c2port_device_unregister._entry, ptr @c2port_device_unregister._entry_ptr, ptr @c2port_exit, ptr @c2port_init._entry, ptr @c2port_init._entry.26, ptr @c2port_init._entry_ptr, ptr @c2port_init._entry_ptr.28, ptr @c2port_read_flash_data._entry, ptr @c2port_read_flash_data._entry_ptr, ptr @c2port_show_dev_id._entry, ptr @c2port_show_dev_id._entry_ptr, ptr @c2port_show_rev_id._entry, ptr @c2port_show_rev_id._entry_ptr, ptr @c2port_store_flash_access._entry, ptr @c2port_store_flash_access._entry_ptr, ptr @c2port_store_flash_erase._entry, ptr @c2port_store_flash_erase._entry_ptr, ptr @c2port_write_flash_data._entry, ptr @c2port_write_flash_data._entry_ptr, ptr @c2port_idr_lock, ptr @c2port_idr, ptr @bin_attr_flash_data, ptr @c2port_class, ptr @.str, ptr @c2port_device_register.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @c2port_init.__key, ptr @.str.25, ptr @.str.27, ptr @c2port_groups, ptr @c2port_group, ptr @c2port_attrs, ptr @c2port_bin_attrs, ptr @dev_attr_name, ptr @dev_attr_flash_blocks_num, ptr @dev_attr_flash_block_size, ptr @dev_attr_flash_size, ptr @dev_attr_access, ptr @dev_attr_reset, ptr @dev_attr_dev_id, ptr @dev_attr_rev_id, ptr @dev_attr_flash_access, ptr @dev_attr_flash_erase, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_idr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_flash_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_device_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_device_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_device_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_read_flash_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_write_flash_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_blocks_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_access to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dev_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rev_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_access to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flash_erase to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_show_dev_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_show_rev_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_store_flash_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2port_store_flash_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c2port_device_register(ptr noundef %name, ptr noundef %ops, ptr nocapture readnone %devdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !148

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %access = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 2
  %0 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %access, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false13, !prof !148

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c2d_dir, align 4
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %lor.lhs.false13.cleanup_crit_edge, label %lor.lhs.false23, !prof !148

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false13
  %c2ck_set = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 6
  %4 = ptrtoint ptr %c2ck_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c2ck_set, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false33, !prof !148

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false23
  %c2d_get = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 4
  %6 = ptrtoint ptr %c2d_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2d_get, align 4
  %tobool34.not = icmp eq ptr %7, null
  br i1 %tobool34.not, label %lor.lhs.false33.cleanup_crit_edge, label %lor.lhs.false43, !prof !148

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false43:                                  ; preds = %lor.lhs.false33
  %c2d_set = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 5
  %8 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c2d_set, align 4
  %tobool44.not = icmp eq ptr %9, null
  br i1 %tobool44.not, label %lor.lhs.false43.cleanup_crit_edge, label %if.end, !prof !148

lor.lhs.false43.cleanup_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 144) #15
  %tobool54.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool54.not, label %if.end.cleanup_crit_edge, label %if.end65, !prof !148

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %if.end
  tail call void @idr_preload(i32 noundef 3264) #12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  %call66 = tail call i32 @idr_alloc(ptr noundef nonnull @c2port_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  %11 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @radix_tree_preloads to i32)
  %17 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %17) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !149
  %18 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp = icmp slt i32 %call66, 0
  br i1 %cmp, label %if.end65.error_idr_alloc_crit_edge, label %if.end68

if.end65.error_idr_alloc_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_idr_alloc

if.end68:                                         ; preds = %if.end65
  %id = getelementptr inbounds %struct.c2port_device, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call66, ptr %id, align 4
  %blocks_num = getelementptr inbounds %struct.c2port_ops, ptr %ops, i32 0, i32 1
  %23 = ptrtoint ptr %blocks_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %blocks_num, align 2
  %conv = zext i16 %24 to i32
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ops, align 4
  %conv69 = zext i16 %26 to i32
  %mul = mul nuw i32 %conv69, %conv
  store i32 %mul, ptr getelementptr inbounds (%struct.bin_attribute, ptr @bin_attr_flash_data, i32 0, i32 1), align 4
  %27 = load ptr, ptr @c2port_class, align 4
  %call71 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %27, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, i32 noundef %call66) #12
  %dev = getelementptr inbounds %struct.c2port_device, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call71, ptr %dev, align 8
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %call71 to i32
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %call104 = tail call ptr @idr_remove(ptr noundef nonnull @c2port_idr, i32 noundef %31) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  br label %error_idr_alloc

if.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call71, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %name79 = getelementptr inbounds %struct.c2port_device, ptr %call7.i.i, i32 0, i32 2
  %call80 = tail call ptr @strncpy(ptr noundef %name79, ptr noundef %name, i32 noundef 31)
  %ops81 = getelementptr inbounds %struct.c2port_device, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %ops81 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ops, ptr %ops81, align 8
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @c2port_device_register.__key) #12
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %call7.i.i, align 8
  %bf.clear83 = and i8 %bf.load, 63
  store i8 %bf.clear83, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %access, align 4
  tail call void %36(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef %name) #16
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = ptrtoint ptr %blocks_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %blocks_num, align 2
  %conv95 = zext i16 %42 to i32
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ops, align 4
  %conv97 = zext i16 %44 to i32
  %mul102 = mul nuw i32 %conv97, %conv95
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %conv95, i32 noundef %conv97, i32 noundef %mul102) #16
  br label %cleanup

error_idr_alloc:                                  ; preds = %if.then74, %if.end65.error_idr_alloc_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end65.error_idr_alloc_crit_edge ], [ %29, %if.then74 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %45 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error_idr_alloc, %if.end77, %if.end.cleanup_crit_edge, %lor.lhs.false43.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %45, %error_idr_alloc ], [ %call7.i.i, %if.end77 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false43.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false33.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false23.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false13.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c2port_device_unregister(ptr noundef %c2dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %c2dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.c2port_device, ptr %c2dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %c2dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %name) #16
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  %id = getelementptr inbounds %struct.c2port_device, ptr %c2dev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call ptr @idr_remove(ptr noundef nonnull @c2port_idr, i32 noundef %3) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @c2port_idr_lock) #12
  %4 = load ptr, ptr @c2port_class, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  tail call void @device_destroy(ptr noundef %4, i32 noundef %6) #12
  tail call void @kfree(ptr noundef nonnull %c2dev) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c2port_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @c2port_class, align 4
  tail call void @class_destroy(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #16
  %call2 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @c2port_init.__key) #12
  store ptr %call2, ptr @c2port_class, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  %0 = load ptr, ptr @c2port_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev_groups = getelementptr inbounds %struct.class, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @c2port_groups, ptr %dev_groups, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end5
  %retval.0 = phi i32 [ %1, %do.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !150

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_read_flash_data(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buffer, i64 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  %addr.i182.i = alloca i8, align 1
  %addr.i171.i = alloca i8, align 1
  %addr.i161.i = alloca i8, align 1
  %addr.i.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %ops1.i = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %status.i, align 1, !annotation !151
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %4, align 4
  %conv.i = zext i16 %7 to i32
  %blocks_num.i = getelementptr inbounds %struct.c2port_ops, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %blocks_num.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blocks_num.i, align 2
  %conv2.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv2.i, %conv.i
  %conv3.i = sext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv3.i, i64 %offset)
  %cmp.not.i = icmp sgt i64 %conv3.i, %offset
  br i1 %cmp.not.i, label %if.end.i, label %if.end.__c2port_read_flash_data.exit_crit_edge

if.end.__c2port_read_flash_data.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_read_flash_data.exit

if.end.i:                                         ; preds = %if.end
  %sub.i = sub i64 %conv3.i, %offset
  %10 = tail call i64 @llvm.smin.i64(i64 %sub.i, i64 128) #12
  %11 = trunc i64 %10 to i8
  %12 = trunc i64 %10 to i32
  %conv24.i = and i32 %12, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24.i, i32 %count)
  %cmp25.i = icmp ugt i32 %conv24.i, %count
  %conv28.i = trunc i32 %count to i8
  %nread.1.i = select i1 %cmp25.i, i8 %conv28.i, i8 %11
  %conv30.i = zext i8 %nread.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nread.1.i)
  %cmp31.i = icmp eq i8 %nread.1.i, 0
  br i1 %cmp31.i, label %if.end.i.__c2port_read_flash_data.exit_crit_edge, label %if.end35.i

if.end.i.__c2port_read_flash_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_read_flash_data.exit

if.end35.i:                                       ; preds = %if.end.i
  tail call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext -76) #12
  %call.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext 6) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i.i) #12
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %addr.i.i, align 1, !annotation !151
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end35.i
  %timeout.0.i.i = phi i32 [ 20, %if.end35.i ], [ %dec.i.i, %if.end2.i.i.do.body.i.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i.i) #12
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i.i, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp3.not.i.i, label %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp5.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end40.i

do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

c2port_poll_in_busy.exit.thread.i:                ; preds = %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  br label %do.end

if.end40.i:                                       ; preds = %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i161.i) #12
  %18 = ptrtoint ptr %addr.i161.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %addr.i161.i, align 1, !annotation !151
  br label %do.body.i164.i

do.body.i164.i:                                   ; preds = %if.end2.i167.i.do.body.i164.i_crit_edge, %if.end40.i
  %timeout.0.i162.i = phi i32 [ 10000, %if.end40.i ], [ %dec.i165.i, %if.end2.i167.i.do.body.i164.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i161.i) #12
  %19 = ptrtoint ptr %addr.i161.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr.i161.i, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i163.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i163.i, label %if.end2.i167.i, label %do.end.i169.i

if.end2.i167.i:                                   ; preds = %do.body.i164.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #12
  %dec.i165.i = add nsw i32 %timeout.0.i162.i, -1
  %cmp3.not.i166.i = icmp eq i32 %dec.i165.i, 0
  br i1 %cmp3.not.i166.i, label %if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end2.i167.i.do.body.i164.i_crit_edge

if.end2.i167.i.do.body.i164.i_crit_edge:          ; preds = %if.end2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i164.i

if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %if.end2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

do.end.i169.i:                                    ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i162.i)
  %cmp5.i168.i = icmp eq i32 %timeout.0.i162.i, 0
  br i1 %cmp5.i168.i, label %do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end45.i

do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %do.end.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

c2port_poll_out_ready.exit.thread.i:              ; preds = %do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge, %if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i161.i) #12
  br label %do.end

if.end45.i:                                       ; preds = %do.end.i169.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i161.i) #12
  %call46.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end45.i.do.end_crit_edge, label %if.end50.i

if.end45.i.do.end_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end50.i:                                       ; preds = %if.end45.i
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %24)
  %cmp52.not.i = icmp eq i8 %24, 13
  br i1 %cmp52.not.i, label %if.end55.i, label %if.end50.i.do.end_crit_edge

if.end50.i.do.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end55.i:                                       ; preds = %if.end50.i
  %25 = lshr i64 %offset, 8
  %conv56.i = trunc i64 %25 to i8
  %call57.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %conv56.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i171.i) #12
  %26 = ptrtoint ptr %addr.i171.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %addr.i171.i, align 1, !annotation !151
  br label %do.body.i174.i

do.body.i174.i:                                   ; preds = %if.end2.i177.i.do.body.i174.i_crit_edge, %if.end55.i
  %timeout.0.i172.i = phi i32 [ 20, %if.end55.i ], [ %dec.i175.i, %if.end2.i177.i.do.body.i174.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i171.i) #12
  %27 = ptrtoint ptr %addr.i171.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr.i171.i, align 1
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i173.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i173.i, label %do.end.i179.i, label %if.end2.i177.i

if.end2.i177.i:                                   ; preds = %do.body.i174.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %dec.i175.i = add nsw i32 %timeout.0.i172.i, -1
  %cmp3.not.i176.i = icmp eq i32 %dec.i175.i, 0
  br i1 %cmp3.not.i176.i, label %if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, label %if.end2.i177.i.do.body.i174.i_crit_edge

if.end2.i177.i.do.body.i174.i_crit_edge:          ; preds = %if.end2.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i174.i

if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge: ; preds = %if.end2.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit181.thread.i

do.end.i179.i:                                    ; preds = %do.body.i174.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i172.i)
  %cmp5.i178.i = icmp eq i32 %timeout.0.i172.i, 0
  br i1 %cmp5.i178.i, label %do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, label %if.end62.i

do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge: ; preds = %do.end.i179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit181.thread.i

c2port_poll_in_busy.exit181.thread.i:             ; preds = %do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, %if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i171.i) #12
  br label %do.end

if.end62.i:                                       ; preds = %do.end.i179.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i171.i) #12
  %conv63.i = trunc i64 %offset to i8
  %call64.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %conv63.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i182.i) #12
  %31 = ptrtoint ptr %addr.i182.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %addr.i182.i, align 1, !annotation !151
  br label %do.body.i185.i

do.body.i185.i:                                   ; preds = %if.end2.i188.i.do.body.i185.i_crit_edge, %if.end62.i
  %timeout.0.i183.i = phi i32 [ 20, %if.end62.i ], [ %dec.i186.i, %if.end2.i188.i.do.body.i185.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i182.i) #12
  %32 = ptrtoint ptr %addr.i182.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr.i182.i, align 1
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i184.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i184.i, label %do.end.i190.i, label %if.end2.i188.i

if.end2.i188.i:                                   ; preds = %do.body.i185.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #12
  %dec.i186.i = add nsw i32 %timeout.0.i183.i, -1
  %cmp3.not.i187.i = icmp eq i32 %dec.i186.i, 0
  br i1 %cmp3.not.i187.i, label %if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, label %if.end2.i188.i.do.body.i185.i_crit_edge

if.end2.i188.i.do.body.i185.i_crit_edge:          ; preds = %if.end2.i188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i185.i

if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge: ; preds = %if.end2.i188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit192.thread.i

do.end.i190.i:                                    ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i183.i)
  %cmp5.i189.i = icmp eq i32 %timeout.0.i183.i, 0
  br i1 %cmp5.i189.i, label %do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, label %if.end69.i

do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge: ; preds = %do.end.i190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit192.thread.i

c2port_poll_in_busy.exit192.thread.i:             ; preds = %do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, %if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i182.i) #12
  br label %do.end

if.end69.i:                                       ; preds = %do.end.i190.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i182.i) #12
  %call70.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %nread.1.i) #12
  %call71.i = tail call fastcc i32 @c2port_poll_in_busy(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.end69.i.do.end_crit_edge, label %if.end75.i

if.end69.i.do.end_crit_edge:                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end75.i:                                       ; preds = %if.end69.i
  %call76.i = tail call fastcc i32 @c2port_poll_out_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end75.i.do.end_crit_edge, label %if.end80.i

if.end75.i.do.end_crit_edge:                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end80.i:                                       ; preds = %if.end75.i
  %call81.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp slt i32 %call81.i, 0
  br i1 %cmp82.i, label %if.end80.i.do.end_crit_edge, label %if.end85.i

if.end80.i.do.end_crit_edge:                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end85.i:                                       ; preds = %if.end80.i
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %37)
  %cmp87.not.i = icmp eq i8 %37, 13
  br i1 %cmp87.not.i, label %if.end85.i.for.body.i_crit_edge, label %if.end85.i.do.end_crit_edge

if.end85.i.do.end_crit_edge:                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end98.i
  %inc.i = add nuw nsw i32 %i.0203.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv30.i
  br i1 %exitcond.not.i, label %for.cond.i.__c2port_read_flash_data.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.__c2port_read_flash_data.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_read_flash_data.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end85.i.for.body.i_crit_edge
  %i.0203.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end85.i.for.body.i_crit_edge ]
  %call94.i = tail call fastcc i32 @c2port_poll_out_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %for.body.i.do.end_crit_edge, label %if.end98.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end98.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %i.0203.i
  %call99.i = tail call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp100.i = icmp slt i32 %call99.i, 0
  br i1 %cmp100.i, label %if.end98.i.do.end_crit_edge, label %for.cond.i

if.end98.i.do.end_crit_edge:                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

__c2port_read_flash_data.exit:                    ; preds = %for.cond.i.__c2port_read_flash_data.exit_crit_edge, %if.end.i.__c2port_read_flash_data.exit_crit_edge, %if.end.__c2port_read_flash_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.__c2port_read_flash_data.exit_crit_edge ], [ 0, %if.end.i.__c2port_read_flash_data.exit_crit_edge ], [ %conv30.i, %for.cond.i.__c2port_read_flash_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

do.end:                                           ; preds = %if.end98.i.do.end_crit_edge, %for.body.i.do.end_crit_edge, %if.end85.i.do.end_crit_edge, %if.end80.i.do.end_crit_edge, %if.end75.i.do.end_crit_edge, %if.end69.i.do.end_crit_edge, %c2port_poll_in_busy.exit192.thread.i, %c2port_poll_in_busy.exit181.thread.i, %if.end50.i.do.end_crit_edge, %if.end45.i.do.end_crit_edge, %c2port_poll_out_ready.exit.thread.i, %c2port_poll_in_busy.exit.thread.i
  %retval.0.i.ph = phi i32 [ -5, %c2port_poll_in_busy.exit192.thread.i ], [ -5, %c2port_poll_in_busy.exit181.thread.i ], [ -5, %c2port_poll_out_ready.exit.thread.i ], [ -5, %c2port_poll_in_busy.exit.thread.i ], [ -16, %if.end85.i.do.end_crit_edge ], [ %call81.i, %if.end80.i.do.end_crit_edge ], [ %call76.i, %if.end75.i.do.end_crit_edge ], [ %call71.i, %if.end69.i.do.end_crit_edge ], [ -16, %if.end50.i.do.end_crit_edge ], [ %call46.i, %if.end45.i.do.end_crit_edge ], [ %call94.i, %for.body.i.do.end_crit_edge ], [ %call99.i, %if.end98.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %dev = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.18, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_read_flash_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i, %__c2port_read_flash_data.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_write_flash_data(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buffer, i64 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  %addr.i204.i = alloca i8, align 1
  %addr.i193.i = alloca i8, align 1
  %addr.i182.i = alloca i8, align 1
  %addr.i171.i = alloca i8, align 1
  %addr.i161.i = alloca i8, align 1
  %addr.i.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %ops1.i = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %status.i, align 1, !annotation !151
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 128) #12
  %7 = trunc i32 %6 to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %4, align 4
  %conv4.i = zext i16 %9 to i32
  %blocks_num.i = getelementptr inbounds %struct.c2port_ops, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %blocks_num.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blocks_num.i, align 2
  %conv5.i = zext i16 %11 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv4.i
  %conv6.i = sext i32 %mul.i to i64
  %sub.i = sub i64 %conv6.i, %offset
  %conv7.i = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv7.i)
  %cmp8.i = icmp slt i64 %sub.i, %conv7.i
  %conv18.i = trunc i64 %sub.i to i8
  %nwrite.1.i = select i1 %cmp8.i, i8 %conv18.i, i8 %7
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6.i, i64 %offset)
  %cmp26.not.i = icmp sgt i64 %conv6.i, %offset
  br i1 %cmp26.not.i, label %if.end29.i, label %if.end.__c2port_write_flash_data.exit.thread_crit_edge

if.end.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end29.i:                                       ; preds = %if.end
  tail call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext -76) #12
  %call.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i.i) #12
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %addr.i.i, align 1, !annotation !151
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end29.i
  %timeout.0.i.i = phi i32 [ 20, %if.end29.i ], [ %dec.i.i, %if.end2.i.i.do.body.i.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i.i) #12
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr.i.i, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp3.not.i.i, label %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp5.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end34.i

do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

c2port_poll_in_busy.exit.thread.i:                ; preds = %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  br label %__c2port_write_flash_data.exit.thread

if.end34.i:                                       ; preds = %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i161.i) #12
  %17 = ptrtoint ptr %addr.i161.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %addr.i161.i, align 1, !annotation !151
  br label %do.body.i164.i

do.body.i164.i:                                   ; preds = %if.end2.i167.i.do.body.i164.i_crit_edge, %if.end34.i
  %timeout.0.i162.i = phi i32 [ 10000, %if.end34.i ], [ %dec.i165.i, %if.end2.i167.i.do.body.i164.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i161.i) #12
  %18 = ptrtoint ptr %addr.i161.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr.i161.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i163.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i163.i, label %if.end2.i167.i, label %do.end.i169.i

if.end2.i167.i:                                   ; preds = %do.body.i164.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %dec.i165.i = add nsw i32 %timeout.0.i162.i, -1
  %cmp3.not.i166.i = icmp eq i32 %dec.i165.i, 0
  br i1 %cmp3.not.i166.i, label %if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end2.i167.i.do.body.i164.i_crit_edge

if.end2.i167.i.do.body.i164.i_crit_edge:          ; preds = %if.end2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i164.i

if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %if.end2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

do.end.i169.i:                                    ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i162.i)
  %cmp5.i168.i = icmp eq i32 %timeout.0.i162.i, 0
  br i1 %cmp5.i168.i, label %do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end39.i

do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %do.end.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

c2port_poll_out_ready.exit.thread.i:              ; preds = %do.end.i169.i.c2port_poll_out_ready.exit.thread.i_crit_edge, %if.end2.i167.i.c2port_poll_out_ready.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i161.i) #12
  br label %__c2port_write_flash_data.exit.thread

if.end39.i:                                       ; preds = %do.end.i169.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i161.i) #12
  %call40.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end39.i.__c2port_write_flash_data.exit.thread_crit_edge, label %if.end44.i

if.end39.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end44.i:                                       ; preds = %if.end39.i
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %23)
  %cmp46.not.i = icmp eq i8 %23, 13
  br i1 %cmp46.not.i, label %if.end49.i, label %if.end44.i.__c2port_write_flash_data.exit.thread_crit_edge

if.end44.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end49.i:                                       ; preds = %if.end44.i
  %24 = lshr i64 %offset, 8
  %conv50.i = trunc i64 %24 to i8
  %call51.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %conv50.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i171.i) #12
  %25 = ptrtoint ptr %addr.i171.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %addr.i171.i, align 1, !annotation !151
  br label %do.body.i174.i

do.body.i174.i:                                   ; preds = %if.end2.i177.i.do.body.i174.i_crit_edge, %if.end49.i
  %timeout.0.i172.i = phi i32 [ 20, %if.end49.i ], [ %dec.i175.i, %if.end2.i177.i.do.body.i174.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i171.i) #12
  %26 = ptrtoint ptr %addr.i171.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr.i171.i, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i173.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i173.i, label %do.end.i179.i, label %if.end2.i177.i

if.end2.i177.i:                                   ; preds = %do.body.i174.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %dec.i175.i = add nsw i32 %timeout.0.i172.i, -1
  %cmp3.not.i176.i = icmp eq i32 %dec.i175.i, 0
  br i1 %cmp3.not.i176.i, label %if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, label %if.end2.i177.i.do.body.i174.i_crit_edge

if.end2.i177.i.do.body.i174.i_crit_edge:          ; preds = %if.end2.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i174.i

if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge: ; preds = %if.end2.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit181.thread.i

do.end.i179.i:                                    ; preds = %do.body.i174.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i172.i)
  %cmp5.i178.i = icmp eq i32 %timeout.0.i172.i, 0
  br i1 %cmp5.i178.i, label %do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, label %if.end56.i

do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge: ; preds = %do.end.i179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit181.thread.i

c2port_poll_in_busy.exit181.thread.i:             ; preds = %do.end.i179.i.c2port_poll_in_busy.exit181.thread.i_crit_edge, %if.end2.i177.i.c2port_poll_in_busy.exit181.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i171.i) #12
  br label %__c2port_write_flash_data.exit.thread

if.end56.i:                                       ; preds = %do.end.i179.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i171.i) #12
  %conv57.i = trunc i64 %offset to i8
  %call58.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %conv57.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i182.i) #12
  %30 = ptrtoint ptr %addr.i182.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %addr.i182.i, align 1, !annotation !151
  br label %do.body.i185.i

do.body.i185.i:                                   ; preds = %if.end2.i188.i.do.body.i185.i_crit_edge, %if.end56.i
  %timeout.0.i183.i = phi i32 [ 20, %if.end56.i ], [ %dec.i186.i, %if.end2.i188.i.do.body.i185.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i182.i) #12
  %31 = ptrtoint ptr %addr.i182.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %addr.i182.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i184.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i184.i, label %do.end.i190.i, label %if.end2.i188.i

if.end2.i188.i:                                   ; preds = %do.body.i185.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #12
  %dec.i186.i = add nsw i32 %timeout.0.i183.i, -1
  %cmp3.not.i187.i = icmp eq i32 %dec.i186.i, 0
  br i1 %cmp3.not.i187.i, label %if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, label %if.end2.i188.i.do.body.i185.i_crit_edge

if.end2.i188.i.do.body.i185.i_crit_edge:          ; preds = %if.end2.i188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i185.i

if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge: ; preds = %if.end2.i188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit192.thread.i

do.end.i190.i:                                    ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i183.i)
  %cmp5.i189.i = icmp eq i32 %timeout.0.i183.i, 0
  br i1 %cmp5.i189.i, label %do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, label %if.end63.i

do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge: ; preds = %do.end.i190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit192.thread.i

c2port_poll_in_busy.exit192.thread.i:             ; preds = %do.end.i190.i.c2port_poll_in_busy.exit192.thread.i_crit_edge, %if.end2.i188.i.c2port_poll_in_busy.exit192.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i182.i) #12
  br label %__c2port_write_flash_data.exit.thread

if.end63.i:                                       ; preds = %do.end.i190.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i182.i) #12
  %call64.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %nwrite.1.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i193.i) #12
  %35 = ptrtoint ptr %addr.i193.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %addr.i193.i, align 1, !annotation !151
  br label %do.body.i196.i

do.body.i196.i:                                   ; preds = %if.end2.i199.i.do.body.i196.i_crit_edge, %if.end63.i
  %timeout.0.i194.i = phi i32 [ 20, %if.end63.i ], [ %dec.i197.i, %if.end2.i199.i.do.body.i196.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i193.i) #12
  %36 = ptrtoint ptr %addr.i193.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr.i193.i, align 1
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i195.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i195.i, label %do.end.i201.i, label %if.end2.i199.i

if.end2.i199.i:                                   ; preds = %do.body.i196.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #12
  %dec.i197.i = add nsw i32 %timeout.0.i194.i, -1
  %cmp3.not.i198.i = icmp eq i32 %dec.i197.i, 0
  br i1 %cmp3.not.i198.i, label %if.end2.i199.i.c2port_poll_in_busy.exit203.thread.i_crit_edge, label %if.end2.i199.i.do.body.i196.i_crit_edge

if.end2.i199.i.do.body.i196.i_crit_edge:          ; preds = %if.end2.i199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i196.i

if.end2.i199.i.c2port_poll_in_busy.exit203.thread.i_crit_edge: ; preds = %if.end2.i199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit203.thread.i

do.end.i201.i:                                    ; preds = %do.body.i196.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i194.i)
  %cmp5.i200.i = icmp eq i32 %timeout.0.i194.i, 0
  br i1 %cmp5.i200.i, label %do.end.i201.i.c2port_poll_in_busy.exit203.thread.i_crit_edge, label %if.end69.i

do.end.i201.i.c2port_poll_in_busy.exit203.thread.i_crit_edge: ; preds = %do.end.i201.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit203.thread.i

c2port_poll_in_busy.exit203.thread.i:             ; preds = %do.end.i201.i.c2port_poll_in_busy.exit203.thread.i_crit_edge, %if.end2.i199.i.c2port_poll_in_busy.exit203.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i193.i) #12
  br label %__c2port_write_flash_data.exit.thread

if.end69.i:                                       ; preds = %do.end.i201.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i193.i) #12
  %call70.i = tail call fastcc i32 @c2port_poll_out_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp71.i = icmp slt i32 %call70.i, 0
  br i1 %cmp71.i, label %if.end69.i.__c2port_write_flash_data.exit.thread_crit_edge, label %if.end74.i

if.end69.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end74.i:                                       ; preds = %if.end69.i
  %call75.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %if.end74.i.__c2port_write_flash_data.exit.thread_crit_edge, label %if.end79.i

if.end74.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end79.i:                                       ; preds = %if.end74.i
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %41)
  %cmp81.not.i = icmp eq i8 %41, 13
  br i1 %cmp81.not.i, label %for.cond.preheader.i, label %if.end79.i.__c2port_write_flash_data.exit.thread_crit_edge

if.end79.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

for.cond.preheader.i:                             ; preds = %if.end79.i
  %conv85.i = zext i8 %nwrite.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nwrite.1.i)
  %cmp86234.not.i = icmp eq i8 %nwrite.1.i, 0
  br i1 %cmp86234.not.i, label %for.cond.preheader.i.__c2port_write_flash_data.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.__c2port_write_flash_data.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0235.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %i.0235.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i, align 1
  %call88.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %for.body.i.__c2port_write_flash_data.exit.thread_crit_edge, label %if.end92.i

for.body.i.__c2port_write_flash_data.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit.thread

if.end92.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i204.i) #12
  %44 = ptrtoint ptr %addr.i204.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %addr.i204.i, align 1, !annotation !151
  br label %do.body.i207.i

do.body.i207.i:                                   ; preds = %if.end2.i210.i.do.body.i207.i_crit_edge, %if.end92.i
  %timeout.0.i205.i = phi i32 [ 20, %if.end92.i ], [ %dec.i208.i, %if.end2.i210.i.do.body.i207.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i204.i) #12
  %45 = ptrtoint ptr %addr.i204.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr.i204.i, align 1
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i206.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i206.i, label %for.inc.i, label %if.end2.i210.i

if.end2.i210.i:                                   ; preds = %do.body.i207.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #12
  %dec.i208.i = add nsw i32 %timeout.0.i205.i, -1
  %cmp3.not.i209.i = icmp eq i32 %dec.i208.i, 0
  br i1 %cmp3.not.i209.i, label %c2port_poll_in_busy.exit214.thread.i, label %if.end2.i210.i.do.body.i207.i_crit_edge

if.end2.i210.i.do.body.i207.i_crit_edge:          ; preds = %if.end2.i210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i207.i

c2port_poll_in_busy.exit214.thread.i:             ; preds = %if.end2.i210.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i204.i) #12
  br label %__c2port_write_flash_data.exit.thread

for.inc.i:                                        ; preds = %do.body.i207.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i204.i) #12
  %inc.i = add nuw nsw i32 %i.0235.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv85.i
  br i1 %exitcond.not.i, label %for.inc.i.__c2port_write_flash_data.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.__c2port_write_flash_data.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_write_flash_data.exit

__c2port_write_flash_data.exit.thread:            ; preds = %c2port_poll_in_busy.exit214.thread.i, %for.body.i.__c2port_write_flash_data.exit.thread_crit_edge, %if.end79.i.__c2port_write_flash_data.exit.thread_crit_edge, %if.end74.i.__c2port_write_flash_data.exit.thread_crit_edge, %if.end69.i.__c2port_write_flash_data.exit.thread_crit_edge, %c2port_poll_in_busy.exit203.thread.i, %c2port_poll_in_busy.exit192.thread.i, %c2port_poll_in_busy.exit181.thread.i, %if.end44.i.__c2port_write_flash_data.exit.thread_crit_edge, %if.end39.i.__c2port_write_flash_data.exit.thread_crit_edge, %c2port_poll_out_ready.exit.thread.i, %c2port_poll_in_busy.exit.thread.i, %if.end.__c2port_write_flash_data.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %c2port_poll_in_busy.exit214.thread.i ], [ -5, %c2port_poll_in_busy.exit203.thread.i ], [ -5, %c2port_poll_in_busy.exit192.thread.i ], [ -5, %c2port_poll_in_busy.exit181.thread.i ], [ -5, %c2port_poll_out_ready.exit.thread.i ], [ -5, %c2port_poll_in_busy.exit.thread.i ], [ -16, %if.end79.i.__c2port_write_flash_data.exit.thread_crit_edge ], [ %call75.i, %if.end74.i.__c2port_write_flash_data.exit.thread_crit_edge ], [ %call70.i, %if.end69.i.__c2port_write_flash_data.exit.thread_crit_edge ], [ -16, %if.end44.i.__c2port_write_flash_data.exit.thread_crit_edge ], [ %call40.i, %if.end39.i.__c2port_write_flash_data.exit.thread_crit_edge ], [ -22, %if.end.__c2port_write_flash_data.exit.thread_crit_edge ], [ %call88.i, %for.body.i.__c2port_write_flash_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %do.end

__c2port_write_flash_data.exit:                   ; preds = %for.inc.i.__c2port_write_flash_data.exit_crit_edge, %for.cond.preheader.i.__c2port_write_flash_data.exit_crit_edge
  %call98.i = tail call fastcc i32 @c2port_poll_out_ready(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br i1 %cmp99.i, label %__c2port_write_flash_data.exit.do.end_crit_edge, label %__c2port_write_flash_data.exit.cleanup_crit_edge

__c2port_write_flash_data.exit.cleanup_crit_edge: ; preds = %__c2port_write_flash_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__c2port_write_flash_data.exit.do.end_crit_edge:  ; preds = %__c2port_write_flash_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %__c2port_write_flash_data.exit.do.end_crit_edge, %__c2port_write_flash_data.exit.thread
  %retval.0.i20 = phi i32 [ %retval.0.i.ph, %__c2port_write_flash_data.exit.thread ], [ %call98.i, %__c2port_write_flash_data.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.21, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_write_flash_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.i20, %do.end ], [ %conv85.i, %__c2port_write_flash_data.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c2port_write_ar(ptr noundef %dev, i8 noundef zeroext %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i, label %if.then.i, label %entry.c2port_strobe_ck.exit_crit_edge

entry.c2port_strobe_ck.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit

c2port_strobe_ck.exit:                            ; preds = %if.then.i, %entry.c2port_strobe_ck.exit_crit_edge
  %c2ck_set.i = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  %6 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c2d_dir, align 4
  tail call void %10(ptr noundef %dev, i32 noundef 0) #12
  %c2d_set = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c2d_set, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 1) #12
  %13 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops1, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i24 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i24)
  %tobool.not.i25 = icmp eq i32 %and.i.i.i24, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i25, label %if.then.i26, label %c2port_strobe_ck.exit.c2port_strobe_ck.exit28_crit_edge

c2port_strobe_ck.exit.c2port_strobe_ck.exit28_crit_edge: ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit28

if.then.i26:                                      ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit28

c2port_strobe_ck.exit28:                          ; preds = %if.then.i26, %c2port_strobe_ck.exit.c2port_strobe_ck.exit28_crit_edge
  %c2ck_set.i27 = getelementptr inbounds %struct.c2port_ops, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %c2ck_set.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c2ck_set.i27, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %19 = ptrtoint ptr %c2ck_set.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c2ck_set.i27, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c2d_set, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 1) #12
  %24 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i30 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30)
  %tobool.not.i31 = icmp eq i32 %and.i.i.i30, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i31, label %if.then.i32, label %c2port_strobe_ck.exit28.c2port_strobe_ck.exit34_crit_edge

c2port_strobe_ck.exit28.c2port_strobe_ck.exit34_crit_edge: ; preds = %c2port_strobe_ck.exit28
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit34

if.then.i32:                                      ; preds = %c2port_strobe_ck.exit28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit34

c2port_strobe_ck.exit34:                          ; preds = %if.then.i32, %c2port_strobe_ck.exit28.c2port_strobe_ck.exit34_crit_edge
  %c2ck_set.i33 = getelementptr inbounds %struct.c2port_ops, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %c2ck_set.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c2ck_set.i33, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = ptrtoint ptr %c2ck_set.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %c2ck_set.i33, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  br label %for.body

for.body:                                         ; preds = %c2port_strobe_ck.exit40.for.body_crit_edge, %c2port_strobe_ck.exit34
  %i.048 = phi i32 [ 0, %c2port_strobe_ck.exit34 ], [ %inc, %c2port_strobe_ck.exit40.for.body_crit_edge ]
  %addr.addr.047 = phi i8 [ %addr, %c2port_strobe_ck.exit34 ], [ %45, %c2port_strobe_ck.exit40.for.body_crit_edge ]
  %33 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c2d_set, align 4
  %35 = and i8 %addr.addr.047, 1
  %and = zext i8 %35 to i32
  tail call void %34(ptr noundef %dev, i32 noundef %and) #12
  %36 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops1, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i36 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i36)
  %tobool.not.i37 = icmp eq i32 %and.i.i.i36, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i37, label %if.then.i38, label %for.body.c2port_strobe_ck.exit40_crit_edge

for.body.c2port_strobe_ck.exit40_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit40

if.then.i38:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit40

c2port_strobe_ck.exit40:                          ; preds = %if.then.i38, %for.body.c2port_strobe_ck.exit40_crit_edge
  %c2ck_set.i39 = getelementptr inbounds %struct.c2port_ops, ptr %37, i32 0, i32 6
  %39 = ptrtoint ptr %c2ck_set.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %c2ck_set.i39, align 4
  tail call void %40(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #12
  %42 = ptrtoint ptr %c2ck_set.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %c2ck_set.i39, align 4
  tail call void %43(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #12
  %45 = lshr i8 %addr.addr.047, 1
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %c2port_strobe_ck.exit40.for.body_crit_edge

c2port_strobe_ck.exit40.for.body_crit_edge:       ; preds = %c2port_strobe_ck.exit40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %c2port_strobe_ck.exit40
  %46 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %c2d_dir, align 4
  tail call void %47(ptr noundef %dev, i32 noundef 1) #12
  %48 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops1, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i42 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i42)
  %tobool.not.i43 = icmp eq i32 %and.i.i.i42, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i43, label %if.then.i44, label %for.end.c2port_strobe_ck.exit46_crit_edge

for.end.c2port_strobe_ck.exit46_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit46

if.then.i44:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit46

c2port_strobe_ck.exit46:                          ; preds = %if.then.i44, %for.end.c2port_strobe_ck.exit46_crit_edge
  %c2ck_set.i45 = getelementptr inbounds %struct.c2port_ops, ptr %49, i32 0, i32 6
  %51 = ptrtoint ptr %c2ck_set.i45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %c2ck_set.i45, align 4
  tail call void %52(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #12
  %54 = ptrtoint ptr %c2ck_set.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %c2ck_set.i45, align 4
  tail call void %55(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c2port_write_dr(ptr noundef %dev, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i, label %if.then.i, label %entry.c2port_strobe_ck.exit_crit_edge

entry.c2port_strobe_ck.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit

c2port_strobe_ck.exit:                            ; preds = %if.then.i, %entry.c2port_strobe_ck.exit_crit_edge
  %c2ck_set.i = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  %6 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c2d_dir, align 4
  tail call void %10(ptr noundef %dev, i32 noundef 0) #12
  %c2d_set = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c2d_set, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 1) #12
  %13 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops1, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i44 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i44)
  %tobool.not.i45 = icmp eq i32 %and.i.i.i44, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i45, label %if.then.i46, label %c2port_strobe_ck.exit.c2port_strobe_ck.exit48_crit_edge

c2port_strobe_ck.exit.c2port_strobe_ck.exit48_crit_edge: ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit48

if.then.i46:                                      ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit48

c2port_strobe_ck.exit48:                          ; preds = %if.then.i46, %c2port_strobe_ck.exit.c2port_strobe_ck.exit48_crit_edge
  %c2ck_set.i47 = getelementptr inbounds %struct.c2port_ops, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %c2ck_set.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c2ck_set.i47, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %19 = ptrtoint ptr %c2ck_set.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c2ck_set.i47, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c2d_set, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 0) #12
  %24 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i50 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i50)
  %tobool.not.i51 = icmp eq i32 %and.i.i.i50, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i51, label %if.then.i52, label %c2port_strobe_ck.exit48.c2port_strobe_ck.exit54_crit_edge

c2port_strobe_ck.exit48.c2port_strobe_ck.exit54_crit_edge: ; preds = %c2port_strobe_ck.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit54

if.then.i52:                                      ; preds = %c2port_strobe_ck.exit48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit54

c2port_strobe_ck.exit54:                          ; preds = %if.then.i52, %c2port_strobe_ck.exit48.c2port_strobe_ck.exit54_crit_edge
  %c2ck_set.i53 = getelementptr inbounds %struct.c2port_ops, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %c2ck_set.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c2ck_set.i53, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = ptrtoint ptr %c2ck_set.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %c2ck_set.i53, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %33 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c2d_set, align 4
  tail call void %34(ptr noundef %dev, i32 noundef 0) #12
  %35 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops1, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i56 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i56)
  %tobool.not.i57 = icmp eq i32 %and.i.i.i56, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i57, label %if.then.i58, label %c2port_strobe_ck.exit54.c2port_strobe_ck.exit60_crit_edge

c2port_strobe_ck.exit54.c2port_strobe_ck.exit60_crit_edge: ; preds = %c2port_strobe_ck.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit60

if.then.i58:                                      ; preds = %c2port_strobe_ck.exit54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit60

c2port_strobe_ck.exit60:                          ; preds = %if.then.i58, %c2port_strobe_ck.exit54.c2port_strobe_ck.exit60_crit_edge
  %c2ck_set.i59 = getelementptr inbounds %struct.c2port_ops, ptr %36, i32 0, i32 6
  %38 = ptrtoint ptr %c2ck_set.i59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %c2ck_set.i59, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #12
  %41 = ptrtoint ptr %c2ck_set.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c2ck_set.i59, align 4
  tail call void %42(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #12
  %44 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %c2d_set, align 4
  tail call void %45(ptr noundef %dev, i32 noundef 0) #12
  %46 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops1, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i62 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool.not.i63 = icmp eq i32 %and.i.i.i62, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i63, label %if.then.i64, label %c2port_strobe_ck.exit60.c2port_strobe_ck.exit66_crit_edge

c2port_strobe_ck.exit60.c2port_strobe_ck.exit66_crit_edge: ; preds = %c2port_strobe_ck.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit66

if.then.i64:                                      ; preds = %c2port_strobe_ck.exit60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit66

c2port_strobe_ck.exit66:                          ; preds = %if.then.i64, %c2port_strobe_ck.exit60.c2port_strobe_ck.exit66_crit_edge
  %c2ck_set.i65 = getelementptr inbounds %struct.c2port_ops, ptr %47, i32 0, i32 6
  %49 = ptrtoint ptr %c2ck_set.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c2ck_set.i65, align 4
  tail call void %50(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #12
  %52 = ptrtoint ptr %c2ck_set.i65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %c2ck_set.i65, align 4
  tail call void %53(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #12
  br label %for.body

for.body:                                         ; preds = %c2port_strobe_ck.exit72.for.body_crit_edge, %c2port_strobe_ck.exit66
  %i.088 = phi i32 [ 0, %c2port_strobe_ck.exit66 ], [ %inc, %c2port_strobe_ck.exit72.for.body_crit_edge ]
  %data.addr.087 = phi i8 [ %data, %c2port_strobe_ck.exit66 ], [ %67, %c2port_strobe_ck.exit72.for.body_crit_edge ]
  %55 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %c2d_set, align 4
  %57 = and i8 %data.addr.087, 1
  %and = zext i8 %57 to i32
  tail call void %56(ptr noundef %dev, i32 noundef %and) #12
  %58 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops1, align 4
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i68 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i68)
  %tobool.not.i69 = icmp eq i32 %and.i.i.i68, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i69, label %if.then.i70, label %for.body.c2port_strobe_ck.exit72_crit_edge

for.body.c2port_strobe_ck.exit72_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit72

if.then.i70:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit72

c2port_strobe_ck.exit72:                          ; preds = %if.then.i70, %for.body.c2port_strobe_ck.exit72_crit_edge
  %c2ck_set.i71 = getelementptr inbounds %struct.c2port_ops, ptr %59, i32 0, i32 6
  %61 = ptrtoint ptr %c2ck_set.i71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %c2ck_set.i71, align 4
  tail call void %62(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #12
  %64 = ptrtoint ptr %c2ck_set.i71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %c2ck_set.i71, align 4
  tail call void %65(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #12
  %67 = lshr i8 %data.addr.087, 1
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %c2port_strobe_ck.exit72.for.body_crit_edge

c2port_strobe_ck.exit72.for.body_crit_edge:       ; preds = %c2port_strobe_ck.exit72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %c2port_strobe_ck.exit72
  %68 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %c2d_dir, align 4
  tail call void %69(ptr noundef %dev, i32 noundef 1) #12
  %c2d_get = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.end
  %timeout.0 = phi i32 [ 20, %for.end ], [ %dec, %if.end.do.body_crit_edge ]
  %70 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops1, align 4
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i74 = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i74)
  %tobool.not.i75 = icmp eq i32 %and.i.i.i74, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i75, label %if.then.i76, label %do.body.c2port_strobe_ck.exit78_crit_edge

do.body.c2port_strobe_ck.exit78_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit78

if.then.i76:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit78

c2port_strobe_ck.exit78:                          ; preds = %if.then.i76, %do.body.c2port_strobe_ck.exit78_crit_edge
  %c2ck_set.i77 = getelementptr inbounds %struct.c2port_ops, ptr %71, i32 0, i32 6
  %73 = ptrtoint ptr %c2ck_set.i77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %c2ck_set.i77, align 4
  tail call void %74(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #12
  %76 = ptrtoint ptr %c2ck_set.i77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %c2ck_set.i77, align 4
  tail call void %77(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #12
  %79 = ptrtoint ptr %c2d_get to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %c2d_get, align 4
  %call = tail call i32 %80(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.end14

if.end:                                           ; preds = %c2port_strobe_ck.exit78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #12
  %dec = add nsw i32 %timeout.0, -1
  %cmp9.not = icmp eq i32 %dec, 0
  br i1 %cmp9.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %c2port_strobe_ck.exit78
  %82 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops1, align 4
  %84 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i80 = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i80)
  %tobool.not.i81 = icmp eq i32 %and.i.i.i80, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i81, label %if.then.i82, label %if.end14.c2port_strobe_ck.exit84_crit_edge

if.end14.c2port_strobe_ck.exit84_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit84

if.then.i82:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit84

c2port_strobe_ck.exit84:                          ; preds = %if.then.i82, %if.end14.c2port_strobe_ck.exit84_crit_edge
  %c2ck_set.i83 = getelementptr inbounds %struct.c2port_ops, ptr %83, i32 0, i32 6
  %85 = ptrtoint ptr %c2ck_set.i83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %c2ck_set.i83, align 4
  tail call void %86(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #12
  %88 = ptrtoint ptr %c2ck_set.i83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %c2ck_set.i83, align 4
  tail call void %89(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #12
  br label %cleanup

cleanup:                                          ; preds = %c2port_strobe_ck.exit84, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %c2port_strobe_ck.exit84 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c2port_poll_in_busy(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %addr, align 1, !annotation !151
  br label %do.body

do.body:                                          ; preds = %if.end2.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 20, %entry ], [ %dec, %if.end2.do.body_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %dev, ptr noundef nonnull %addr)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end2

if.end2:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %dec = add nsw i32 %timeout.0, -1
  %cmp3.not = icmp eq i32 %dec, 0
  br i1 %cmp3.not, label %if.end2.do.end.thread_crit_edge, label %if.end2.do.body_crit_edge

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end2.do.end.thread_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp5 = icmp eq i32 %timeout.0, 0
  br i1 %cmp5, label %do.end.do.end.thread_crit_edge, label %do.end._crit_edge

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %5

do.end.do.end.thread_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.end.do.end.thread_crit_edge, %if.end2.do.end.thread_crit_edge
  br label %5

5:                                                ; preds = %do.end.thread, %do.end._crit_edge
  %6 = phi i32 [ -5, %do.end.thread ], [ 0, %do.end._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c2port_poll_out_ready(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %addr, align 1, !annotation !151
  br label %do.body

do.body:                                          ; preds = %if.end2.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 10000, %entry ], [ %dec, %if.end2.do.body_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %dev, ptr noundef nonnull %addr)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end2, label %do.end

if.end2:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %dec = add nsw i32 %timeout.0, -1
  %cmp3.not = icmp eq i32 %dec, 0
  br i1 %cmp3.not, label %if.end2.do.end.thread_crit_edge, label %if.end2.do.body_crit_edge

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end2.do.end.thread_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp5 = icmp eq i32 %timeout.0, 0
  br i1 %cmp5, label %do.end.do.end.thread_crit_edge, label %do.end._crit_edge

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %5

do.end.do.end.thread_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.end.do.end.thread_crit_edge, %if.end2.do.end.thread_crit_edge
  br label %5

5:                                                ; preds = %do.end.thread, %do.end._crit_edge
  %6 = phi i32 [ -5, %do.end.thread ], [ 0, %do.end._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c2port_read_dr(ptr noundef %dev, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i, label %if.then.i, label %entry.c2port_strobe_ck.exit_crit_edge

entry.c2port_strobe_ck.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit

c2port_strobe_ck.exit:                            ; preds = %if.then.i, %entry.c2port_strobe_ck.exit_crit_edge
  %c2ck_set.i = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  %6 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c2d_dir, align 4
  tail call void %10(ptr noundef %dev, i32 noundef 0) #12
  %c2d_set = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c2d_set, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 0) #12
  %13 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops1, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i48 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48)
  %tobool.not.i49 = icmp eq i32 %and.i.i.i48, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i49, label %if.then.i50, label %c2port_strobe_ck.exit.c2port_strobe_ck.exit52_crit_edge

c2port_strobe_ck.exit.c2port_strobe_ck.exit52_crit_edge: ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit52

if.then.i50:                                      ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit52

c2port_strobe_ck.exit52:                          ; preds = %if.then.i50, %c2port_strobe_ck.exit.c2port_strobe_ck.exit52_crit_edge
  %c2ck_set.i51 = getelementptr inbounds %struct.c2port_ops, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %c2ck_set.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c2ck_set.i51, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %19 = ptrtoint ptr %c2ck_set.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c2ck_set.i51, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c2d_set, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 0) #12
  %24 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i54 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i54)
  %tobool.not.i55 = icmp eq i32 %and.i.i.i54, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i55, label %if.then.i56, label %c2port_strobe_ck.exit52.c2port_strobe_ck.exit58_crit_edge

c2port_strobe_ck.exit52.c2port_strobe_ck.exit58_crit_edge: ; preds = %c2port_strobe_ck.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit58

if.then.i56:                                      ; preds = %c2port_strobe_ck.exit52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit58

c2port_strobe_ck.exit58:                          ; preds = %if.then.i56, %c2port_strobe_ck.exit52.c2port_strobe_ck.exit58_crit_edge
  %c2ck_set.i57 = getelementptr inbounds %struct.c2port_ops, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %c2ck_set.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c2ck_set.i57, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = ptrtoint ptr %c2ck_set.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %c2ck_set.i57, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %33 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c2d_set, align 4
  tail call void %34(ptr noundef %dev, i32 noundef 0) #12
  %35 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops1, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i60 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i60)
  %tobool.not.i61 = icmp eq i32 %and.i.i.i60, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i61, label %if.then.i62, label %c2port_strobe_ck.exit58.c2port_strobe_ck.exit64_crit_edge

c2port_strobe_ck.exit58.c2port_strobe_ck.exit64_crit_edge: ; preds = %c2port_strobe_ck.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit64

if.then.i62:                                      ; preds = %c2port_strobe_ck.exit58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit64

c2port_strobe_ck.exit64:                          ; preds = %if.then.i62, %c2port_strobe_ck.exit58.c2port_strobe_ck.exit64_crit_edge
  %c2ck_set.i63 = getelementptr inbounds %struct.c2port_ops, ptr %36, i32 0, i32 6
  %38 = ptrtoint ptr %c2ck_set.i63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %c2ck_set.i63, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #12
  %41 = ptrtoint ptr %c2ck_set.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c2ck_set.i63, align 4
  tail call void %42(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #12
  %44 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %c2d_set, align 4
  tail call void %45(ptr noundef %dev, i32 noundef 0) #12
  %46 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops1, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i66 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66)
  %tobool.not.i67 = icmp eq i32 %and.i.i.i66, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i67, label %if.then.i68, label %c2port_strobe_ck.exit64.c2port_strobe_ck.exit70_crit_edge

c2port_strobe_ck.exit64.c2port_strobe_ck.exit70_crit_edge: ; preds = %c2port_strobe_ck.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit70

if.then.i68:                                      ; preds = %c2port_strobe_ck.exit64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit70

c2port_strobe_ck.exit70:                          ; preds = %if.then.i68, %c2port_strobe_ck.exit64.c2port_strobe_ck.exit70_crit_edge
  %c2ck_set.i69 = getelementptr inbounds %struct.c2port_ops, ptr %47, i32 0, i32 6
  %49 = ptrtoint ptr %c2ck_set.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c2ck_set.i69, align 4
  tail call void %50(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #12
  %52 = ptrtoint ptr %c2ck_set.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %c2ck_set.i69, align 4
  tail call void %53(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #12
  %55 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %c2d_dir, align 4
  tail call void %56(ptr noundef %dev, i32 noundef 1) #12
  %c2d_get = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %c2port_strobe_ck.exit70
  %timeout.0 = phi i32 [ 20, %c2port_strobe_ck.exit70 ], [ %dec, %if.end.do.body_crit_edge ]
  %57 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops1, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i72 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.not.i73 = icmp eq i32 %and.i.i.i72, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i73, label %if.then.i74, label %do.body.c2port_strobe_ck.exit76_crit_edge

do.body.c2port_strobe_ck.exit76_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit76

if.then.i74:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit76

c2port_strobe_ck.exit76:                          ; preds = %if.then.i74, %do.body.c2port_strobe_ck.exit76_crit_edge
  %c2ck_set.i75 = getelementptr inbounds %struct.c2port_ops, ptr %58, i32 0, i32 6
  %60 = ptrtoint ptr %c2ck_set.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %c2ck_set.i75, align 4
  tail call void %61(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #12
  %63 = ptrtoint ptr %c2ck_set.i75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %c2ck_set.i75, align 4
  tail call void %64(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #12
  %66 = ptrtoint ptr %c2d_get to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %c2d_get, align 4
  %call = tail call i32 %67(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.end8

if.end:                                           ; preds = %c2port_strobe_ck.exit76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #12
  %dec = add nsw i32 %timeout.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %c2port_strobe_ck.exit76
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %data, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.094 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data, align 1
  %72 = lshr i8 %71, 1
  store i8 %72, ptr %data, align 1
  %73 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops1, align 4
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i78 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i78)
  %tobool.not.i79 = icmp eq i32 %and.i.i.i78, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i79, label %if.then.i80, label %for.body.c2port_strobe_ck.exit82_crit_edge

for.body.c2port_strobe_ck.exit82_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit82

if.then.i80:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit82

c2port_strobe_ck.exit82:                          ; preds = %if.then.i80, %for.body.c2port_strobe_ck.exit82_crit_edge
  %c2ck_set.i81 = getelementptr inbounds %struct.c2port_ops, ptr %74, i32 0, i32 6
  %76 = ptrtoint ptr %c2ck_set.i81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %c2ck_set.i81, align 4
  tail call void %77(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #12
  %79 = ptrtoint ptr %c2ck_set.i81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %c2ck_set.i81, align 4
  tail call void %80(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #12
  %82 = ptrtoint ptr %c2d_get to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %c2d_get, align 4
  %call12 = tail call i32 %83(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %c2port_strobe_ck.exit82.for.inc_crit_edge, label %if.then14

c2port_strobe_ck.exit82.for.inc_crit_edge:        ; preds = %c2port_strobe_ck.exit82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %c2port_strobe_ck.exit82
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %data, align 1
  %86 = or i8 %85, -128
  store i8 %86, ptr %data, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %c2port_strobe_ck.exit82.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %87 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops1, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i84 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i84)
  %tobool.not.i85 = icmp eq i32 %and.i.i.i84, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i85, label %if.then.i86, label %for.end.c2port_strobe_ck.exit88_crit_edge

for.end.c2port_strobe_ck.exit88_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit88

if.then.i86:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit88

c2port_strobe_ck.exit88:                          ; preds = %if.then.i86, %for.end.c2port_strobe_ck.exit88_crit_edge
  %c2ck_set.i87 = getelementptr inbounds %struct.c2port_ops, ptr %88, i32 0, i32 6
  %90 = ptrtoint ptr %c2ck_set.i87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %c2ck_set.i87, align 4
  tail call void %91(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748) #12
  %93 = ptrtoint ptr %c2ck_set.i87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %c2ck_set.i87, align 4
  tail call void %94(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #12
  br label %cleanup

cleanup:                                          ; preds = %c2port_strobe_ck.exit88, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %c2port_strobe_ck.exit88 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c2port_read_ar(ptr noundef %dev, ptr nocapture noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i, label %if.then.i, label %entry.c2port_strobe_ck.exit_crit_edge

entry.c2port_strobe_ck.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit

c2port_strobe_ck.exit:                            ; preds = %if.then.i, %entry.c2port_strobe_ck.exit_crit_edge
  %c2ck_set.i = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  %6 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c2d_dir, align 4
  tail call void %10(ptr noundef %dev, i32 noundef 0) #12
  %c2d_set = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c2d_set, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 0) #12
  %13 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops1, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i2 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2)
  %tobool.not.i3 = icmp eq i32 %and.i.i.i2, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i3, label %if.then.i4, label %c2port_strobe_ck.exit.c2port_strobe_ck.exit6_crit_edge

c2port_strobe_ck.exit.c2port_strobe_ck.exit6_crit_edge: ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit6

if.then.i4:                                       ; preds = %c2port_strobe_ck.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit6

c2port_strobe_ck.exit6:                           ; preds = %if.then.i4, %c2port_strobe_ck.exit.c2port_strobe_ck.exit6_crit_edge
  %c2ck_set.i5 = getelementptr inbounds %struct.c2port_ops, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %c2ck_set.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c2ck_set.i5, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %19 = ptrtoint ptr %c2ck_set.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c2ck_set.i5, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = ptrtoint ptr %c2d_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c2d_set, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 1) #12
  %24 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i8 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8)
  %tobool.not.i9 = icmp eq i32 %and.i.i.i8, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i9, label %if.then.i10, label %c2port_strobe_ck.exit6.c2port_strobe_ck.exit12_crit_edge

c2port_strobe_ck.exit6.c2port_strobe_ck.exit12_crit_edge: ; preds = %c2port_strobe_ck.exit6
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit12

if.then.i10:                                      ; preds = %c2port_strobe_ck.exit6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit12

c2port_strobe_ck.exit12:                          ; preds = %if.then.i10, %c2port_strobe_ck.exit6.c2port_strobe_ck.exit12_crit_edge
  %c2ck_set.i11 = getelementptr inbounds %struct.c2port_ops, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %c2ck_set.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c2ck_set.i11, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = ptrtoint ptr %c2ck_set.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %c2ck_set.i11, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %33 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c2d_dir, align 4
  tail call void %34(ptr noundef %dev, i32 noundef 1) #12
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %addr, align 1
  %c2d_get = getelementptr inbounds %struct.c2port_ops, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %c2port_strobe_ck.exit12
  %i.025 = phi i32 [ 0, %c2port_strobe_ck.exit12 ], [ %inc, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr, align 1
  %38 = lshr i8 %37, 1
  store i8 %38, ptr %addr, align 1
  %39 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops1, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i14 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i14)
  %tobool.not.i15 = icmp eq i32 %and.i.i.i14, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i15, label %if.then.i16, label %for.body.c2port_strobe_ck.exit18_crit_edge

for.body.c2port_strobe_ck.exit18_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit18

if.then.i16:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit18

c2port_strobe_ck.exit18:                          ; preds = %if.then.i16, %for.body.c2port_strobe_ck.exit18_crit_edge
  %c2ck_set.i17 = getelementptr inbounds %struct.c2port_ops, ptr %40, i32 0, i32 6
  %42 = ptrtoint ptr %c2ck_set.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %c2ck_set.i17, align 4
  tail call void %43(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #12
  %45 = ptrtoint ptr %c2ck_set.i17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %c2ck_set.i17, align 4
  tail call void %46(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #12
  %48 = ptrtoint ptr %c2d_get to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %c2d_get, align 4
  %call = tail call i32 %49(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %c2port_strobe_ck.exit18.for.inc_crit_edge, label %if.then

c2port_strobe_ck.exit18.for.inc_crit_edge:        ; preds = %c2port_strobe_ck.exit18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %c2port_strobe_ck.exit18
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %addr, align 1
  %52 = or i8 %51, -128
  store i8 %52, ptr %addr, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %c2port_strobe_ck.exit18.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %53 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops1, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i20 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20)
  %tobool.not.i21 = icmp eq i32 %and.i.i.i20, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i21, label %if.then.i22, label %for.end.c2port_strobe_ck.exit24_crit_edge

for.end.c2port_strobe_ck.exit24_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_strobe_ck.exit24

if.then.i22:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_strobe_ck.exit24

c2port_strobe_ck.exit24:                          ; preds = %if.then.i22, %for.end.c2port_strobe_ck.exit24_crit_edge
  %c2ck_set.i23 = getelementptr inbounds %struct.c2port_ops, ptr %54, i32 0, i32 6
  %56 = ptrtoint ptr %c2ck_set.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %c2ck_set.i23, align 4
  tail call void %57(ptr noundef %dev, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #12
  %59 = ptrtoint ptr %c2ck_set.i23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %c2ck_set.i23, align 4
  tail call void %60(ptr noundef %dev, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, ptr noundef %name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_flash_blocks_num(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %blocks_num = getelementptr inbounds %struct.c2port_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blocks_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blocks_num, align 2
  %conv = zext i16 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_flash_block_size(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = zext i16 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_flash_size(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %blocks_num = getelementptr inbounds %struct.c2port_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blocks_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blocks_num, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv2 = zext i16 %7 to i32
  %mul = mul nuw i32 %conv2, %conv
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @access_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %bf.cast)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @access_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops1 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !151
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %1, align 4
  %bf.shl = select i1 %tobool.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %1, align 4
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %c2ck_set = getelementptr inbounds %struct.c2port_ops, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %c2ck_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c2ck_set, align 4
  call void %9(ptr noundef %1, i32 noundef 1) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %access = getelementptr inbounds %struct.c2port_ops, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %access, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load8 = load i8, ptr %1, align 4
  %bf.lshr9 = lshr i8 %bf.load8, 7
  %bf.cast10 = zext i8 %bf.lshr9 to i32
  call void %11(ptr noundef %1, i32 noundef %bf.cast10) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load11 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load11)
  %tobool14.not = icmp sgt i8 %bf.load11, -1
  br i1 %tobool14.not, label %if.end7.if.end16_crit_edge, label %if.then15

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %c2d_dir = getelementptr inbounds %struct.c2port_ops, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %c2d_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c2d_dir, align 4
  call void %15(ptr noundef %1, i32 noundef 1) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end7.if.end16_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end16 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_store_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %ops1.i = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops1.i, align 4
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !152
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !153
  br i1 %tobool.not.i, label %if.then.i, label %if.end.c2port_reset.exit_crit_edge

if.end.c2port_reset.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_reset.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %c2port_reset.exit

c2port_reset.exit:                                ; preds = %if.then.i, %if.end.c2port_reset.exit_crit_edge
  %c2ck_set.i = getelementptr inbounds %struct.c2port_ops, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 5368700) #12
  %9 = ptrtoint ptr %c2ck_set.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c2ck_set.i, align 4
  tail call void %10(ptr noundef %1, i32 noundef 1) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load1 = load i8, ptr %1, align 4
  %bf.clear = and i8 %bf.load1, -65
  store i8 %bf.clear, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %c2port_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %c2port_reset.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_dev_id(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #12
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !151
  tail call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext 0) #12
  %call.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__c2port_show_dev_id.exit.thread, label %__c2port_show_dev_id.exit

__c2port_show_dev_id.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %do.end

__c2port_show_dev_id.exit:                        ; preds = %if.end
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %5 to i32
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %__c2port_show_dev_id.exit.do.end_crit_edge, label %__c2port_show_dev_id.exit.cleanup_crit_edge

__c2port_show_dev_id.exit.cleanup_crit_edge:      ; preds = %__c2port_show_dev_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__c2port_show_dev_id.exit.do.end_crit_edge:       ; preds = %__c2port_show_dev_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %__c2port_show_dev_id.exit.do.end_crit_edge, %__c2port_show_dev_id.exit.thread
  %retval.0.i14 = phi i32 [ %call.i, %__c2port_show_dev_id.exit.thread ], [ %call1.i, %__c2port_show_dev_id.exit.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_show_dev_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.i14, %do.end ], [ %call1.i, %__c2port_show_dev_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_rev_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #12
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !151
  tail call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext 1) #12
  %call.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__c2port_show_rev_id.exit.thread, label %__c2port_show_rev_id.exit

__c2port_show_rev_id.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %do.end

__c2port_show_rev_id.exit:                        ; preds = %if.end
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %5 to i32
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %__c2port_show_rev_id.exit.do.end_crit_edge, label %__c2port_show_rev_id.exit.cleanup_crit_edge

__c2port_show_rev_id.exit.cleanup_crit_edge:      ; preds = %__c2port_show_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__c2port_show_rev_id.exit.do.end_crit_edge:       ; preds = %__c2port_show_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %__c2port_show_rev_id.exit.do.end_crit_edge, %__c2port_show_rev_id.exit.thread
  %retval.0.i15 = phi i32 [ %call.i, %__c2port_show_rev_id.exit.thread ], [ %call1.i, %__c2port_show_rev_id.exit.do.end_crit_edge ]
  %dev4 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_show_rev_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.i15, %do.end ], [ %call1.i, %__c2port_show_rev_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_show_flash_access(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %bf.cast)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_store_flash_access(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !151
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %bf.shl.i = select i1 %tobool1.not.i, i8 0, i8 64
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set.i, ptr %1, align 4
  br i1 %tobool1.not.i, label %if.end.i.__c2port_store_flash_access.exit_crit_edge, label %if.end9.i

if.end.i.__c2port_store_flash_access.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__c2port_store_flash_access.exit

if.end9.i:                                        ; preds = %if.end.i
  call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext 2) #12
  %call.i = call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %if.end9.i.do.end_crit_edge, label %if.end12.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end12.i:                                       ; preds = %if.end9.i
  %call13.i = call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.do.end_crit_edge, label %while.body.preheader.i

if.end12.i.do.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.body.preheader.i:                           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #12
  br label %__c2port_store_flash_access.exit

__c2port_store_flash_access.exit:                 ; preds = %while.body.preheader.i, %if.end.i.__c2port_store_flash_access.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

do.end:                                           ; preds = %if.end12.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call13.i, %if.end12.i.do.end_crit_edge ], [ %call.i, %if.end9.i.do.end_crit_edge ], [ -16, %if.end.do.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  %dev6 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.44, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_store_flash_access.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %count, %__c2port_store_flash_access.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c2port_store_flash_erase(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  %addr.i105.i = alloca i8, align 1
  %addr.i94.i = alloca i8, align 1
  %addr.i83.i = alloca i8, align 1
  %addr.i72.i = alloca i8, align 1
  %addr.i62.i = alloca i8, align 1
  %addr.i.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status.i, align 1, !annotation !151
  tail call fastcc void @c2port_write_ar(ptr noundef %1, i8 noundef zeroext -76) #12
  %call.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext 3) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i.i) #12
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %addr.i.i, align 1, !annotation !151
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end
  %timeout.0.i.i = phi i32 [ 20, %if.end ], [ %dec.i.i, %if.end2.i.i.do.body.i.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i.i) #12
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i.i, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp3.not.i.i, label %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp5.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, label %if.end.i

do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit.thread.i

c2port_poll_in_busy.exit.thread.i:                ; preds = %do.end.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge, %if.end2.i.i.c2port_poll_in_busy.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  br label %do.end

if.end.i:                                         ; preds = %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i62.i) #12
  %9 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %addr.i62.i, align 1, !annotation !151
  br label %do.body.i65.i

do.body.i65.i:                                    ; preds = %if.end2.i68.i.do.body.i65.i_crit_edge, %if.end.i
  %timeout.0.i63.i = phi i32 [ 10000, %if.end.i ], [ %dec.i66.i, %if.end2.i68.i.do.body.i65.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i62.i) #12
  %10 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr.i62.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i64.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i64.i, label %if.end2.i68.i, label %do.end.i70.i

if.end2.i68.i:                                    ; preds = %do.body.i65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #12
  %dec.i66.i = add nsw i32 %timeout.0.i63.i, -1
  %cmp3.not.i67.i = icmp eq i32 %dec.i66.i, 0
  br i1 %cmp3.not.i67.i, label %if.end2.i68.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end2.i68.i.do.body.i65.i_crit_edge

if.end2.i68.i.do.body.i65.i_crit_edge:            ; preds = %if.end2.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i65.i

if.end2.i68.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %if.end2.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

do.end.i70.i:                                     ; preds = %do.body.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i63.i)
  %cmp5.i69.i = icmp eq i32 %timeout.0.i63.i, 0
  br i1 %cmp5.i69.i, label %do.end.i70.i.c2port_poll_out_ready.exit.thread.i_crit_edge, label %if.end5.i

do.end.i70.i.c2port_poll_out_ready.exit.thread.i_crit_edge: ; preds = %do.end.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_out_ready.exit.thread.i

c2port_poll_out_ready.exit.thread.i:              ; preds = %do.end.i70.i.c2port_poll_out_ready.exit.thread.i_crit_edge, %if.end2.i68.i.c2port_poll_out_ready.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i62.i) #12
  br label %do.end

if.end5.i:                                        ; preds = %do.end.i70.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i62.i) #12
  %call6.i = call fastcc i32 @c2port_read_dr(ptr noundef %1, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.do.end_crit_edge, label %if.end9.i

if.end5.i.do.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end9.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %15)
  %cmp10.not.i = icmp eq i8 %15, 13
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end9.i.do.end_crit_edge

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext -34) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i72.i) #12
  %16 = ptrtoint ptr %addr.i72.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %addr.i72.i, align 1, !annotation !151
  br label %do.body.i75.i

do.body.i75.i:                                    ; preds = %if.end2.i78.i.do.body.i75.i_crit_edge, %if.end13.i
  %timeout.0.i73.i = phi i32 [ 20, %if.end13.i ], [ %dec.i76.i, %if.end2.i78.i.do.body.i75.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i72.i) #12
  %17 = ptrtoint ptr %addr.i72.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr.i72.i, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i74.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i74.i, label %do.end.i80.i, label %if.end2.i78.i

if.end2.i78.i:                                    ; preds = %do.body.i75.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #12
  %dec.i76.i = add nsw i32 %timeout.0.i73.i, -1
  %cmp3.not.i77.i = icmp eq i32 %dec.i76.i, 0
  br i1 %cmp3.not.i77.i, label %if.end2.i78.i.c2port_poll_in_busy.exit82.thread.i_crit_edge, label %if.end2.i78.i.do.body.i75.i_crit_edge

if.end2.i78.i.do.body.i75.i_crit_edge:            ; preds = %if.end2.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i75.i

if.end2.i78.i.c2port_poll_in_busy.exit82.thread.i_crit_edge: ; preds = %if.end2.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit82.thread.i

do.end.i80.i:                                     ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i73.i)
  %cmp5.i79.i = icmp eq i32 %timeout.0.i73.i, 0
  br i1 %cmp5.i79.i, label %do.end.i80.i.c2port_poll_in_busy.exit82.thread.i_crit_edge, label %if.end19.i

do.end.i80.i.c2port_poll_in_busy.exit82.thread.i_crit_edge: ; preds = %do.end.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit82.thread.i

c2port_poll_in_busy.exit82.thread.i:              ; preds = %do.end.i80.i.c2port_poll_in_busy.exit82.thread.i_crit_edge, %if.end2.i78.i.c2port_poll_in_busy.exit82.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i72.i) #12
  br label %do.end

if.end19.i:                                       ; preds = %do.end.i80.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i72.i) #12
  %call20.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext -83) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i83.i) #12
  %21 = ptrtoint ptr %addr.i83.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %addr.i83.i, align 1, !annotation !151
  br label %do.body.i86.i

do.body.i86.i:                                    ; preds = %if.end2.i89.i.do.body.i86.i_crit_edge, %if.end19.i
  %timeout.0.i84.i = phi i32 [ 20, %if.end19.i ], [ %dec.i87.i, %if.end2.i89.i.do.body.i86.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i83.i) #12
  %22 = ptrtoint ptr %addr.i83.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr.i83.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i85.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i85.i, label %do.end.i91.i, label %if.end2.i89.i

if.end2.i89.i:                                    ; preds = %do.body.i86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #12
  %dec.i87.i = add nsw i32 %timeout.0.i84.i, -1
  %cmp3.not.i88.i = icmp eq i32 %dec.i87.i, 0
  br i1 %cmp3.not.i88.i, label %if.end2.i89.i.c2port_poll_in_busy.exit93.thread.i_crit_edge, label %if.end2.i89.i.do.body.i86.i_crit_edge

if.end2.i89.i.do.body.i86.i_crit_edge:            ; preds = %if.end2.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i86.i

if.end2.i89.i.c2port_poll_in_busy.exit93.thread.i_crit_edge: ; preds = %if.end2.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit93.thread.i

do.end.i91.i:                                     ; preds = %do.body.i86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i84.i)
  %cmp5.i90.i = icmp eq i32 %timeout.0.i84.i, 0
  br i1 %cmp5.i90.i, label %do.end.i91.i.c2port_poll_in_busy.exit93.thread.i_crit_edge, label %if.end25.i

do.end.i91.i.c2port_poll_in_busy.exit93.thread.i_crit_edge: ; preds = %do.end.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit93.thread.i

c2port_poll_in_busy.exit93.thread.i:              ; preds = %do.end.i91.i.c2port_poll_in_busy.exit93.thread.i_crit_edge, %if.end2.i89.i.c2port_poll_in_busy.exit93.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i83.i) #12
  br label %do.end

if.end25.i:                                       ; preds = %do.end.i91.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i83.i) #12
  %call26.i = tail call fastcc i32 @c2port_write_dr(ptr noundef %1, i8 noundef zeroext -91) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i94.i) #12
  %26 = ptrtoint ptr %addr.i94.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %addr.i94.i, align 1, !annotation !151
  br label %do.body.i97.i

do.body.i97.i:                                    ; preds = %if.end2.i100.i.do.body.i97.i_crit_edge, %if.end25.i
  %timeout.0.i95.i = phi i32 [ 20, %if.end25.i ], [ %dec.i98.i, %if.end2.i100.i.do.body.i97.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i94.i) #12
  %27 = ptrtoint ptr %addr.i94.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr.i94.i, align 1
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i96.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i96.i, label %do.end.i102.i, label %if.end2.i100.i

if.end2.i100.i:                                   ; preds = %do.body.i97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %dec.i98.i = add nsw i32 %timeout.0.i95.i, -1
  %cmp3.not.i99.i = icmp eq i32 %dec.i98.i, 0
  br i1 %cmp3.not.i99.i, label %if.end2.i100.i.c2port_poll_in_busy.exit104.thread.i_crit_edge, label %if.end2.i100.i.do.body.i97.i_crit_edge

if.end2.i100.i.do.body.i97.i_crit_edge:           ; preds = %if.end2.i100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i97.i

if.end2.i100.i.c2port_poll_in_busy.exit104.thread.i_crit_edge: ; preds = %if.end2.i100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit104.thread.i

do.end.i102.i:                                    ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i95.i)
  %cmp5.i101.i = icmp eq i32 %timeout.0.i95.i, 0
  br i1 %cmp5.i101.i, label %do.end.i102.i.c2port_poll_in_busy.exit104.thread.i_crit_edge, label %if.end31.i

do.end.i102.i.c2port_poll_in_busy.exit104.thread.i_crit_edge: ; preds = %do.end.i102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %c2port_poll_in_busy.exit104.thread.i

c2port_poll_in_busy.exit104.thread.i:             ; preds = %do.end.i102.i.c2port_poll_in_busy.exit104.thread.i_crit_edge, %if.end2.i100.i.c2port_poll_in_busy.exit104.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i94.i) #12
  br label %do.end

if.end31.i:                                       ; preds = %do.end.i102.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i94.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i105.i) #12
  %31 = ptrtoint ptr %addr.i105.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %addr.i105.i, align 1, !annotation !151
  br label %do.body.i108.i

do.body.i108.i:                                   ; preds = %if.end2.i111.i.do.body.i108.i_crit_edge, %if.end31.i
  %timeout.0.i106.i = phi i32 [ 10000, %if.end31.i ], [ %dec.i109.i, %if.end2.i111.i.do.body.i108.i_crit_edge ]
  call fastcc void @c2port_read_ar(ptr noundef %1, ptr noundef nonnull %addr.i105.i) #12
  %32 = ptrtoint ptr %addr.i105.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr.i105.i, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i107.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i107.i, label %if.end2.i111.i, label %do.end.i113.i

if.end2.i111.i:                                   ; preds = %do.body.i108.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #12
  %dec.i109.i = add nsw i32 %timeout.0.i106.i, -1
  %cmp3.not.i110.i = icmp eq i32 %dec.i109.i, 0
  br i1 %cmp3.not.i110.i, label %if.end2.i111.i..loopexit.i_crit_edge, label %if.end2.i111.i.do.body.i108.i_crit_edge

if.end2.i111.i.do.body.i108.i_crit_edge:          ; preds = %if.end2.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i108.i

if.end2.i111.i..loopexit.i_crit_edge:             ; preds = %if.end2.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %.loopexit.i

do.end.i113.i:                                    ; preds = %do.body.i108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i106.i)
  %cmp5.i112.i = icmp eq i32 %timeout.0.i106.i, 0
  br i1 %cmp5.i112.i, label %do.end.i113.i..loopexit.i_crit_edge, label %__c2port_write_flash_erase.exit

do.end.i113.i..loopexit.i_crit_edge:              ; preds = %do.end.i113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %do.end.i113.i..loopexit.i_crit_edge, %if.end2.i111.i..loopexit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i105.i) #12
  br label %do.end

__c2port_write_flash_erase.exit:                  ; preds = %do.end.i113.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i105.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

do.end:                                           ; preds = %.loopexit.i, %c2port_poll_in_busy.exit104.thread.i, %c2port_poll_in_busy.exit93.thread.i, %c2port_poll_in_busy.exit82.thread.i, %if.end9.i.do.end_crit_edge, %if.end5.i.do.end_crit_edge, %c2port_poll_out_ready.exit.thread.i, %c2port_poll_in_busy.exit.thread.i
  %retval.0.i.ph = phi i32 [ -5, %.loopexit.i ], [ -5, %c2port_poll_in_busy.exit104.thread.i ], [ -5, %c2port_poll_in_busy.exit93.thread.i ], [ -5, %c2port_poll_in_busy.exit82.thread.i ], [ -5, %c2port_poll_out_ready.exit.thread.i ], [ -5, %c2port_poll_in_busy.exit.thread.i ], [ -16, %if.end9.i.do.end_crit_edge ], [ %call6.i, %if.end5.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %dev8 = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.c2port_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.47, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__c2port_write_flash_erase.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ %count, %__c2port_write_flash_erase.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !84, !86, !88, !89, !91, !93, !94, !96, !97, !99, !100, !102, !104, !105, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !135, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/c2port/core.c", i32 919, i32 8}
!2 = !{ptr @c2port_device_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/misc/c2port/core.c", i32 928, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/misc/c2port/core.c", i32 934, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @c2port_device_register._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @c2port_device_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/c2port/core.c", i32 935, i32 2}
!15 = !{ptr @c2port_device_register._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @c2port_device_register._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_c2port_device_register, !18, !"__ksymtab_c2port_device_register", i1 false, i1 false}
!18 = !{!"../drivers/misc/c2port/core.c", i32 952, i32 1}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/c2port/core.c", i32 959, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @c2port_device_unregister._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @c2port_device_unregister._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_c2port_device_unregister, !25, !"__ksymtab_c2port_device_unregister", i1 false, i1 false}
!25 = !{!"../drivers/misc/c2port/core.c", i32 969, i32 1}
!26 = !{ptr @__initcall__kmod_core__183_995_c2port_init6, !27, !"__initcall__kmod_core__183_995_c2port_init6", i1 false, i1 false}
!27 = !{!"../drivers/misc/c2port/core.c", i32 995, i32 1}
!28 = !{ptr @__exitcall_c2port_exit, !29, !"__exitcall_c2port_exit", i1 false, i1 false}
!29 = !{!"../drivers/misc/c2port/core.c", i32 996, i32 1}
!30 = !{ptr @__UNIQUE_ID_author184, !31, !"__UNIQUE_ID_author184", i1 false, i1 false}
!31 = !{!"../drivers/misc/c2port/core.c", i32 998, i32 1}
!32 = !{ptr @__UNIQUE_ID_description185, !33, !"__UNIQUE_ID_description185", i1 false, i1 false}
!33 = !{!"../drivers/misc/c2port/core.c", i32 999, i32 1}
!34 = !{ptr @__UNIQUE_ID_file186, !35, !"__UNIQUE_ID_file186", i1 false, i1 false}
!35 = !{!"../drivers/misc/c2port/core.c", i32 1000, i32 1}
!36 = !{ptr @__UNIQUE_ID_license187, !35, !"__UNIQUE_ID_license187", i1 false, i1 false}
!37 = !{ptr @c2port_class, !38, !"c2port_class", i1 false, i1 false}
!38 = !{!"../drivers/misc/c2port/core.c", i32 33, i32 22}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/c2port/core.c", i32 26, i32 8}
!41 = !{ptr @c2port_idr_lock, !40, !"c2port_idr_lock", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/c2port/core.c", i32 27, i32 8}
!44 = !{ptr @c2port_idr, !43, !"c2port_idr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/c2port/core.c", i32 852, i32 8}
!51 = !{ptr @bin_attr_flash_data, !50, !"bin_attr_flash_data", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/c2port/core.c", i32 732, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @c2port_read_flash_data._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @c2port_read_flash_data._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/c2port/core.c", i32 847, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @c2port_write_flash_data._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @c2port_write_flash_data._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/c2port/core.c", i32 977, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @c2port_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @c2port_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @c2port_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/misc/c2port/core.c", i32 980, i32 17}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/c2port/core.c", i32 982, i32 3}
!73 = !{ptr @c2port_init._entry.26, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @c2port_init._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @c2port_groups, !76, !"c2port_groups", i1 false, i1 false}
!76 = !{!"../drivers/misc/c2port/core.c", i32 882, i32 38}
!77 = !{ptr @c2port_group, !78, !"c2port_group", i1 false, i1 false}
!78 = !{!"../drivers/misc/c2port/core.c", i32 877, i32 37}
!79 = !{ptr @c2port_attrs, !80, !"c2port_attrs", i1 false, i1 false}
!80 = !{!"../drivers/misc/c2port/core.c", i32 858, i32 26}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/c2port/core.c", i32 310, i32 8}
!83 = !{ptr @dev_attr_name, !82, !"dev_attr_name", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/c2port/core.c", i32 308, i32 22}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/c2port/core.c", i32 320, i32 8}
!88 = !{ptr @dev_attr_flash_blocks_num, !87, !"dev_attr_flash_blocks_num", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/c2port/core.c", i32 318, i32 22}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/c2port/core.c", i32 330, i32 8}
!93 = !{ptr @dev_attr_flash_block_size, !92, !"dev_attr_flash_block_size", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/c2port/core.c", i32 340, i32 8}
!96 = !{ptr @dev_attr_flash_size, !95, !"dev_attr_flash_size", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/c2port/core.c", i32 377, i32 8}
!99 = !{ptr @dev_attr_access, !98, !"dev_attr_access", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/c2port/core.c", i32 357, i32 20}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/c2port/core.c", i32 398, i32 8}
!104 = !{ptr @dev_attr_reset, !103, !"dev_attr_reset", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/c2port/core.c", i32 435, i32 8}
!107 = !{ptr @dev_attr_dev_id, !106, !"dev_attr_dev_id", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/c2port/core.c", i32 431, i32 3}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @c2port_show_dev_id._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @c2port_show_dev_id._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/c2port/core.c", i32 472, i32 8}
!115 = !{ptr @dev_attr_rev_id, !114, !"dev_attr_rev_id", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/c2port/core.c", i32 468, i32 3}
!118 = !{ptr @c2port_show_rev_id._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @c2port_show_rev_id._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/c2port/core.c", i32 542, i32 8}
!122 = !{ptr @dev_attr_flash_access, !121, !"dev_attr_flash_access", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/c2port/core.c", i32 535, i32 3}
!125 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @c2port_store_flash_access._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @c2port_store_flash_access._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/misc/c2port/core.c", i32 624, i32 8}
!130 = !{ptr @dev_attr_flash_erase, !129, !"dev_attr_flash_erase", i1 false, i1 false}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/misc/c2port/core.c", i32 618, i32 3}
!133 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @c2port_store_flash_erase._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @c2port_store_flash_erase._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @c2port_bin_attrs, !137, !"c2port_bin_attrs", i1 false, i1 false}
!137 = !{!"../drivers/misc/c2port/core.c", i32 872, i32 30}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2151459260}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{!"auto-init"}
!152 = !{i64 766457}
!153 = !{i64 764160}
!154 = !{i64 763970}

; ModuleID = '/llk/IR_all_yes/fs/pstore/zone.c_pt.bc'
source_filename = "../fs/pstore/zone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_pstore_zone\22, \22a\22\09"
module asm "\09.weak\09__crc_register_pstore_zone\09\09\09\09"
module asm "\09.long\09__crc_register_pstore_zone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pstore_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pstore_zone\22\09\09\09\09\09"
module asm "__kstrtabns_register_pstore_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_pstore_zone\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_pstore_zone\09\09\09\09"
module asm "\09.long\09__crc_unregister_pstore_zone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pstore_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pstore_zone\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pstore_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.psz_context = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.mutex, ptr, %struct.pstore_info }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pstore_zone_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pstore_zone = type { i64, ptr, i32, ptr, ptr, i32, i8, %struct.atomic_t }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.psz_buffer = type { i32, %struct.atomic_t, %struct.atomic_t, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@pstore_zone_cxt = internal global { %struct.psz_context, [92 x i8] } { %struct.psz_context { ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pstore_zone_cxt, i64 112), ptr getelementptr (i8, ptr @pstore_zone_cxt, i64 112) }, ptr getelementptr (i8, ptr @pstore_zone_cxt, i64 60), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null, %struct.pstore_info { ptr null, ptr null, %struct.semaphore zeroinitializer, ptr null, i32 0, %struct.mutex zeroinitializer, i32 0, i32 0, ptr null, ptr @psz_pstore_open, ptr null, ptr @psz_pstore_read, ptr @psz_pstore_write, ptr null, ptr @psz_pstore_erase } }, [92 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014pstore_zone: total_size must be >= 4096\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register_pstore_zone\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/pstore/zone.c\00", [47 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr = internal global ptr @register_pstore_zone._entry, section ".printk_index", align 4
@register_pstore_zone._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014pstore_zone: capping size to 128MiB\0A\00", [57 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.5 = internal global ptr @register_pstore_zone._entry.3, section ".printk_index", align 4
@register_pstore_zone._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014pstore_zone: at least one record size must be non-zero\0A\00", [38 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.8 = internal global ptr @register_pstore_zone._entry.6, section ".printk_index", align 4
@register_pstore_zone._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pstore_zone: total_size must be over %d\0A\00", [53 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.11 = internal global ptr @register_pstore_zone._entry.9, section ".printk_index", align 4
@register_pstore_zone._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pstore_zone: total_size must be a multiple of %d\0A\00", [44 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.14 = internal global ptr @register_pstore_zone._entry.12, section ".printk_index", align 4
@register_pstore_zone._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pstore_zone: kmsg_size must be over %d\0A\00", [54 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.17 = internal global ptr @register_pstore_zone._entry.15, section ".printk_index", align 4
@register_pstore_zone._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013pstore_zone: kmsg_size must be a multiple of %d\0A\00", [45 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.20 = internal global ptr @register_pstore_zone._entry.18, section ".printk_index", align 4
@register_pstore_zone._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pstore_zone: pmsg_size must be over %d\0A\00", [54 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.23 = internal global ptr @register_pstore_zone._entry.21, section ".printk_index", align 4
@register_pstore_zone._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013pstore_zone: pmsg_size must be a multiple of %d\0A\00", [45 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.26 = internal global ptr @register_pstore_zone._entry.24, section ".printk_index", align 4
@register_pstore_zone._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pstore_zone: console_size must be over %d\0A\00", [51 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.29 = internal global ptr @register_pstore_zone._entry.27, section ".printk_index", align 4
@register_pstore_zone._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pstore_zone: console_size must be a multiple of %d\0A\00", [42 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.32 = internal global ptr @register_pstore_zone._entry.30, section ".printk_index", align 4
@register_pstore_zone._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pstore_zone: ftrace_size must be over %d\0A\00", [52 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.35 = internal global ptr @register_pstore_zone._entry.33, section ".printk_index", align 4
@register_pstore_zone._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013pstore_zone: ftrace_size must be a multiple of %d\0A\00", [43 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.38 = internal global ptr @register_pstore_zone._entry.36, section ".printk_index", align 4
@register_pstore_zone._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pstore_zone: no valid general read/write interface\0A\00", [42 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.41 = internal global ptr @register_pstore_zone._entry.39, section ".printk_index", align 4
@register_pstore_zone._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014pstore_zone: '%s' already loaded: ignoring '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.44 = internal global ptr @register_pstore_zone._entry.42, section ".printk_index", align 4
@register_pstore_zone.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.46, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pstore_zone\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register %s with properties:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pstore_zone: register %s with properties:\0A\00", [53 x i8] zeroinitializer }, align 32
@register_pstore_zone.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.48, i8 1, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09total size : %ld Bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pstore_zone: \09total size : %ld Bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@register_pstore_zone.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.50, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09kmsg size : %ld Bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pstore_zone: \09kmsg size : %ld Bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@register_pstore_zone.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.52, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09pmsg size : %ld Bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pstore_zone: \09pmsg size : %ld Bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@register_pstore_zone.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.54, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09console size : %ld Bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pstore_zone: \09console size : %ld Bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@register_pstore_zone.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.1, ptr @.str.2, ptr @.str.56, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09ftrace size : %ld Bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pstore_zone: \09ftrace size : %ld Bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pstore_zone: alloc zones failed\0A\00", [61 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.60 = internal global ptr @register_pstore_zone._entry.58, section ".printk_index", align 4
@register_pstore_zone._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.1, ptr @.str.2, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016pstore_zone: registered %s as backend for\00", [52 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.63 = internal global ptr @register_pstore_zone._entry.61, section ".printk_index", align 4
@register_pstore_zone._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c kmsg(%s\00", [21 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.66 = internal global ptr @register_pstore_zone._entry.64, section ".printk_index", align 4
@register_pstore_zone._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.1, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c,panic_write\00", [17 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.69 = internal global ptr @register_pstore_zone._entry.67, section ".printk_index", align 4
@register_pstore_zone._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.1, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c)\00", [28 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.72 = internal global ptr @register_pstore_zone._entry.70, section ".printk_index", align 4
@register_pstore_zone._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.1, ptr @.str.2, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c pmsg\00", [24 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.75 = internal global ptr @register_pstore_zone._entry.73, section ".printk_index", align 4
@register_pstore_zone._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.1, ptr @.str.2, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c console\00", [21 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.78 = internal global ptr @register_pstore_zone._entry.76, section ".printk_index", align 4
@register_pstore_zone._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.1, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c ftrace\00", [22 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.81 = internal global ptr @register_pstore_zone._entry.79, section ".printk_index", align 4
@register_pstore_zone._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.1, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.84 = internal global ptr @register_pstore_zone._entry.82, section ".printk_index", align 4
@register_pstore_zone._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.1, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pstore_zone: registering with pstore failed\0A\00", [49 x i8] zeroinitializer }, align 32
@register_pstore_zone._entry_ptr.87 = internal global ptr @register_pstore_zone._entry.85, section ".printk_index", align 4
@__kstrtab_register_pstore_zone = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pstore_zone = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pstore_zone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pstore_zone to i32), ptr @__kstrtab_register_pstore_zone, ptr @__kstrtabns_register_pstore_zone }, section "___ksymtab_gpl+register_pstore_zone", align 4
@psz_cleaner = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @psz_cleaner, i64 4), ptr getelementptr (i8, ptr @psz_cleaner, i64 4) }, ptr @psz_flush_all_dirty_zones, %struct.lockdep_map { ptr @psz_cleaner, [2 x ptr] zeroinitializer, ptr @.str.154, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.155, [2 x ptr] zeroinitializer, ptr @.str.155, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_unregister_pstore_zone = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pstore_zone = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pstore_zone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pstore_zone to i32), ptr @__kstrtab_unregister_pstore_zone, ptr @__kstrtabns_unregister_pstore_zone }, section "___ksymtab_gpl+unregister_pstore_zone", align 4
@__UNIQUE_ID_file303 = internal constant [39 x i8] c"pstore_zone.file=fs/pstore/pstore_zone\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"pstore_zone.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [66 x i8] c"pstore_zone.author=WeiXiong Liao <liaoweixiong@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [53 x i8] c"pstore_zone.author=Kees Cook <keescook@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [55 x i8] c"pstore_zone.description=Storage Manager for pstore/blk\00", section ".modinfo", align 1
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pstore_zone_cxt.pstore_zone_info_lock.wait_lock\00", [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pstore_zone_cxt.pstore_zone_info_lock\00", [58 x i8] zeroinitializer }, align 32
@psz_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013pstore_zone: recover failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"psz_recovery\00", [19 x i8] zeroinitializer }, align 32
@psz_recovery._entry_ptr = internal global ptr @psz_recovery._entry, section ".printk_index", align 4
@psz_recovery.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"recover end!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pstore_zone: recover end!\0A\00", [37 x i8] zeroinitializer }, align 32
@psz_kmsg_recover.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psz_kmsg_recover\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psz_recover_kmsg failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pstore_zone: psz_recover_kmsg failed\0A\00", [58 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psz_kmsg_recover_meta\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s with id %lu may be broken, skip\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pstore_zone: %s with id %lu may be broken, skip\0A\00", [47 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pstore_zone: read %s with id %lu failed\0A\00", [53 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta._entry_ptr = internal global ptr @psz_kmsg_recover_meta._entry, section ".printk_index", align 4
@psz_kmsg_recover_meta.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.97, ptr @.str.2, ptr @.str.101, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no valid data in kmsg dump zone %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pstore_zone: no valid data in kmsg dump zone %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.97, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016pstore_zone: found overtop zone: %s: id %lu, off %lld, size %zu\0A\00", [61 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta._entry_ptr.105 = internal global ptr @psz_kmsg_recover_meta._entry.103, section ".printk_index", align 4
@psz_kmsg_recover_meta._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.97, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016pstore_zone: found invalid zone: %s: id %lu, off %lld, size %zu\0A\00", [61 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta._entry_ptr.108 = internal global ptr @psz_kmsg_recover_meta._entry.106, section ".printk_index", align 4
@psz_kmsg_recover_meta.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.97, ptr @.str.2, ptr @.str.109, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"found erased zone: %s: id %lu, off %lld, size %zu, datalen %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"pstore_zone: found erased zone: %s: id %lu, off %lld, size %zu, datalen %d\0A\00", [52 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_meta.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.97, ptr @.str.2, ptr @.str.111, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"found nice zone: %s: id %lu, off %lld, size %zu, datalen %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"pstore_zone: found nice zone: %s: id %lu, off %lld, size %zu, datalen %d\0A\00", [54 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013pstore_zone: move zone from %lu to %d failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psz_kmsg_recover_data\00", [42 x i8] zeroinitializer }, align 32
@psz_kmsg_recover_data._entry_ptr = internal global ptr @psz_kmsg_recover_data._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@psz_recover_zone.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.115, ptr @.str.2, ptr @.str.116, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psz_recover_zone\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read zone %s failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pstore_zone: read zone %s failed\0A\00", [62 x i8] zeroinitializer }, align 32
@psz_recover_zone.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.115, ptr @.str.2, ptr @.str.118, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no valid data in zone %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pstore_zone: no valid data in zone %s\0A\00", [57 x i8] zeroinitializer }, align 32
@psz_recover_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016pstore_zone: found overtop zone: %s: off %lld, size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@psz_recover_zone._entry_ptr = internal global ptr @psz_recover_zone._entry, section ".printk_index", align 4
@psz_recover_zone.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.115, ptr @.str.2, ptr @.str.121, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"found erased zone: %s: off %lld, size %zu, datalen %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"pstore_zone: found erased zone: %s: off %lld, size %zu, datalen %d\0A\00", [60 x i8] zeroinitializer }, align 32
@psz_recover_zone.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.115, ptr @.str.2, ptr @.str.123, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"found nice zone: %s: off %lld, size %zu, datalen %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"pstore_zone: found nice zone: %s: off %lld, size %zu, datalen %d\0A\00", [62 x i8] zeroinitializer }, align 32
@psz_recover_zone._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.115, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pstore_zone: read zone %s failed\0A\00", [60 x i8] zeroinitializer }, align 32
@psz_recover_zone._entry_ptr.127 = internal global ptr @psz_recover_zone._entry.125, section ".printk_index", align 4
@psz_recover_zone._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.115, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@psz_recover_zone._entry_ptr.129 = internal global ptr @psz_recover_zone._entry.128, section ".printk_index", align 4
@psz_recover_zones.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psz_recover_zones\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"recover %s[%u] failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pstore_zone: recover %s[%u] failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Total %d times\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@psz_kmsg_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psz_kmsg_write\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"try to flush other dirty zones\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pstore_zone: try to flush other dirty zones\0A\00", [51 x i8] zeroinitializer }, align 32
@psz_kmsg_write_record.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psz_kmsg_write_record\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write %s to zone id %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pstore_zone: write %s to zone id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@psz_kmsg_write_record.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.137, ptr @.str.2, ptr @.str.140, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"zone %u may be broken, try next dmesg zone\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pstore_zone: zone %u may be broken, try next dmesg zone\0A\00", [39 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@psz_init_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013pstore_zone: no room for %s (0x%zx@0x%llx over 0x%lx)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psz_init_zone\00", [18 x i8] zeroinitializer }, align 32
@psz_init_zone._entry_ptr = internal global ptr @psz_init_zone._entry, section ".printk_index", align 4
@psz_init_zone.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.143, ptr @.str.2, ptr @.str.144, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pszone %s: off 0x%llx, %zu header, %zu data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pstore_zone: pszone %s: off 0x%llx, %zu header, %zu data\0A\00", [38 x i8] zeroinitializer }, align 32
@psz_init_zones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013pstore_zone: no room for zones %s (0x%zx@0x%llx over 0x%lx)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psz_init_zones\00", [17 x i8] zeroinitializer }, align 32
@psz_init_zones._entry_ptr = internal global ptr @psz_init_zones._entry, section ".printk_index", align 4
@psz_init_zones._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pstore_zone: allocate for zones %s failed\0A\00", [51 x i8] zeroinitializer }, align 32
@psz_init_zones._entry_ptr.150 = internal global ptr @psz_init_zones._entry.148, section ".printk_index", align 4
@psz_init_zones._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pstore_zone: initialize zones %s failed\0A\00", [53 x i8] zeroinitializer }, align 32
@psz_init_zones._entry_ptr.153 = internal global ptr @psz_init_zones._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(psz_cleaner).work\00", [45 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/pstore/zone.c:143\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.157 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 52, i64 4294967254]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"pstore_zone_cxt\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1097, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1299, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1303, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1309, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1328, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1329, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1330, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1331, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1332, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1342, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1348, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1355, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1356, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1357, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1358, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1359, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1360, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1364, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1379, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1384, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1387, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1388, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1392, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1396, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1400, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1402, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1406, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [12 x i8] c"psz_cleaner\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1099, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 624, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 626, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 477, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 398, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 402, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 407, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 412, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 420, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 443, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 452, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 354, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 504, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 509, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 515, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 522, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 528, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 546, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 554, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 589, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 973, i32 37 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 815, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 771, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 785, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1161, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1188, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1207, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1215, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1223, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.565 = private constant [20 x i8] c"../fs/pstore/zone.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 143, i32 8 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_register_pstore_zone, ptr @__ksymtab_unregister_pstore_zone, ptr @psz_init_zone._entry, ptr @psz_init_zone._entry_ptr, ptr @psz_init_zones._entry, ptr @psz_init_zones._entry.148, ptr @psz_init_zones._entry.151, ptr @psz_init_zones._entry_ptr, ptr @psz_init_zones._entry_ptr.150, ptr @psz_init_zones._entry_ptr.153, ptr @psz_kmsg_recover_data._entry, ptr @psz_kmsg_recover_data._entry_ptr, ptr @psz_kmsg_recover_meta._entry, ptr @psz_kmsg_recover_meta._entry.103, ptr @psz_kmsg_recover_meta._entry.106, ptr @psz_kmsg_recover_meta._entry_ptr, ptr @psz_kmsg_recover_meta._entry_ptr.105, ptr @psz_kmsg_recover_meta._entry_ptr.108, ptr @psz_recover_zone._entry, ptr @psz_recover_zone._entry.125, ptr @psz_recover_zone._entry.128, ptr @psz_recover_zone._entry_ptr, ptr @psz_recover_zone._entry_ptr.127, ptr @psz_recover_zone._entry_ptr.129, ptr @psz_recovery._entry, ptr @psz_recovery._entry_ptr, ptr @register_pstore_zone._entry, ptr @register_pstore_zone._entry.12, ptr @register_pstore_zone._entry.15, ptr @register_pstore_zone._entry.18, ptr @register_pstore_zone._entry.21, ptr @register_pstore_zone._entry.24, ptr @register_pstore_zone._entry.27, ptr @register_pstore_zone._entry.3, ptr @register_pstore_zone._entry.30, ptr @register_pstore_zone._entry.33, ptr @register_pstore_zone._entry.36, ptr @register_pstore_zone._entry.39, ptr @register_pstore_zone._entry.42, ptr @register_pstore_zone._entry.58, ptr @register_pstore_zone._entry.6, ptr @register_pstore_zone._entry.61, ptr @register_pstore_zone._entry.64, ptr @register_pstore_zone._entry.67, ptr @register_pstore_zone._entry.70, ptr @register_pstore_zone._entry.73, ptr @register_pstore_zone._entry.76, ptr @register_pstore_zone._entry.79, ptr @register_pstore_zone._entry.82, ptr @register_pstore_zone._entry.85, ptr @register_pstore_zone._entry.9, ptr @register_pstore_zone._entry_ptr, ptr @register_pstore_zone._entry_ptr.11, ptr @register_pstore_zone._entry_ptr.14, ptr @register_pstore_zone._entry_ptr.17, ptr @register_pstore_zone._entry_ptr.20, ptr @register_pstore_zone._entry_ptr.23, ptr @register_pstore_zone._entry_ptr.26, ptr @register_pstore_zone._entry_ptr.29, ptr @register_pstore_zone._entry_ptr.32, ptr @register_pstore_zone._entry_ptr.35, ptr @register_pstore_zone._entry_ptr.38, ptr @register_pstore_zone._entry_ptr.41, ptr @register_pstore_zone._entry_ptr.44, ptr @register_pstore_zone._entry_ptr.5, ptr @register_pstore_zone._entry_ptr.60, ptr @register_pstore_zone._entry_ptr.63, ptr @register_pstore_zone._entry_ptr.66, ptr @register_pstore_zone._entry_ptr.69, ptr @register_pstore_zone._entry_ptr.72, ptr @register_pstore_zone._entry_ptr.75, ptr @register_pstore_zone._entry_ptr.78, ptr @register_pstore_zone._entry_ptr.8, ptr @register_pstore_zone._entry_ptr.81, ptr @register_pstore_zone._entry_ptr.84, ptr @register_pstore_zone._entry_ptr.87, ptr @pstore_zone_cxt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @psz_cleaner, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_zone_cxt to i32), i32 356, i32 448, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_pstore_zone._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_cleaner to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_kmsg_recover_meta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_kmsg_recover_meta._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_kmsg_recover_meta._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_kmsg_recover_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_recover_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_recover_zone._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_recover_zone._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_init_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_init_zones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_init_zones._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psz_init_zones._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_pstore_zone(ptr noundef %info) #0 align 64 {
entry:
  %off.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %total_size = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp ult i32 %1, 4096
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %1)
  %cmp2 = icmp ugt i32 %1, 134217728
  br i1 %cmp2, label %do.end6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %2 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 134217728, ptr %total_size, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end6, %if.end.if.end10_crit_edge
  %kmsg_size = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %pmsg_size = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true12:                                  ; preds = %land.lhs.true
  %console_size = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %console_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %console_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true12.if.end22_crit_edge

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %ftrace_size = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 7
  %9 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ftrace_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %do.end19, label %land.lhs.true14.if.end22_crit_edge

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.end19:                                         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true14.if.end22_crit_edge, %land.lhs.true12.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %name = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %lor.lhs.false

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end27

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_size, align 4
  %17 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %17)
  %18 = icmp ult i32 %17, 4095
  br i1 %18, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4096) #16
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %and = and i32 %16, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4096) #16
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %19 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %19)
  %20 = icmp ult i32 %19, 511
  br i1 %20, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 512) #16
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  %and62 = and i32 %4, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end70, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 512) #16
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %pmsg_size71 = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %pmsg_size71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmsg_size71, align 4
  %23 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %23)
  %24 = icmp ult i32 %23, 511
  br i1 %24, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 512) #16
  br label %cleanup

if.end82:                                         ; preds = %if.end70
  %and84 = and i32 %22, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end92, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 512) #16
  br label %cleanup

if.end92:                                         ; preds = %if.end82
  %console_size93 = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %console_size93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %console_size93, align 4
  %27 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %27)
  %28 = icmp ult i32 %27, 511
  br i1 %28, label %do.end101, label %if.end104

do.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 512) #16
  br label %cleanup

if.end104:                                        ; preds = %if.end92
  %and106 = and i32 %26, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 512) #16
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  %ftrace_size115 = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 7
  %29 = ptrtoint ptr %ftrace_size115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ftrace_size115, align 4
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %31)
  %32 = icmp ult i32 %31, 511
  br i1 %32, label %do.end123, label %if.end126

do.end123:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 512) #16
  br label %cleanup

if.end126:                                        ; preds = %if.end114
  %and128 = and i32 %30, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end136, label %do.end133

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 512) #16
  br label %cleanup

if.end136:                                        ; preds = %if.end126
  %read = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 8
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  %tobool137.not = icmp eq ptr %34, null
  br i1 %tobool137.not, label %if.end136.do.end143_crit_edge, label %lor.lhs.false138

if.end136.do.end143_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

lor.lhs.false138:                                 ; preds = %if.end136
  %write = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 9
  %35 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write, align 4
  %tobool139.not = icmp eq ptr %36, null
  br i1 %tobool139.not, label %lor.lhs.false138.do.end143_crit_edge, label %if.end146

lor.lhs.false138.do.end143_crit_edge:             ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

do.end143:                                        ; preds = %lor.lhs.false138.do.end143_crit_edge, %if.end136.do.end143_crit_edge
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  br label %cleanup

if.end146:                                        ; preds = %lor.lhs.false138
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15), i32 noundef 0) #13
  %37 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %tobool147.not = icmp eq ptr %37, null
  br i1 %tobool147.not, label %if.end158, label %do.end151

do.end151:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  %name154 = getelementptr inbounds %struct.pstore_zone_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %name154 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name154, align 4
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %39, ptr noundef %41) #16
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15)) #13
  br label %cleanup

if.end158:                                        ; preds = %if.end146
  store ptr %info, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then166)) #13
          to label %do.body171 [label %if.then166], !srcloc !273

if.then166:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.47, ptr noundef %43) #13
  br label %do.body171

do.body171:                                       ; preds = %if.then166, %if.end158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then183)) #13
          to label %do.body188 [label %if.then183], !srcloc !273

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %total_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.49, i32 noundef %45) #13
  br label %do.body188

do.body188:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then200)) #13
          to label %do.body205 [label %if.then200], !srcloc !273

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %kmsg_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.51, i32 noundef %47) #13
  br label %do.body205

do.body205:                                       ; preds = %if.then200, %do.body188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then217)) #13
          to label %do.body222 [label %if.then217], !srcloc !273

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %pmsg_size71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pmsg_size71, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.53, i32 noundef %49) #13
  br label %do.body222

do.body222:                                       ; preds = %if.then217, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then234)) #13
          to label %do.body239 [label %if.then234], !srcloc !273

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %console_size93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %console_size93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.55, i32 noundef %51) #13
  br label %do.body239

do.body239:                                       ; preds = %if.then234, %do.body222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_pstore_zone.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_pstore_zone, %if.then251)) #13
          to label %do.end255 [label %if.then251], !srcloc !273

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %ftrace_size115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ftrace_size115, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @register_pstore_zone.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.57, i32 noundef %53) #13
  br label %do.end255

do.end255:                                        ; preds = %if.then251, %do.body239
  %54 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off.i) #13
  %55 = ptrtoint ptr %off.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %off.i, align 8
  %pmsg_size.i = getelementptr inbounds %struct.pstore_zone_info, ptr %54, i32 0, i32 5
  %56 = ptrtoint ptr %pmsg_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pmsg_size.i, align 4
  %call.i = call fastcc ptr @psz_init_zone(i32 noundef 7, ptr noundef nonnull %off.i, i32 noundef %57) #13
  store ptr %call.i, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 1), align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end255.psz_alloc_zones.exit_crit_edge, label %if.end.i

do.end255.psz_alloc_zones.exit_crit_edge:         ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_alloc_zones.exit

if.end.i:                                         ; preds = %do.end255
  %console_size.i = getelementptr inbounds %struct.pstore_zone_info, ptr %54, i32 0, i32 6
  %58 = ptrtoint ptr %console_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %console_size.i, align 4
  %call9.i = call fastcc ptr @psz_init_zone(i32 noundef 2, ptr noundef nonnull %off.i, i32 noundef %59) #13
  store ptr %call9.i, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 2), align 4
  %cmp.i1.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end.i.psz_alloc_zones.exit_crit_edge, label %if.end16.i

if.end.i.psz_alloc_zones.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_alloc_zones.exit

if.end16.i:                                       ; preds = %if.end.i
  %ftrace_size.i = getelementptr inbounds %struct.pstore_zone_info, ptr %54, i32 0, i32 7
  %60 = ptrtoint ptr %ftrace_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ftrace_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %div.i = udiv i32 %61, %62
  %call20.i = call fastcc ptr @psz_init_zones(i32 noundef 3, ptr noundef nonnull %off.i, i32 noundef %61, i32 noundef %div.i, ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 9)) #13
  store ptr %call20.i, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 3), align 4
  %cmp.i2.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end16.i.psz_alloc_zones.exit_crit_edge, label %if.end27.i

if.end16.i.psz_alloc_zones.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_alloc_zones.exit

if.end27.i:                                       ; preds = %if.end16.i
  %total_size.i = getelementptr inbounds %struct.pstore_zone_info, ptr %54, i32 0, i32 2
  %63 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total_size.i, align 4
  %65 = add i32 %59, %57
  %66 = add i32 %65, %61
  %sub.i = sub i32 %64, %66
  %kmsg_size.i = getelementptr inbounds %struct.pstore_zone_info, ptr %54, i32 0, i32 3
  %67 = ptrtoint ptr %kmsg_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %kmsg_size.i, align 4
  %call28.i = call fastcc ptr @psz_init_zones(i32 noundef 0, ptr noundef nonnull %off.i, i32 noundef %sub.i, i32 noundef %68, ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 4)) #13
  store ptr %call28.i, ptr @pstore_zone_cxt, align 4
  %cmp.i3.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i, label %if.end27.i.psz_alloc_zones.exit_crit_edge, label %psz_alloc_zones.exit.thread

if.end27.i.psz_alloc_zones.exit_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_alloc_zones.exit

psz_alloc_zones.exit.thread:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.i) #13
  br label %if.end264

psz_alloc_zones.exit:                             ; preds = %if.end27.i.psz_alloc_zones.exit_crit_edge, %if.end16.i.psz_alloc_zones.exit_crit_edge, %if.end.i.psz_alloc_zones.exit_crit_edge, %do.end255.psz_alloc_zones.exit_crit_edge
  %pstore_zone_cxt.sink.i = phi ptr [ getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 1), %do.end255.psz_alloc_zones.exit_crit_edge ], [ getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 2), %if.end.i.psz_alloc_zones.exit_crit_edge ], [ getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 3), %if.end16.i.psz_alloc_zones.exit_crit_edge ], [ @pstore_zone_cxt, %if.end27.i.psz_alloc_zones.exit_crit_edge ]
  %err.0.in.i = phi ptr [ %call.i, %do.end255.psz_alloc_zones.exit_crit_edge ], [ %call9.i, %if.end.i.psz_alloc_zones.exit_crit_edge ], [ %call20.i, %if.end16.i.psz_alloc_zones.exit_crit_edge ], [ %call28.i, %if.end27.i.psz_alloc_zones.exit_crit_edge ]
  %69 = ptrtoint ptr %pstore_zone_cxt.sink.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pstore_zone_cxt.sink.i, align 4
  tail call fastcc void @psz_free_all_zones() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.i) #13
  %tobool257.not = icmp eq ptr %err.0.in.i, null
  br i1 %tobool257.not, label %psz_alloc_zones.exit.if.end264_crit_edge, label %do.end261

psz_alloc_zones.exit.if.end264_crit_edge:         ; preds = %psz_alloc_zones.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

do.end261:                                        ; preds = %psz_alloc_zones.exit
  call void @__sanitizer_cov_trace_pc() #15
  %err.0.i = ptrtoint ptr %err.0.in.i to i32
  %call263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #16
  br label %fail_out

if.end264:                                        ; preds = %psz_alloc_zones.exit.if.end264_crit_edge, %psz_alloc_zones.exit.thread
  %70 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %kmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool266.not = icmp eq i32 %71, 0
  br i1 %tobool266.not, label %if.end264.if.end278_crit_edge, label %if.then267

if.end264.if.end278_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278

if.then267:                                       ; preds = %if.end264
  %72 = load ptr, ptr @pstore_zone_cxt, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buffer_size, align 8
  %sub = add i32 %76, -40
  store i32 %sub, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 4), align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #17
  store ptr %call9.i.i, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 3), align 4
  %tobool275.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool275.not, label %if.then267.fail_free_crit_edge, label %if.then267.if.end278_crit_edge

if.then267.if.end278_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278

if.then267.fail_free_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_free

if.end278:                                        ; preds = %if.then267.if.end278_crit_edge, %if.end264.if.end278_crit_edge
  store ptr @pstore_zone_cxt, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 8), align 4
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 4
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %78) #16
  %max_reason = getelementptr inbounds %struct.pstore_zone_info, ptr %info, i32 0, i32 4
  %79 = ptrtoint ptr %max_reason to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_reason, align 4
  store i32 %80, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 7), align 4
  %81 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name, align 4
  store ptr %82, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 1), align 4
  %83 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %kmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool292.not = icmp eq i32 %84, 0
  br i1 %tobool292.not, label %if.end278.if.end317_crit_edge, label %if.then293

if.end278.if.end317_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end317

if.then293:                                       ; preds = %if.end278
  %85 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %or = or i32 %85, 1
  store i32 %or, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %call301 = tail call ptr @kmsg_dump_reason_str(i32 noundef %80) #13
  %call302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %call301) #16
  %86 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %panic_write = getelementptr inbounds %struct.pstore_zone_info, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %panic_write to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %panic_write, align 4
  %tobool304.not = icmp eq ptr %88, null
  br i1 %tobool304.not, label %if.then293.do.end314_crit_edge, label %do.end308

if.then293.do.end314_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end314

do.end308:                                        ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #15
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #16
  br label %do.end314

do.end314:                                        ; preds = %do.end308, %if.then293.do.end314_crit_edge
  %call316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #16
  br label %if.end317

if.end317:                                        ; preds = %do.end314, %if.end278.if.end317_crit_edge
  %89 = ptrtoint ptr %pmsg_size71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pmsg_size71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool319.not = icmp eq i32 %90, 0
  br i1 %tobool319.not, label %if.end317.if.end329_crit_edge, label %if.then320

if.end317.if.end329_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end329

if.then320:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #15
  %91 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %or323 = or i32 %91, 8
  store i32 %or323, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #16
  br label %if.end329

if.end329:                                        ; preds = %if.then320, %if.end317.if.end329_crit_edge
  %92 = ptrtoint ptr %console_size93 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %console_size93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool331.not = icmp eq i32 %93, 0
  br i1 %tobool331.not, label %if.end329.if.end341_crit_edge, label %if.then332

if.end329.if.end341_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

if.then332:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #15
  %94 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %or335 = or i32 %94, 2
  store i32 %or335, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %call340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #16
  br label %if.end341

if.end341:                                        ; preds = %if.then332, %if.end329.if.end341_crit_edge
  %95 = ptrtoint ptr %ftrace_size115 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ftrace_size115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool343.not = icmp eq i32 %96, 0
  br i1 %tobool343.not, label %if.end341.do.end356_crit_edge, label %if.then344

if.end341.do.end356_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end356

if.then344:                                       ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #15
  %97 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %or347 = or i32 %97, 4
  store i32 %or347, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 6), align 4
  %call352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %do.end356

do.end356:                                        ; preds = %if.then344, %if.end341.do.end356_crit_edge
  %call358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #16
  %call360 = tail call i32 @pstore_register(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360)
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %if.end368, label %do.end365

do.end365:                                        ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #15
  %call367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #16
  br label %fail_free

if.end368:                                        ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15)) #13
  br label %cleanup

fail_free:                                        ; preds = %do.end365, %if.then267.fail_free_crit_edge
  %err.0 = phi i32 [ %call360, %do.end365 ], [ -12, %if.then267.fail_free_crit_edge ]
  %98 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 3), align 4
  tail call void @kfree(ptr noundef %98) #13
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 4), align 4
  tail call fastcc void @psz_free_all_zones()
  br label %fail_out

fail_out:                                         ; preds = %fail_free, %do.end261
  %err.1 = phi i32 [ %err.0.i, %do.end261 ], [ %err.0, %fail_free ]
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15)) #13
  br label %cleanup

cleanup:                                          ; preds = %fail_out, %if.end368, %do.end151, %do.end143, %do.end133, %do.end123, %do.end111, %do.end101, %do.end89, %do.end79, %do.end67, %do.end57, %do.end45, %do.end36, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ -22, %do.end45 ], [ -22, %do.end57 ], [ -22, %do.end67 ], [ -22, %do.end79 ], [ -22, %do.end89 ], [ -22, %do.end101 ], [ -22, %do.end111 ], [ -22, %do.end123 ], [ -22, %do.end133 ], [ -16, %do.end151 ], [ %err.1, %fail_out ], [ 0, %if.end368 ], [ -22, %do.end143 ], [ -22, %do.end19 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmsg_dump_reason_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psz_free_all_zones() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pstore_zone_cxt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.cond.preheader.i:                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not6.i = icmp eq i32 %1, 0
  br i1 %cmp.not6.i, label %while.cond.preheader.i.psz_free_zones.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.psz_free_zones.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit

while.body.i:                                     ; preds = %psz_free_zone.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %2 = phi i32 [ %8, %psz_free_zone.exit.i.while.body.i_crit_edge ], [ %1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 4), align 4
  %arrayidx.i = getelementptr ptr, ptr %0, i32 %dec.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %while.body.i.psz_free_zone.exit.i_crit_edge, label %if.end.i.i

while.body.i.psz_free_zone.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zone.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %buffer.i.i = getelementptr inbounds %struct.pstore_zone, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer.i.i, align 8
  tail call void @kfree(ptr noundef %6) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.i, align 4
  %.pr.i = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 4), align 4
  br label %psz_free_zone.exit.i

psz_free_zone.exit.i:                             ; preds = %if.end.i.i, %while.body.i.psz_free_zone.exit.i_crit_edge
  %8 = phi i32 [ %dec.i, %while.body.i.psz_free_zone.exit.i_crit_edge ], [ %.pr.i, %if.end.i.i ]
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %psz_free_zone.exit.i.psz_free_zones.exit_crit_edge, label %psz_free_zone.exit.i.while.body.i_crit_edge

psz_free_zone.exit.i.while.body.i_crit_edge:      ; preds = %psz_free_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

psz_free_zone.exit.i.psz_free_zones.exit_crit_edge: ; preds = %psz_free_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit

psz_free_zones.exit:                              ; preds = %psz_free_zone.exit.i.psz_free_zones.exit_crit_edge, %while.cond.preheader.i.psz_free_zones.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %0) #13
  store ptr null, ptr @pstore_zone_cxt, align 4
  br label %if.end

if.end:                                           ; preds = %psz_free_zones.exit, %entry.if.end_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 1), align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %psz_free_zone.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

psz_free_zone.exit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %buffer.i = getelementptr inbounds %struct.pstore_zone, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.i, align 8
  tail call void @kfree(ptr noundef %11) #13
  tail call void @kfree(ptr noundef nonnull %9) #13
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 1), align 4
  br label %if.end5

if.end5:                                          ; preds = %psz_free_zone.exit, %if.end.if.end5_crit_edge
  %12 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 2), align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %psz_free_zone.exit5

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

psz_free_zone.exit5:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %buffer.i3 = getelementptr inbounds %struct.pstore_zone, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %buffer.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i3, align 8
  tail call void @kfree(ptr noundef %14) #13
  tail call void @kfree(ptr noundef nonnull %12) #13
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 2), align 4
  br label %if.end9

if.end9:                                          ; preds = %psz_free_zone.exit5, %if.end5.if.end9_crit_edge
  %15 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 3), align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %while.cond.preheader.i8

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

while.cond.preheader.i8:                          ; preds = %if.end9
  %16 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not6.i7 = icmp eq i32 %16, 0
  br i1 %cmp.not6.i7, label %while.cond.preheader.i8.psz_free_zones.exit19_crit_edge, label %while.cond.preheader.i8.while.body.i12_crit_edge

while.cond.preheader.i8.while.body.i12_crit_edge: ; preds = %while.cond.preheader.i8
  br label %while.body.i12

while.cond.preheader.i8.psz_free_zones.exit19_crit_edge: ; preds = %while.cond.preheader.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit19

while.body.i12:                                   ; preds = %psz_free_zone.exit.i17.while.body.i12_crit_edge, %while.cond.preheader.i8.while.body.i12_crit_edge
  %17 = phi i32 [ %23, %psz_free_zone.exit.i17.while.body.i12_crit_edge ], [ %16, %while.cond.preheader.i8.while.body.i12_crit_edge ]
  %dec.i9 = add i32 %17, -1
  store i32 %dec.i9, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 9), align 4
  %arrayidx.i10 = getelementptr ptr, ptr %15, i32 %dec.i9
  %18 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i10, align 4
  %tobool.not.i.i11 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i11, label %while.body.i12.psz_free_zone.exit.i17_crit_edge, label %if.end.i.i15

while.body.i12.psz_free_zone.exit.i17_crit_edge:  ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zone.exit.i17

if.end.i.i15:                                     ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  %buffer.i.i13 = getelementptr inbounds %struct.pstore_zone, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %buffer.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer.i.i13, align 8
  tail call void @kfree(ptr noundef %21) #13
  tail call void @kfree(ptr noundef nonnull %19) #13
  %22 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.i10, align 4
  %.pr.i14 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 9), align 4
  br label %psz_free_zone.exit.i17

psz_free_zone.exit.i17:                           ; preds = %if.end.i.i15, %while.body.i12.psz_free_zone.exit.i17_crit_edge
  %23 = phi i32 [ %dec.i9, %while.body.i12.psz_free_zone.exit.i17_crit_edge ], [ %.pr.i14, %if.end.i.i15 ]
  %cmp.not.i16 = icmp eq i32 %23, 0
  br i1 %cmp.not.i16, label %psz_free_zone.exit.i17.psz_free_zones.exit19_crit_edge, label %psz_free_zone.exit.i17.while.body.i12_crit_edge

psz_free_zone.exit.i17.while.body.i12_crit_edge:  ; preds = %psz_free_zone.exit.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i12

psz_free_zone.exit.i17.psz_free_zones.exit19_crit_edge: ; preds = %psz_free_zone.exit.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit19

psz_free_zones.exit19:                            ; preds = %psz_free_zone.exit.i17.psz_free_zones.exit19_crit_edge, %while.cond.preheader.i8.psz_free_zones.exit19_crit_edge
  tail call void @kfree(ptr noundef nonnull %15) #13
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 3), align 4
  br label %if.end13

if.end13:                                         ; preds = %psz_free_zones.exit19, %if.end9.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_pstore_zone(ptr nocapture readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15), i32 noundef 0) #13
  %0 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pstore_unregister(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17)) #13
  tail call void @psz_flush_all_dirty_zones(ptr noundef null)
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef nonnull @psz_cleaner) #13
  %1 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 3), align 4
  tail call void @kfree(ptr noundef %1) #13
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 17, i32 4), align 4
  store ptr null, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  tail call fastcc void @psz_free_all_zones()
  store i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 11), align 4
  store i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 12), align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  store volatile i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  store volatile i32 0, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 15)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psz_flush_all_dirty_zones(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not.i = icmp eq i32 %1, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %if.end14.i, !prof !274

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end14.i:                                       ; preds = %if.end.i
  %dirty.i = getelementptr inbounds %struct.pstore_zone, ptr %0, i32 0, i32 7
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i) #13, !srcloc !276
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool16.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end_crit_edge, label %if.end18.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %0, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end_crit_edge, label %if.then21.i

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  %3 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %dirty.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21.i, %if.end18.i.if.end_crit_edge, %if.end14.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ -16, %if.end.i.if.end_crit_edge ], [ 0, %if.end14.i.if.end_crit_edge ], [ %call19.i, %if.then21.i ], [ 0, %if.end18.i.if.end_crit_edge ]
  %4 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 2), align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.end.i46

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i46:                                       ; preds = %if.end
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i45 = icmp eq i32 %5, 0
  br i1 %tobool4.not.i45, label %if.end.i46.psz_flush_dirty_zone.exit58_crit_edge, label %if.end14.i51, !prof !274

if.end.i46.psz_flush_dirty_zone.exit58_crit_edge: ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_flush_dirty_zone.exit58

if.end14.i51:                                     ; preds = %if.end.i46
  %dirty.i47 = getelementptr inbounds %struct.pstore_zone, ptr %4, i32 0, i32 7
  %call.i.i28.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i47, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i47, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i47) #13, !srcloc !276
  %asmresult.i.i.i49 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i49)
  %tobool16.not.i50 = icmp eq i32 %asmresult.i.i.i49, 0
  br i1 %tobool16.not.i50, label %if.end14.i51.psz_flush_dirty_zone.exit58_crit_edge, label %if.end18.i54

if.end14.i51.psz_flush_dirty_zone.exit58_crit_edge: ; preds = %if.end14.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_flush_dirty_zone.exit58

if.end18.i54:                                     ; preds = %if.end14.i51
  %call19.i52 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i52)
  %tobool20.not.i53 = icmp eq i32 %call19.i52, 0
  br i1 %tobool20.not.i53, label %if.end18.i54.psz_flush_dirty_zone.exit58_crit_edge, label %if.then21.i56

if.end18.i54.psz_flush_dirty_zone.exit58_crit_edge: ; preds = %if.end18.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_flush_dirty_zone.exit58

if.then21.i56:                                    ; preds = %if.end18.i54
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i47, i32 noundef 4) #13
  %7 = ptrtoint ptr %dirty.i47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %dirty.i47, align 4
  br label %psz_flush_dirty_zone.exit58

psz_flush_dirty_zone.exit58:                      ; preds = %if.then21.i56, %if.end18.i54.psz_flush_dirty_zone.exit58_crit_edge, %if.end14.i51.psz_flush_dirty_zone.exit58_crit_edge, %if.end.i46.psz_flush_dirty_zone.exit58_crit_edge
  %retval.0.i57 = phi i32 [ -16, %if.end.i46.psz_flush_dirty_zone.exit58_crit_edge ], [ 0, %if.end14.i51.psz_flush_dirty_zone.exit58_crit_edge ], [ %call19.i52, %if.then21.i56 ], [ 0, %if.end18.i54.psz_flush_dirty_zone.exit58_crit_edge ]
  %or6 = or i32 %retval.0.i57, %ret.0
  br label %if.end7

if.end7:                                          ; preds = %psz_flush_dirty_zone.exit58, %if.end.if.end7_crit_edge
  %ret.1 = phi i32 [ %or6, %psz_flush_dirty_zone.exit58 ], [ %ret.0, %if.end.if.end7_crit_edge ]
  %8 = load ptr, ptr @pstore_zone_cxt, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %9 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 4), align 4
  %call11 = tail call fastcc i32 @psz_flush_dirty_zones(ptr noundef nonnull %8, i32 noundef %9)
  %or12 = or i32 %call11, %ret.1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %ret.2 = phi i32 [ %or12, %if.then9 ], [ %ret.1, %if.end7.if.end13_crit_edge ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 3), align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %11 = load i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 9), align 4
  %call17 = tail call fastcc i32 @psz_flush_dirty_zones(ptr noundef nonnull %10, i32 noundef %11)
  %or18 = or i32 %call17, %ret.2
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %ret.3 = phi i32 [ %or18, %if.then15 ], [ %ret.2, %if.end13.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool20.not = icmp eq i32 %ret.3, 0
  br i1 %tobool20.not, label %if.end19.if.end25_crit_edge, label %land.lhs.true

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %12 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %land.lhs.true.if.end25_crit_edge, label %if.then22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @psz_cleaner, i32 noundef 100) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psz_pstore_open(ptr nocapture noundef readonly %psi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %kmsg_read_cnt = getelementptr inbounds %struct.psz_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kmsg_read_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %kmsg_read_cnt, align 4
  %pmsg_read_cnt = getelementptr inbounds %struct.psz_context, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %pmsg_read_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pmsg_read_cnt, align 4
  %console_read_cnt = getelementptr inbounds %struct.psz_context, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %console_read_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %console_read_cnt, align 4
  %ftrace_read_cnt = getelementptr inbounds %struct.psz_context, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %ftrace_read_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ftrace_read_cnt, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_pstore_read(ptr noundef %record) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call fastcc i32 @psz_recovery(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %next_zone.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

next_zone.preheader:                              ; preds = %entry
  %fpszs.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 3
  %kmsg_read_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 5
  %kmsg_max_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 4
  %ftrace_read_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 10
  %ftrace_max_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 9
  %pmsg_read_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 7
  %ppsz.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 1
  %console_read_cnt.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 8
  %cpsz.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 2
  %type5 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %id = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  br label %next_zone

next_zone:                                        ; preds = %next_zone.backedge, %next_zone.preheader
  %4 = ptrtoint ptr %kmsg_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kmsg_read_cnt.i, align 4
  %6 = ptrtoint ptr %kmsg_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kmsg_max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp65.i = icmp ult i32 %5, %7
  br i1 %cmp65.i, label %next_zone.while.body.i_crit_edge, label %next_zone.while.end.i_crit_edge

next_zone.while.end.i_crit_edge:                  ; preds = %next_zone
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

next_zone.while.body.i_crit_edge:                 ; preds = %next_zone
  br label %while.body.i

while.body.i:                                     ; preds = %psz_ok.exit.i.while.body.i_crit_edge, %next_zone.while.body.i_crit_edge
  %8 = phi i32 [ %19, %psz_ok.exit.i.while.body.i_crit_edge ], [ %5, %next_zone.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %inc.i = add nuw i32 %8, 1
  %11 = ptrtoint ptr %kmsg_read_cnt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i, ptr %kmsg_read_cnt.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %while.body.i.psz_ok.exit.i_crit_edge, label %land.lhs.true.i.i

while.body.i.psz_ok.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_ok.exit.i

land.lhs.true.i.i:                                ; preds = %while.body.i
  %buffer.i.i = getelementptr inbounds %struct.pstore_zone, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.psz_ok.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.psz_ok.exit.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_ok.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %datalen.i.i.i = getelementptr inbounds %struct.psz_buffer, ptr %15, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %datalen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %datalen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.psz_ok.exit.i_crit_edge, label %land.lhs.true2.i.i.if.end4_crit_edge

land.lhs.true2.i.i.if.end4_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true2.i.i.psz_ok.exit.i_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_ok.exit.i

psz_ok.exit.i:                                    ; preds = %land.lhs.true2.i.i.psz_ok.exit.i_crit_edge, %land.lhs.true.i.i.psz_ok.exit.i_crit_edge, %while.body.i.psz_ok.exit.i_crit_edge
  %18 = ptrtoint ptr %kmsg_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kmsg_read_cnt.i, align 4
  %20 = ptrtoint ptr %kmsg_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kmsg_max_cnt.i, align 4
  %cmp.i = icmp ult i32 %19, %21
  br i1 %cmp.i, label %psz_ok.exit.i.while.body.i_crit_edge, label %psz_ok.exit.i.while.end.i_crit_edge

psz_ok.exit.i.while.end.i_crit_edge:              ; preds = %psz_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

psz_ok.exit.i.while.body.i_crit_edge:             ; preds = %psz_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %psz_ok.exit.i.while.end.i_crit_edge, %next_zone.while.end.i_crit_edge
  %22 = ptrtoint ptr %ftrace_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ftrace_read_cnt.i, align 4
  %24 = ptrtoint ptr %ftrace_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ftrace_max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp2.i = icmp ult i32 %23, %25
  br i1 %cmp2.i, label %psz_read_next_zone.exit, label %if.end7.i

if.end7.i:                                        ; preds = %while.end.i
  %26 = ptrtoint ptr %pmsg_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmsg_read_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8.i = icmp eq i32 %27, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end15.i_crit_edge

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end7.i
  %28 = ptrtoint ptr %pmsg_read_cnt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %pmsg_read_cnt.i, align 4
  %29 = ptrtoint ptr %ppsz.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppsz.i, align 4
  %tobool.not.i45.i = icmp eq ptr %30, null
  br i1 %tobool.not.i45.i, label %if.then9.i.if.end15.i_crit_edge, label %land.lhs.true.i47.i

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

land.lhs.true.i47.i:                              ; preds = %if.then9.i
  %oldbuf.i.i = getelementptr inbounds %struct.pstore_zone, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %oldbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %oldbuf.i.i, align 4
  %tobool1.not.i46.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i46.i, label %land.lhs.true.i47.i.if.end15.i_crit_edge, label %land.lhs.true2.i48.i

land.lhs.true.i47.i.if.end15.i_crit_edge:         ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

land.lhs.true2.i48.i:                             ; preds = %land.lhs.true.i47.i
  %datalen.i.i = getelementptr inbounds %struct.psz_buffer, ptr %32, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %datalen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i48.i.if.end15.i_crit_edge, label %land.lhs.true2.i48.i.if.end4_crit_edge

land.lhs.true2.i48.i.if.end4_crit_edge:           ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true2.i48.i.if.end15.i_crit_edge:        ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true2.i48.i.if.end15.i_crit_edge, %land.lhs.true.i47.i.if.end15.i_crit_edge, %if.then9.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge
  %35 = ptrtoint ptr %console_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %console_read_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp16.i = icmp eq i32 %36, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17.i:                                      ; preds = %if.end15.i
  %37 = ptrtoint ptr %console_read_cnt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %console_read_cnt.i, align 4
  %38 = ptrtoint ptr %cpsz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpsz.i, align 4
  %tobool.not.i51.i = icmp eq ptr %39, null
  br i1 %tobool.not.i51.i, label %if.then17.i.cleanup_crit_edge, label %land.lhs.true.i54.i

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i54.i:                              ; preds = %if.then17.i
  %oldbuf.i52.i = getelementptr inbounds %struct.pstore_zone, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %oldbuf.i52.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oldbuf.i52.i, align 4
  %tobool1.not.i53.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i53.i, label %land.lhs.true.i54.i.cleanup_crit_edge, label %land.lhs.true2.i58.i

land.lhs.true.i54.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i58.i:                             ; preds = %land.lhs.true.i54.i
  %datalen.i55.i = getelementptr inbounds %struct.psz_buffer, ptr %41, i32 0, i32 1
  %call.i.i.i56.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i55.i, i32 noundef 4) #13
  %42 = ptrtoint ptr %datalen.i55.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %datalen.i55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool4.not.i57.i = icmp eq i32 %43, 0
  br i1 %tobool4.not.i57.i, label %land.lhs.true2.i58.i.cleanup_crit_edge, label %land.lhs.true2.i58.i.if.end4_crit_edge

land.lhs.true2.i58.i.if.end4_crit_edge:           ; preds = %land.lhs.true2.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true2.i58.i.cleanup_crit_edge:           ; preds = %land.lhs.true2.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

psz_read_next_zone.exit:                          ; preds = %while.end.i
  %44 = ptrtoint ptr %fpszs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fpszs.i, align 4
  %inc5.i = add nuw i32 %23, 1
  %46 = ptrtoint ptr %ftrace_read_cnt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc5.i, ptr %ftrace_read_cnt.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %45, i32 %23
  %47 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx6.i, align 4
  %tobool2.not = icmp eq ptr %48, null
  br i1 %tobool2.not, label %psz_read_next_zone.exit.cleanup_crit_edge, label %psz_read_next_zone.exit.if.end4_crit_edge

psz_read_next_zone.exit.if.end4_crit_edge:        ; preds = %psz_read_next_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

psz_read_next_zone.exit.cleanup_crit_edge:        ; preds = %psz_read_next_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %psz_read_next_zone.exit.if.end4_crit_edge, %land.lhs.true2.i58.i.if.end4_crit_edge, %land.lhs.true2.i48.i.if.end4_crit_edge, %land.lhs.true2.i.i.if.end4_crit_edge
  %retval.0.i33 = phi ptr [ %48, %psz_read_next_zone.exit.if.end4_crit_edge ], [ %39, %land.lhs.true2.i58.i.if.end4_crit_edge ], [ %30, %land.lhs.true2.i48.i.if.end4_crit_edge ], [ %13, %land.lhs.true2.i.i.if.end4_crit_edge ]
  %type = getelementptr inbounds %struct.pstore_zone, ptr %retval.0.i33, i32 0, i32 2
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  %51 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %type5, align 4
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %if.end4.next_zone.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %if.end4.sw.epilog_crit_edge
    i32 2, label %if.end4.sw.bb8_crit_edge
    i32 7, label %if.end4.sw.bb8_crit_edge40
  ]

if.end4.sw.bb8_crit_edge40:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

if.end4.sw.bb8_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end4.next_zone.backedge_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_zone.backedge

next_zone.backedge:                               ; preds = %sw.epilog.next_zone.backedge_crit_edge, %if.end4.next_zone.backedge_crit_edge
  br label %next_zone

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %kmsg_read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %kmsg_read_cnt.i, align 4
  %sub = add i32 %54, -1
  %conv = zext i32 %sub to i64
  %55 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv, ptr %id, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end4.sw.bb8_crit_edge, %if.end4.sw.bb8_crit_edge40
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %if.end4.sw.epilog_crit_edge
  %readop.0 = phi ptr [ @psz_record_read, %sw.bb8 ], [ @psz_kmsg_read, %sw.bb ], [ @psz_ftrace_read, %if.end4.sw.epilog_crit_edge ]
  %call9 = tail call i32 %readop.0(ptr noundef nonnull %retval.0.i33, ptr noundef %record) #13, !callees !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42, i32 %call9)
  %cmp = icmp eq i32 %call9, -42
  br i1 %cmp, label %sw.epilog.next_zone.backedge_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.next_zone.backedge_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_zone.backedge

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %psz_read_next_zone.exit.cleanup_crit_edge, %land.lhs.true2.i58.i.cleanup_crit_edge, %land.lhs.true.i54.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true2.i58.i.cleanup_crit_edge ], [ 0, %if.end15.i.cleanup_crit_edge ], [ 0, %if.then17.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i54.i.cleanup_crit_edge ], [ %call9, %sw.epilog.cleanup_crit_edge ], [ 0, %psz_read_next_zone.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_pstore_write(ptr noundef %record) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reason = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 8
  %6 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %on_panic = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %on_panic, i32 noundef 4) #13
  %8 = ptrtoint ptr %on_panic to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %on_panic, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %type, align 4
  br i1 %tobool.i.not, label %if.end6, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp4.not = icmp eq i32 %.pr, 0
  br i1 %cmp4.not, label %land.lhs.true2.sw.bb_crit_edge, label %land.lhs.true2.cleanup19_crit_edge

land.lhs.true2.cleanup19_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

land.lhs.true2.sw.bb_crit_edge:                   ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end6:                                          ; preds = %if.end
  %11 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %.pr, label %if.end6.cleanup19_crit_edge [
    i32 0, label %if.end6.sw.bb_crit_edge
    i32 2, label %sw.bb9
    i32 7, label %sw.bb11
    i32 3, label %sw.bb13
  ]

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end6.cleanup19_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %land.lhs.true2.sw.bb_crit_edge
  %part.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 9
  %12 = ptrtoint ptr %part.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %part.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup19_crit_edge

sw.bb.cleanup19_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

if.end.i:                                         ; preds = %sw.bb
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.cleanup19_crit_edge, label %if.end2.i

if.end.i.cleanup19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

if.end2.i:                                        ; preds = %if.end.i
  %call.i = tail call fastcc i32 @psz_kmsg_write_record(ptr noundef %3, ptr noundef %record) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end2.i.cleanup19_crit_edge

if.end2.i.cleanup19_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.cleanup19_crit_edge, label %do.body.i

land.lhs.true.i.cleanup19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

do.body.i:                                        ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_pstore_write, %if.then10.i)) #13
          to label %do.end.i [label %if.then10.i], !srcloc !273

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_write.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.136) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  tail call void @psz_flush_all_dirty_zones(ptr noundef null) #13
  br label %cleanup19

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %cpsz = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %cpsz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpsz, align 4
  %call10 = tail call fastcc i32 @psz_record_write(ptr noundef %18, ptr noundef %record)
  br label %cleanup19

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %ppsz = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ppsz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppsz, align 4
  %call12 = tail call fastcc i32 @psz_record_write(ptr noundef %20, ptr noundef %record)
  br label %cleanup19

sw.bb13:                                          ; preds = %if.end6
  %fpszs = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %fpszs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fpszs, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %sw.bb13.cleanup19_crit_edge, label %if.end16

sw.bb13.cleanup19_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

if.end16:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  %23 = tail call i32 @llvm.read_register.i32(metadata !263) #13
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call18 = tail call fastcc i32 @psz_record_write(ptr noundef %28, ptr noundef %record)
  br label %cleanup19

cleanup19:                                        ; preds = %if.end16, %sw.bb13.cleanup19_crit_edge, %sw.bb11, %sw.bb9, %do.end.i, %land.lhs.true.i.cleanup19_crit_edge, %if.end2.i.cleanup19_crit_edge, %if.end.i.cleanup19_crit_edge, %sw.bb.cleanup19_crit_edge, %if.end6.cleanup19_crit_edge, %land.lhs.true2.cleanup19_crit_edge
  %retval.1 = phi i32 [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ -16, %land.lhs.true2.cleanup19_crit_edge ], [ %call18, %if.end16 ], [ -28, %sw.bb13.cleanup19_crit_edge ], [ -22, %if.end6.cleanup19_crit_edge ], [ -28, %sw.bb.cleanup19_crit_edge ], [ -28, %if.end.i.cleanup19_crit_edge ], [ 0, %do.end.i ], [ 0, %land.lhs.true.i.cleanup19_crit_edge ], [ 0, %if.end2.i.cleanup19_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_pstore_erase(ptr nocapture noundef readonly %record) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %id = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %id, align 8
  %kmsg_max_cnt = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %kmsg_max_cnt, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp.not = icmp ult i64 %8, %conv
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %idxprom = trunc i64 %8 to i32
  %arrayidx = getelementptr ptr, ptr %12, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %buffer1.i = getelementptr inbounds %struct.pstore_zone, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer1.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  %tobool1.not.i.i = icmp eq ptr %16, null
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %land.lhs.true2.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i.i:                               ; preds = %if.end
  %datalen.i.i.i = getelementptr inbounds %struct.psz_buffer, ptr %16, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %datalen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %datalen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.cleanup_crit_edge, label %if.end.i

land.lhs.true2.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true2.i.i
  %count.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 7
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  %counter.i = getelementptr inbounds %struct.psz_buffer, ptr %16, i32 3, i32 1
  %21 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer1.i, align 8
  %datalen.i.i = getelementptr inbounds %struct.psz_buffer, ptr %24, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i, i32 noundef 4) #13
  %25 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %datalen.i.i, align 4
  %27 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer1.i, align 8
  %datalen.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen.i, i32 noundef 4) #13
  %29 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %datalen.i, align 4
  %pstore_zone_info.i = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %pstore_zone_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pstore_zone_info.i, align 4
  %erase.i = getelementptr inbounds %struct.pstore_zone_info, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %erase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %erase.i, align 4
  %tobool8.not.i = icmp eq ptr %33, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %26, 12
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %14, align 8
  %call12.i = tail call i32 %33(i32 noundef %add.i, i64 noundef %35) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %14, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %ppsz = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %ppsz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ppsz, align 4
  %tobool.not.i.i34 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i34, label %sw.bb3.cleanup_crit_edge, label %land.lhs.true.i.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %sw.bb3
  %oldbuf.i.i = getelementptr inbounds %struct.pstore_zone, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %oldbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oldbuf.i.i, align 4
  %tobool1.not.i.i35 = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i35, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true2.i.i38

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i.i38:                             ; preds = %land.lhs.true.i.i
  %datalen.i.i36 = getelementptr inbounds %struct.psz_buffer, ptr %39, i32 0, i32 1
  %call.i.i.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i36, i32 noundef 4) #13
  %40 = ptrtoint ptr %datalen.i.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %datalen.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i38.cleanup_crit_edge, label %if.end.i39

land.lhs.true2.i.i38.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i39:                                       ; preds = %land.lhs.true2.i.i38
  %42 = ptrtoint ptr %oldbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %oldbuf.i.i, align 4
  tail call void @kfree(ptr noundef %43) #13
  %44 = ptrtoint ptr %oldbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %oldbuf.i.i, align 4
  %buffer.i.i = getelementptr inbounds %struct.pstore_zone, ptr %37, i32 0, i32 3
  %45 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer.i.i, align 8
  %datalen.i1.i = getelementptr inbounds %struct.psz_buffer, ptr %46, i32 0, i32 1
  %call.i.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i1.i, i32 noundef 4) #13
  %47 = ptrtoint ptr %datalen.i1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %datalen.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool5.not.i = icmp eq i32 %48, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i80

if.then6.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %37, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end.i80:                                       ; preds = %if.end.i39
  %call.i.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i = icmp eq i32 %49, 0
  br i1 %tobool4.not.i, label %if.end.i80.cleanup_crit_edge, label %if.end14.i, !prof !274

if.end.i80.cleanup_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i80
  %dirty.i = getelementptr inbounds %struct.pstore_zone, ptr %37, i32 0, i32 7
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i) #13, !srcloc !276
  %asmresult.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool16.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.cleanup_crit_edge, label %if.end18.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %37, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.cleanup_crit_edge, label %if.then21.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  %51 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %dirty.i, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %cpsz = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %cpsz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpsz, align 4
  %tobool.not.i.i41 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i41, label %sw.bb5.cleanup_crit_edge, label %land.lhs.true.i.i44

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.i44:                              ; preds = %sw.bb5
  %oldbuf.i.i42 = getelementptr inbounds %struct.pstore_zone, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %oldbuf.i.i42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oldbuf.i.i42, align 4
  %tobool1.not.i.i43 = icmp eq ptr %55, null
  br i1 %tobool1.not.i.i43, label %land.lhs.true.i.i44.cleanup_crit_edge, label %land.lhs.true2.i.i48

land.lhs.true.i.i44.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i.i48:                             ; preds = %land.lhs.true.i.i44
  %datalen.i.i45 = getelementptr inbounds %struct.psz_buffer, ptr %55, i32 0, i32 1
  %call.i.i.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i45, i32 noundef 4) #13
  %56 = ptrtoint ptr %datalen.i.i45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %datalen.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool4.not.i.i47 = icmp eq i32 %57, 0
  br i1 %tobool4.not.i.i47, label %land.lhs.true2.i.i48.cleanup_crit_edge, label %if.end.i53

land.lhs.true2.i.i48.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i53:                                       ; preds = %land.lhs.true2.i.i48
  %58 = ptrtoint ptr %oldbuf.i.i42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %oldbuf.i.i42, align 4
  tail call void @kfree(ptr noundef %59) #13
  %60 = ptrtoint ptr %oldbuf.i.i42 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %oldbuf.i.i42, align 4
  %buffer.i.i49 = getelementptr inbounds %struct.pstore_zone, ptr %53, i32 0, i32 3
  %61 = ptrtoint ptr %buffer.i.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer.i.i49, align 8
  %datalen.i1.i50 = getelementptr inbounds %struct.psz_buffer, ptr %62, i32 0, i32 1
  %call.i.i.i2.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i1.i50, i32 noundef 4) #13
  %63 = ptrtoint ptr %datalen.i1.i50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %datalen.i1.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool5.not.i52 = icmp eq i32 %64, 0
  br i1 %tobool5.not.i52, label %if.then6.i55, label %if.end.i85

if.then6.i55:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i54 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %53, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end.i85:                                       ; preds = %if.end.i53
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool4.not.i84 = icmp eq i32 %65, 0
  br i1 %tobool4.not.i84, label %if.end.i85.cleanup_crit_edge, label %if.end14.i90, !prof !274

if.end.i85.cleanup_crit_edge:                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i90:                                     ; preds = %if.end.i85
  %dirty.i86 = getelementptr inbounds %struct.pstore_zone, ptr %53, i32 0, i32 7
  %call.i.i28.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i86, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i86, i32 1, i32 3, i32 1) #13
  %66 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i86) #13, !srcloc !276
  %asmresult.i.i.i88 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i88)
  %tobool16.not.i89 = icmp eq i32 %asmresult.i.i.i88, 0
  br i1 %tobool16.not.i89, label %if.end14.i90.cleanup_crit_edge, label %if.end18.i93

if.end14.i90.cleanup_crit_edge:                   ; preds = %if.end14.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18.i93:                                     ; preds = %if.end14.i90
  %call19.i91 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %53, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i91)
  %tobool20.not.i92 = icmp eq i32 %call19.i91, 0
  br i1 %tobool20.not.i92, label %if.end18.i93.cleanup_crit_edge, label %if.then21.i95

if.end18.i93.cleanup_crit_edge:                   ; preds = %if.end18.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21.i95:                                    ; preds = %if.end18.i93
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i86, i32 noundef 4) #13
  %67 = ptrtoint ptr %dirty.i86 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %dirty.i86, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %id8 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %68 = ptrtoint ptr %id8 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %id8, align 8
  %ftrace_max_cnt = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 9
  %70 = ptrtoint ptr %ftrace_max_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ftrace_max_cnt, align 4
  %conv9 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %conv9)
  %cmp10.not = icmp ult i64 %69, %conv9
  br i1 %cmp10.not, label %if.end13, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %sw.bb7
  %fpszs = getelementptr inbounds %struct.psz_context, ptr %3, i32 0, i32 3
  %72 = ptrtoint ptr %fpszs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fpszs, align 4
  %idxprom15 = trunc i64 %69 to i32
  %arrayidx16 = getelementptr ptr, ptr %73, i32 %idxprom15
  %74 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i.i60 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i60, label %if.end13.cleanup_crit_edge, label %land.lhs.true.i.i63

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.i63:                              ; preds = %if.end13
  %oldbuf.i.i61 = getelementptr inbounds %struct.pstore_zone, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %oldbuf.i.i61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %oldbuf.i.i61, align 4
  %tobool1.not.i.i62 = icmp eq ptr %77, null
  br i1 %tobool1.not.i.i62, label %land.lhs.true.i.i63.cleanup_crit_edge, label %land.lhs.true2.i.i67

land.lhs.true.i.i63.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i.i67:                             ; preds = %land.lhs.true.i.i63
  %datalen.i.i64 = getelementptr inbounds %struct.psz_buffer, ptr %77, i32 0, i32 1
  %call.i.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i64, i32 noundef 4) #13
  %78 = ptrtoint ptr %datalen.i.i64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %datalen.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool4.not.i.i66 = icmp eq i32 %79, 0
  br i1 %tobool4.not.i.i66, label %land.lhs.true2.i.i67.cleanup_crit_edge, label %if.end.i72

land.lhs.true2.i.i67.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i72:                                       ; preds = %land.lhs.true2.i.i67
  %80 = ptrtoint ptr %oldbuf.i.i61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %oldbuf.i.i61, align 4
  tail call void @kfree(ptr noundef %81) #13
  %82 = ptrtoint ptr %oldbuf.i.i61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %oldbuf.i.i61, align 4
  %buffer.i.i68 = getelementptr inbounds %struct.pstore_zone, ptr %75, i32 0, i32 3
  %83 = ptrtoint ptr %buffer.i.i68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer.i.i68, align 8
  %datalen.i1.i69 = getelementptr inbounds %struct.psz_buffer, ptr %84, i32 0, i32 1
  %call.i.i.i2.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i1.i69, i32 noundef 4) #13
  %85 = ptrtoint ptr %datalen.i1.i69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %datalen.i1.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool5.not.i71 = icmp eq i32 %86, 0
  br i1 %tobool5.not.i71, label %if.then6.i74, label %if.end.i101

if.then6.i74:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i73 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %75, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end.i101:                                      ; preds = %if.end.i72
  %call.i.i.i99 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool4.not.i100 = icmp eq i32 %87, 0
  br i1 %tobool4.not.i100, label %if.end.i101.cleanup_crit_edge, label %if.end14.i106, !prof !274

if.end.i101.cleanup_crit_edge:                    ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i106:                                    ; preds = %if.end.i101
  %dirty.i102 = getelementptr inbounds %struct.pstore_zone, ptr %75, i32 0, i32 7
  %call.i.i28.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i102, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i102, i32 1, i32 3, i32 1) #13
  %88 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i102) #13, !srcloc !276
  %asmresult.i.i.i104 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i104)
  %tobool16.not.i105 = icmp eq i32 %asmresult.i.i.i104, 0
  br i1 %tobool16.not.i105, label %if.end14.i106.cleanup_crit_edge, label %if.end18.i109

if.end14.i106.cleanup_crit_edge:                  ; preds = %if.end14.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18.i109:                                    ; preds = %if.end14.i106
  %call19.i107 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %75, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i107)
  %tobool20.not.i108 = icmp eq i32 %call19.i107, 0
  br i1 %tobool20.not.i108, label %if.end18.i109.cleanup_crit_edge, label %if.then21.i111

if.end18.i109.cleanup_crit_edge:                  ; preds = %if.end18.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21.i111:                                   ; preds = %if.end18.i109
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i102, i32 noundef 4) #13
  %89 = ptrtoint ptr %dirty.i102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 1, ptr %dirty.i102, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21.i111, %if.end18.i109.cleanup_crit_edge, %if.end14.i106.cleanup_crit_edge, %if.end.i101.cleanup_crit_edge, %if.then6.i74, %land.lhs.true2.i.i67.cleanup_crit_edge, %land.lhs.true.i.i63.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %if.then21.i95, %if.end18.i93.cleanup_crit_edge, %if.end14.i90.cleanup_crit_edge, %if.end.i85.cleanup_crit_edge, %if.then6.i55, %land.lhs.true2.i.i48.cleanup_crit_edge, %land.lhs.true.i.i44.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %if.then21.i, %if.end18.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end.i80.cleanup_crit_edge, %if.then6.i, %land.lhs.true2.i.i38.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.else.i, %if.then9.i, %if.end.i.cleanup_crit_edge, %land.lhs.true2.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call12.i, %if.then9.i ], [ %call13.i, %if.else.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.i.cleanup_crit_edge ], [ %call7.i, %if.then6.i ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.i38.cleanup_crit_edge ], [ 0, %if.end.i80.cleanup_crit_edge ], [ 0, %if.end14.i.cleanup_crit_edge ], [ 0, %if.end18.i.cleanup_crit_edge ], [ 0, %if.then21.i ], [ %call7.i54, %if.then6.i55 ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i44.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.i48.cleanup_crit_edge ], [ 0, %if.end.i85.cleanup_crit_edge ], [ 0, %if.end14.i90.cleanup_crit_edge ], [ 0, %if.end18.i93.cleanup_crit_edge ], [ 0, %if.then21.i95 ], [ %call7.i73, %if.then6.i74 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i63.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.i67.cleanup_crit_edge ], [ 0, %if.end.i101.cleanup_crit_edge ], [ 0, %if.end14.i106.cleanup_crit_edge ], [ 0, %if.end18.i109.cleanup_crit_edge ], [ 0, %if.then21.i111 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_recovery(ptr noundef %cxt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %recovered = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %recovered, i32 noundef 4) #13
  %0 = ptrtoint ptr %recovered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %recovered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @psz_kmsg_recover(ptr noundef %cxt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end4:                                          ; preds = %if.end
  %ppsz = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 1
  %2 = ptrtoint ptr %ppsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppsz, align 4
  %call5 = tail call fastcc i32 @psz_recover_zone(ptr noundef %cxt, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end8:                                          ; preds = %if.end4
  %cpsz = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 2
  %4 = ptrtoint ptr %cpsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpsz, align 4
  %call9 = tail call fastcc i32 @psz_recover_zone(ptr noundef %cxt, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %out, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

out:                                              ; preds = %if.end8
  %fpszs = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 3
  %6 = ptrtoint ptr %fpszs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fpszs, align 4
  %ftrace_max_cnt = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 9
  %8 = ptrtoint ptr %ftrace_max_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ftrace_max_cnt, align 4
  %call13 = tail call fastcc i32 @psz_recover_zones(ptr noundef %cxt, ptr noundef %7, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body19, label %out.do.end_crit_edge, !prof !279

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %out.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.end4.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.051 = phi i32 [ %call13, %out.do.end_crit_edge ], [ %call9, %if.end8.do.end_crit_edge ], [ %call5, %if.end4.do.end_crit_edge ], [ %call1, %if.end.do.end_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #16
  br label %cleanup

do.body19:                                        ; preds = %out
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recovery.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recovery, %if.then29)) #13
          to label %do.end32 [label %if.then29], !srcloc !273

if.then29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recovery.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.93) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body19
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %recovered, i32 noundef 4) #13
  %10 = ptrtoint ptr %recovered to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %recovered, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end32 ], [ %ret.051, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_kmsg_read(ptr noundef %zone, ptr nocapture noundef %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer.i = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %0 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer.i, align 8
  %datalen.i = getelementptr inbounds %struct.psz_buffer, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %datalen.i, align 4
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 8
  %data.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1308375781, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1308375781
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i, align 8
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %9, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen, i32 noundef 4) #13
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %datalen, align 4
  %dirty = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 7
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty, i32 noundef 4) #13
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %dirty, align 4
  br label %cleanup28

if.end:                                           ; preds = %entry
  %compressed.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 3
  %12 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %compressed.i, align 8, !range !280
  %compressed2.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  %14 = ptrtoint ptr %compressed2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %compressed2.i, align 8
  %time.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 1, i32 2
  %15 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %time.i, align 8
  %time3.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %17 = ptrtoint ptr %time3.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %time3.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 2, i32 1
  %18 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tv_nsec7.i, align 8
  %reason.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 3, i32 2
  %21 = ptrtoint ptr %reason.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reason.i, align 8
  %reason8.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 8
  %23 = ptrtoint ptr %reason8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reason8.i, align 8
  %counter.i = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 3, i32 1
  %24 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter.i, align 4
  %count.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 7
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %count.i, align 4
  %sub = add i32 %3, -40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.then3, label %if.end8.i

if.then3:                                         ; preds = %if.end
  %27 = ptrtoint ptr %reason8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reason8.i, align 8
  %call4 = tail call ptr @kmsg_dump_reason_str(i32 noundef %28) #13
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 4
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.133, ptr noundef %call4, i32 noundef %30) #13
  %call6 = tail call i32 @strlen(ptr noundef %call5) #18
  %add = add i32 %call6, %sub
  %call7 = tail call noalias ptr @krealloc(ptr noundef %call5, i32 noundef %add, i32 noundef 3264) #19
  %buf8 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %31 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7, ptr %buf8, align 8
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.then11, label %if.then3.if.end19_crit_edge

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %call5) #13
  br label %cleanup28

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3264) #17
  %buf14 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %32 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i, ptr %buf14, align 8
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %if.end8.i.cleanup28_crit_edge, label %if.end8.i.if.end19_crit_edge

if.end8.i.if.end19_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end8.i.cleanup28_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

if.end19:                                         ; preds = %if.end8.i.if.end19_crit_edge, %if.then3.if.end19_crit_edge
  %hlen.0 = phi i32 [ 0, %if.end8.i.if.end19_crit_edge ], [ %call6, %if.then3.if.end19_crit_edge ]
  %buf20 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %33 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf20, align 8
  %add.ptr = getelementptr i8, ptr %34, i32 %hlen.0
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %tobool1.not.i = icmp eq ptr %zone, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end19.if.then24_crit_edge, label %lor.lhs.false2.i

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false2.i:                                 ; preds = %if.end19
  %35 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer.i, align 8
  %tobool3.not.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.if.then24_crit_edge, label %if.end.i56

lor.lhs.false2.i.if.then24_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.end.i56:                                       ; preds = %lor.lhs.false2.i
  %buffer_size.i = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 5
  %37 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %38)
  %cmp.i55 = icmp ult i32 %38, 40
  br i1 %cmp.i55, label %if.end.i56.if.then24_crit_edge, label %psz_zone_read_buffer.exit

if.end.i56.if.then24_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

psz_zone_read_buffer.exit:                        ; preds = %if.end.i56
  %sub.i = add i32 %38, -40
  %39 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub) #13
  %add.ptr.i = getelementptr %struct.psz_buffer, ptr %36, i32 4, i32 1
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp slt i32 %39, 0
  br i1 %cmp, label %psz_zone_read_buffer.exit.if.then24_crit_edge, label %if.end26, !prof !274

psz_zone_read_buffer.exit.if.then24_crit_edge:    ; preds = %psz_zone_read_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %psz_zone_read_buffer.exit.if.then24_crit_edge, %if.end.i56.if.then24_crit_edge, %lor.lhs.false2.i.if.then24_crit_edge, %if.end19.if.then24_crit_edge
  %41 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf20, align 8
  tail call void @kfree(ptr noundef %42) #13
  br label %cleanup28

if.end26:                                         ; preds = %psz_zone_read_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add27 = add i32 %39, %hlen.0
  br label %cleanup28

cleanup28:                                        ; preds = %if.end26, %if.then24, %if.end8.i.cleanup28_crit_edge, %if.then11, %if.then
  %retval.1 = phi i32 [ -42, %if.then ], [ -42, %if.then24 ], [ %add27, %if.end26 ], [ -12, %if.then11 ], [ -12, %if.end8.i.cleanup28_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_ftrace_read(ptr noundef readonly %zone, ptr noundef %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zone, null
  %tobool1.not = icmp eq ptr %record, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %oldbuf.i = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %oldbuf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oldbuf.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %datalen.i = getelementptr inbounds %struct.psz_buffer, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.i = icmp eq i32 %3, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.out_crit_edge, label %if.end3

land.lhs.true2.i.out_crit_edge:                   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %land.lhs.true2.i
  %4 = ptrtoint ptr %oldbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oldbuf.i, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %buf7 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %data = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 0, i32 3
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %datalen, align 4
  %call9 = tail call i32 @pstore_ftrace_combine_log(ptr noundef %buf7, ptr noundef %size, ptr noundef %data, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end6.out_crit_edge, label %if.end6.cleanup_crit_edge, !prof !279

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end6.out_crit_edge, %land.lhs.true2.i.out_crit_edge, %land.lhs.true.i.out_crit_edge
  %8 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %record, align 8
  %data15 = getelementptr inbounds %struct.pstore_info, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data15, align 4
  %ftrace_read_cnt = getelementptr inbounds %struct.psz_context, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %ftrace_read_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ftrace_read_cnt, align 4
  %ftrace_max_cnt = getelementptr inbounds %struct.psz_context, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %ftrace_max_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ftrace_max_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %out.cleanup_crit_edge, label %if.end17

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %id, align 8
  %size18 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %17 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  %spec.select = select i1 %tobool19.not, i32 -42, i32 %18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %out.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end17 ], [ -28, %entry.cleanup_crit_edge ], [ -42, %if.end3.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ -42, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psz_record_read(ptr noundef readonly %zone, ptr noundef %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zone, null
  %tobool1.not = icmp eq ptr %record, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %oldbuf = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %oldbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oldbuf, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %datalen, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #17
  %buf6 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %4 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %buf6, align 8
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false2.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %if.end4
  %5 = ptrtoint ptr %oldbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oldbuf, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.then16, label %psz_zone_read_oldbuf.exit.thread

psz_zone_read_oldbuf.exit.thread:                 ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_size.i = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 5
  %7 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_size.i, align 8
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %3) #13
  %data.i = getelementptr inbounds %struct.psz_buffer, ptr %6, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %call9.i, ptr %data.i, i32 %9)
  br label %cleanup

if.then16:                                        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf6, align 8
  tail call void @kfree(ptr noundef %12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %psz_zone_read_oldbuf.exit.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -42, %if.then16 ], [ -28, %entry.cleanup_crit_edge ], [ -42, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %3, %psz_zone_read_oldbuf.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_kmsg_recover(ptr nocapture noundef %cxt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @psz_kmsg_recover_meta(ptr noundef %cxt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end3:                                          ; preds = %if.end
  %pstore_zone_info.i = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 16
  %2 = ptrtoint ptr %pstore_zone_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstore_zone_info.i, align 4
  %read.i = getelementptr inbounds %struct.pstore_zone_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end3.do.body_crit_edge, label %for.cond.preheader.i

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.preheader.i:                             ; preds = %if.end3
  %kmsg_max_cnt.i = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 4
  %6 = ptrtoint ptr %kmsg_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kmsg_max_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp67.not.i = icmp eq i32 %7, 0
  br i1 %cmp67.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %kmsg_write_cnt.i = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cxt, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.068.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %for.body.i.do.body_crit_edge, label %if.end6.i, !prof !274

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end6.i:                                        ; preds = %for.body.i
  %dirty.i = getelementptr inbounds %struct.pstore_zone, ptr %11, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end20.i_crit_edge, label %if.then8.i

if.end6.i.if.end20.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then8.i:                                       ; preds = %if.end6.i
  %14 = ptrtoint ptr %kmsg_write_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %kmsg_write_cnt.i, align 4
  %16 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cxt, align 4
  %arrayidx10.i = getelementptr ptr, ptr %17, i32 %15
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx10.i, align 4
  %buffer.i.i = getelementptr inbounds %struct.pstore_zone, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer.i.i, align 8
  %data1.i.i = getelementptr inbounds %struct.psz_buffer, ptr %21, i32 0, i32 3
  %datalen.i.i.i = getelementptr inbounds %struct.psz_buffer, ptr %21, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen.i.i.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %datalen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %datalen.i.i.i, align 4
  %call2.i.i = tail call fastcc i32 @psz_zone_write(ptr noundef %19, i32 noundef 3, ptr noundef %data1.i.i, i32 noundef %23, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i.i, align 8
  %datalen5.i.i = getelementptr inbounds %struct.psz_buffer, ptr %25, i32 0, i32 1
  %call.i.i13.i62.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen5.i.i, i32 noundef 4) #13
  %26 = ptrtoint ptr %datalen5.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %datalen5.i.i, align 4
  %add.i = add i32 %15, 1
  %27 = ptrtoint ptr %kmsg_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %kmsg_max_cnt.i, align 4
  %rem.i = urem i32 %add.i, %28
  %29 = ptrtoint ptr %kmsg_write_cnt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem.i, ptr %kmsg_write_cnt.i, align 4
  br label %if.end20.i

cleanup.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %buffer3.i.i = getelementptr inbounds %struct.pstore_zone, ptr %19, i32 0, i32 3
  %30 = ptrtoint ptr %buffer3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer3.i.i, align 8
  %datalen.i.i = getelementptr inbounds %struct.psz_buffer, ptr %31, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen.i.i, i32 noundef 4) #13
  %32 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %datalen.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.pstore_zone, ptr %19, i32 0, i32 7
  %call.i.i13.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %dirty.i.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %i.068.i, i32 noundef %15) #16
  br label %do.body

if.end20.i:                                       ; preds = %cleanup.thread.i, %if.end6.i.if.end20.i_crit_edge
  %should_recover.i = getelementptr inbounds %struct.pstore_zone, ptr %11, i32 0, i32 6
  %34 = ptrtoint ptr %should_recover.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %should_recover.i, align 4, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool21.not.i = icmp eq i8 %35, 0
  br i1 %tobool21.not.i, label %if.end20.i.for.inc.i_crit_edge, label %if.end23.i

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end23.i:                                       ; preds = %if.end20.i
  %buffer.i = getelementptr inbounds %struct.pstore_zone, ptr %11, i32 0, i32 3
  %36 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer.i, align 8
  %38 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.pstore_zone, ptr %11, i32 0, i32 5
  %40 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size.i, align 8
  %add25.i = add i32 %41, 12
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %11, align 8
  %call26.i = tail call i32 %39(ptr noundef %37, i32 noundef %add25.i, i64 noundef %43) #13
  %44 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_size.i, align 8
  %add28.i = add i32 %45, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %add28.i)
  %cmp29.not.i = icmp eq i32 %call26.i, %add28.i
  br i1 %cmp29.not.i, label %if.end23.i.for.inc.i_crit_edge, label %if.then30.i

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp31.i = icmp slt i32 %call26.i, 0
  %spec.select = select i1 %cmp31.i, i32 %call26.i, i32 -5
  br label %do.body

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %if.end20.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.068.i, 1
  %46 = ptrtoint ptr %kmsg_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %kmsg_max_cnt.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %47
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body:                                          ; preds = %if.then30.i, %cleanup.i, %for.body.i.do.body_crit_edge, %if.end3.do.body_crit_edge, %if.end.do.body_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.do.body_crit_edge ], [ -22, %if.end3.do.body_crit_edge ], [ %call2.i.i, %cleanup.i ], [ %spec.select, %if.then30.i ], [ -22, %for.body.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_recover.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_recover, %if.then12)) #13
          to label %cleanup [label %if.then12], !srcloc !273

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_recover.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.96) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then12 ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %ret.0, %do.body ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_recover_zone(ptr nocapture noundef readonly %cxt, ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  %tmpbuf = alloca %struct.psz_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pstore_zone_info = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 16
  %0 = ptrtoint ptr %pstore_zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstore_zone_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #13
  %2 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmpbuf, align 4, !annotation !281
  %3 = getelementptr inbounds %struct.psz_buffer, ptr %tmpbuf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !281
  %5 = getelementptr inbounds %struct.psz_buffer, ptr %tmpbuf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !281
  %tobool.not = icmp eq ptr %zone, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %oldbuf1 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 4
  %7 = ptrtoint ptr %oldbuf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oldbuf1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call.i.i.i246 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end14.i, !prof !274

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %dirty.i = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 7
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i) #13, !srcloc !276
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool16.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.cleanup_crit_edge, label %if.end18.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.cleanup_crit_edge, label %if.then21.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %dirty.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %read = getelementptr inbounds %struct.pstore_zone_info, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end11, !prof !274

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %zone, align 8
  %call14 = call i32 %14(ptr noundef nonnull %tmpbuf, i32 noundef 12, i64 noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 12
  br i1 %cmp.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recover_zone.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recover_zone, %if.then24)) #13
          to label %do.end [label %if.then24], !srcloc !273

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recover_zone.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.117, ptr noundef %18) #13
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp26 = icmp slt i32 %call14, 0
  %spec.select = select i1 %cmp26, i32 %call14, i32 -5
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmpbuf, align 4
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp29.not = icmp eq i32 %20, %24
  br i1 %cmp29.not, label %if.end48, label %do.body31

do.body31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recover_zone.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recover_zone, %if.then43)) #13
          to label %cleanup [label %if.then43], !srcloc !273

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %name44 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %25 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name44, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recover_zone.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.119, ptr noundef %26) #13
  br label %cleanup

if.end48:                                         ; preds = %if.end27
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 5
  %27 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size, align 8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #13
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp50 = icmp ult i32 %28, %30
  br i1 %cmp50, label %if.end48.do.end59_crit_edge, label %lor.lhs.false51

if.end48.do.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

lor.lhs.false51:                                  ; preds = %if.end48
  %31 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_size, align 8
  %call.i.i233 = call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #13
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp55 = icmp ult i32 %32, %34
  br i1 %cmp55, label %lor.lhs.false51.do.end59_crit_edge, label %if.end65

lor.lhs.false51.do.end59_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

do.end59:                                         ; preds = %lor.lhs.false51.do.end59_crit_edge, %if.end48.do.end59_crit_edge
  %name61 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %35 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name61, align 8
  %37 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %zone, align 8
  %39 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_size, align 8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %36, i64 noundef %38, i32 noundef %40) #16
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false51
  %call.i.i234 = call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #13
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool68.not = icmp eq i32 %42, 0
  br i1 %tobool68.not, label %do.body70, label %do.body92

do.body70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recover_zone.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recover_zone, %if.then82)) #13
          to label %cleanup [label %if.then82], !srcloc !273

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  %name83 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %43 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name83, align 8
  %45 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %zone, align 8
  %47 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_size, align 8
  %call.i.i238 = call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #13
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %3, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recover_zone.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.122, ptr noundef %44, i64 noundef %46, i32 noundef %48, i32 noundef %50) #13
  br label %cleanup

do.body92:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recover_zone.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recover_zone, %if.then104)) #13
          to label %do.end112 [label %if.then104], !srcloc !273

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  %name105 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %51 = ptrtoint ptr %name105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name105, align 8
  %53 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %zone, align 8
  %55 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buffer_size, align 8
  %call.i.i242 = call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #13
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %3, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recover_zone.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.124, ptr noundef %52, i64 noundef %54, i32 noundef %56, i32 noundef %58) #13
  br label %do.end112

do.end112:                                        ; preds = %if.then104, %do.body92
  %call.i.i243 = call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #13
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %3, align 4
  %add = add i32 %60, 12
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool116.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool116.not, label %do.end112.cleanup_crit_edge, label %if.end118

do.end112.cleanup_crit_edge:                      ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end118:                                        ; preds = %do.end112
  %61 = call ptr @memcpy(ptr %call9.i.i, ptr %tmpbuf, i32 12)
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 12
  %datalen119 = getelementptr inbounds %struct.psz_buffer, ptr %call9.i.i, i32 0, i32 1
  %call.i.i244 = call zeroext i1 @__kasan_check_read(ptr noundef %datalen119, i32 noundef 4) #13
  %62 = ptrtoint ptr %datalen119 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %datalen119, align 4
  %start121 = getelementptr inbounds %struct.psz_buffer, ptr %call9.i.i, i32 0, i32 2
  %call.i.i245 = call zeroext i1 @__kasan_check_read(ptr noundef %start121, i32 noundef 4) #13
  %64 = ptrtoint ptr %start121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %start121, align 8
  %66 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %zone, align 8
  %68 = trunc i64 %67 to i32
  %conv = add i32 %68, 12
  %69 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read, align 4
  %sub = sub i32 %63, %65
  %add126 = add i32 %conv, %65
  %conv127 = sext i32 %add126 to i64
  %call128 = call i32 %70(ptr noundef %add.ptr, i32 noundef %sub, i64 noundef %conv127) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call128, i32 %sub)
  %cmp130.not = icmp eq i32 %call128, %sub
  br i1 %cmp130.not, label %if.end145, label %if.end118.free_oldbuf_crit_edge

if.end118.free_oldbuf_crit_edge:                  ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_oldbuf

if.end145:                                        ; preds = %if.end118
  %71 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read, align 4
  %add.ptr147 = getelementptr i8, ptr %add.ptr, i32 %63
  %idx.neg = sub i32 0, %65
  %add.ptr148 = getelementptr i8, ptr %add.ptr147, i32 %idx.neg
  %conv149 = sext i32 %conv to i64
  %call150 = call i32 %72(ptr noundef %add.ptr148, i32 noundef %65, i64 noundef %conv149) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call150, i32 %65)
  %cmp151.not = icmp eq i32 %call150, %65
  br i1 %cmp151.not, label %if.end166, label %if.end145.free_oldbuf_crit_edge

if.end145.free_oldbuf_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_oldbuf

if.end166:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %oldbuf1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i.i, ptr %oldbuf1, align 4
  %call168 = call fastcc i32 @psz_flush_dirty_zone(ptr noundef nonnull %zone)
  br label %cleanup

free_oldbuf:                                      ; preds = %if.end145.free_oldbuf_crit_edge, %if.end118.free_oldbuf_crit_edge
  %call150.sink256 = phi i32 [ %call128, %if.end118.free_oldbuf_crit_edge ], [ %call150, %if.end145.free_oldbuf_crit_edge ]
  %name158 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 1
  %74 = ptrtoint ptr %name158 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name158, align 8
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %75) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.sink256)
  %cmp160 = icmp slt i32 %call150.sink256, 0
  %spec.select229 = select i1 %cmp160, i32 %call150.sink256, i32 -5
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free_oldbuf, %if.end166, %do.end112.cleanup_crit_edge, %if.then82, %do.body70, %do.end59, %if.then43, %do.body31, %do.end, %if.end5.cleanup_crit_edge, %if.then21.i, %if.end18.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ 0, %do.end59 ], [ %spec.select229, %free_oldbuf ], [ 0, %if.end166 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %if.then82 ], [ -12, %do.end112.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end14.i.cleanup_crit_edge ], [ 0, %if.end18.i.cleanup_crit_edge ], [ 0, %if.then21.i ], [ 0, %do.body31 ], [ 0, %do.body70 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_recover_zones(ptr nocapture noundef readonly %cxt, ptr noundef readonly %zones, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %zones, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp31 = icmp ne i32 %cnt, 0
  %or.cond = and i1 %tobool.not, %cmp31
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %zones, i32 %i.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end6, !prof !274

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %call = tail call fastcc i32 @psz_recover_zone(ptr noundef %cxt, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %do.body

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_recover_zones.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_recover_zones, %if.then18)) #13
          to label %cleanup [label %if.then18], !srcloc !273

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pstore_zone, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_recover_zones.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.132, ptr noundef %3, i32 noundef %i.032) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then18 ], [ %call, %do.body ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_kmsg_recover_meta(ptr nocapture noundef %cxt) unnamed_addr #0 align 64 {
entry:
  %buffer_header = alloca [52 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pstore_zone_info = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 16
  %0 = ptrtoint ptr %pstore_zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstore_zone_info, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %buffer_header) #13
  %2 = call ptr @memset(ptr %buffer_header, i32 0, i32 52)
  %read = getelementptr inbounds %struct.pstore_zone_info, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %kmsg_max_cnt = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 4
  %5 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %kmsg_max_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp245.not = icmp eq i32 %6, 0
  br i1 %cmp245.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %buffer_header, i32 0, i32 1
  %data = getelementptr inbounds %struct.psz_buffer, ptr %buffer_header, i32 0, i32 3
  %time75 = getelementptr inbounds %struct.psz_buffer, ptr %buffer_header, i32 1, i32 2
  %kmsg_write_cnt = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 6
  %reason = getelementptr inbounds %struct.psz_buffer, ptr %buffer_header, i32 3, i32 2
  %panic_counter = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 12
  %counter97 = getelementptr inbounds %struct.psz_buffer, ptr %buffer_header, i32 3, i32 1
  %oops_counter = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %time.sroa.0.0248 = phi i64 [ 0, %for.body.lr.ph ], [ %time.sroa.0.2, %for.inc.for.body_crit_edge ]
  %i.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cxt, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.0246
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end6, !prof !274

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  %call = call i32 %12(ptr noundef nonnull %buffer_header, i32 noundef 52, i64 noundef %14) #13
  %15 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call, label %do.end24 [
    i32 -42, label %do.body
    i32 52, label %if.end30
  ]

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_recover_meta, %if.then18)) #13
          to label %for.inc [label %if.then18], !srcloc !273

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.99, ptr noundef %17, i32 noundef %i.0246) #13
  br label %for.inc

do.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %name26 = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name26, align 8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %19, i32 noundef %i.0246) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp28, i32 %call, i32 -5
  br label %cleanup

if.end30:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %buffer_header to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_header, align 4
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp32.not = icmp eq i32 %21, %25
  br i1 %cmp32.not, label %if.end50, label %do.body34

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_recover_meta, %if.then46)) #13
          to label %for.inc [label %if.then46], !srcloc !273

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.102, i32 noundef %i.0246) #13
  br label %for.inc

if.end50:                                         ; preds = %if.end30
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 5
  %26 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_size, align 8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %28 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp52 = icmp ult i32 %27, %29
  br i1 %cmp52, label %do.end56, label %if.end62

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %name58 = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %30 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name58, align 8
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %10, align 8
  %34 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_size, align 8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %31, i32 noundef %i.0246, i64 noundef %33, i32 noundef %35) #16
  br label %for.inc

if.end62:                                         ; preds = %if.end50
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1308375781, i32 %37)
  %cmp64.not = icmp eq i32 %37, 1308375781
  br i1 %cmp64.not, label %if.end74, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %name70 = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name70, align 8
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %10, align 8
  %42 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_size, align 8
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %39, i32 noundef %i.0246, i64 noundef %41, i32 noundef %43) #16
  br label %for.inc

if.end74:                                         ; preds = %if.end62
  %44 = ptrtoint ptr %time75 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %time75, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %time.sroa.0.0248)
  %cmp77.not = icmp slt i64 %45, %time.sroa.0.0248
  br i1 %cmp77.not, label %if.end74.if.end83_crit_edge, label %if.then78

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nuw i32 %i.0246, 1
  %46 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %kmsg_max_cnt, align 4
  %rem = urem i32 %add, %47
  %48 = ptrtoint ptr %kmsg_write_cnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %rem, ptr %kmsg_write_cnt, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end74.if.end83_crit_edge
  %time.sroa.0.1 = phi i64 [ %45, %if.then78 ], [ %time.sroa.0.0248, %if.end74.if.end83_crit_edge ]
  %49 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reason, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %50, label %if.end83.if.end106_crit_edge [
    i32 2, label %if.end83.if.end106.sink.split_crit_edge
    i32 1, label %if.then96
  ]

if.end83.if.end106.sink.split_crit_edge:          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106.sink.split

if.end83.if.end106_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then96:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.then96, %if.end83.if.end106.sink.split_crit_edge
  %panic_counter.sink256 = phi ptr [ %panic_counter, %if.then96 ], [ %oops_counter, %if.end83.if.end106.sink.split_crit_edge ]
  %52 = ptrtoint ptr %panic_counter.sink256 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %panic_counter.sink256, align 4
  %54 = ptrtoint ptr %counter97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %counter97, align 4
  %56 = call i32 @llvm.umax.i32(i32 %53, i32 %55)
  %57 = ptrtoint ptr %panic_counter.sink256 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %panic_counter.sink256, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.end83.if.end106_crit_edge
  %call.i.i231 = call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %58 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool109.not = icmp eq i32 %59, 0
  br i1 %tobool109.not, label %do.body111, label %if.end132

do.body111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_recover_meta, %if.then123)) #13
          to label %for.inc [label %if.then123], !srcloc !273

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #15
  %name124 = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %60 = ptrtoint ptr %name124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name124, align 8
  %62 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %10, align 8
  %64 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer_size, align 8
  %call.i.i235 = call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %66 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %datalen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.110, ptr noundef %61, i32 noundef %i.0246, i64 noundef %63, i32 noundef %65, i32 noundef %67) #13
  br label %for.inc

if.end132:                                        ; preds = %if.end106
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not = icmp eq i32 %68, 0
  br i1 %tobool.i.not, label %if.then134, label %if.end132.do.body136_crit_edge

if.end132.do.body136_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %should_recover = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 6
  %69 = ptrtoint ptr %should_recover to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %should_recover, align 4
  br label %do.body136

do.body136:                                       ; preds = %if.then134, %if.end132.do.body136_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_recover_meta, %if.then148)) #13
          to label %for.inc [label %if.then148], !srcloc !273

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #15
  %name149 = getelementptr inbounds %struct.pstore_zone, ptr %10, i32 0, i32 1
  %70 = ptrtoint ptr %name149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name149, align 8
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %10, align 8
  %74 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buffer_size, align 8
  %call.i.i239 = call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %76 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %datalen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.112, ptr noundef %71, i32 noundef %i.0246, i64 noundef %73, i32 noundef %75, i32 noundef %77) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then148, %do.body136, %if.then123, %do.body111, %do.end68, %do.end56, %if.then46, %do.body34, %if.then18, %do.body
  %time.sroa.0.2 = phi i64 [ %time.sroa.0.0248, %if.then18 ], [ %time.sroa.0.0248, %if.then46 ], [ %time.sroa.0.0248, %do.end56 ], [ %time.sroa.0.0248, %do.end68 ], [ %time.sroa.0.1, %if.then148 ], [ %time.sroa.0.1, %if.then123 ], [ %time.sroa.0.0248, %do.body ], [ %time.sroa.0.0248, %do.body34 ], [ %time.sroa.0.1, %do.body111 ], [ %time.sroa.0.1, %do.body136 ]
  %inc = add nuw i32 %i.0246, 1
  %78 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %kmsg_max_cnt, align 4
  %cmp = icmp ult i32 %inc, %79
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end24, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end24 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %buffer_header) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_zone_write(ptr noundef %zone, i32 noundef %flush_mode, ptr noundef readonly %buf, i32 noundef %len, i32 noundef %off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 5
  %1 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %off)
  %cmp = icmp ult i32 %2, %off
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %2, %off
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 8
  %data = getelementptr inbounds %struct.psz_buffer, ptr %5, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %data, i32 %off
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %3)
  %7 = load ptr, ptr %buffer, align 8
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %7, i32 0, i32 1
  %add = add i32 %3, %off
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen, i32 noundef 4) #13
  %8 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %add, ptr %datalen, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end6
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end60_crit_edge, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true7.if.end60_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %call.i.i.i112 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i113.not = icmp eq i32 %11, 0
  %panic_write = getelementptr inbounds %struct.pstore_zone_info, ptr %0, i32 0, i32 11
  %write = getelementptr inbounds %struct.pstore_zone_info, ptr %0, i32 0, i32 9
  %cond16.in = select i1 %tobool.i113.not, ptr %write, ptr %panic_write
  %12 = ptrtoint ptr %cond16.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond16 = load ptr, ptr %cond16.in, align 4
  %tobool17.not = icmp eq ptr %cond16, null
  br i1 %tobool17.not, label %if.end11.if.end60_crit_edge, label %if.end19

if.end11.if.end60_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end19:                                         ; preds = %if.end11
  %13 = zext i32 %flush_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %flush_mode, label %if.end19.cleanup_crit_edge [
    i32 3, label %sw.bb47
    i32 1, label %sw.bb26
    i32 2, label %if.end19.sw.bb39_crit_edge
  ]

if.end19.sw.bb39_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb39

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb26:                                          ; preds = %if.end19
  %buffer27 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %14 = ptrtoint ptr %buffer27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer27, align 8
  %data28 = getelementptr inbounds %struct.psz_buffer, ptr %15, i32 0, i32 3
  %add.ptr30 = getelementptr i8, ptr %data28, i32 %off
  %16 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %zone, align 8
  %conv = zext i32 %off to i64
  %add32 = add nuw nsw i64 %conv, 12
  %add33 = add i64 %add32, %17
  %call34 = tail call i32 %cond16(ptr noundef %add.ptr30, i32 noundef %3, i64 noundef %add33) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %3)
  %cmp35.not = icmp eq i32 %call34, %3
  br i1 %cmp35.not, label %sw.bb26.sw.bb39_crit_edge, label %sw.bb26.dirty_crit_edge

sw.bb26.dirty_crit_edge:                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %dirty

sw.bb26.sw.bb39_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb39

sw.bb39:                                          ; preds = %sw.bb26.sw.bb39_crit_edge, %if.end19.sw.bb39_crit_edge
  %buffer40 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %18 = ptrtoint ptr %buffer40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer40, align 8
  %20 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %zone, align 8
  %call42 = tail call i32 %cond16(ptr noundef %19, i32 noundef 12, i64 noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 12
  br i1 %cmp43.not, label %sw.bb39.cleanup_crit_edge, label %sw.bb39.dirty_crit_edge

sw.bb39.dirty_crit_edge:                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %dirty

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb47:                                          ; preds = %if.end19
  %22 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size, align 8
  %add49 = add i32 %23, 12
  %buffer50 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %24 = ptrtoint ptr %buffer50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer50, align 8
  %26 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %zone, align 8
  %call52 = tail call i32 %cond16(ptr noundef %25, i32 noundef %add49, i64 noundef %27) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %add49)
  %cmp53.not = icmp eq i32 %call52, %add49
  br i1 %cmp53.not, label %sw.bb47.cleanup_crit_edge, label %sw.bb47.dirty_crit_edge

sw.bb47.dirty_crit_edge:                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #15
  br label %dirty

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dirty:                                            ; preds = %sw.bb47.dirty_crit_edge, %sw.bb39.dirty_crit_edge, %sw.bb26.dirty_crit_edge
  %wcnt.0 = phi i32 [ %call52, %sw.bb47.dirty_crit_edge ], [ %call42, %sw.bb39.dirty_crit_edge ], [ %call34, %sw.bb26.dirty_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42, i32 %wcnt.0)
  %cmp57 = icmp eq i32 %wcnt.0, -42
  br i1 %cmp57, label %dirty.cleanup_crit_edge, label %dirty.if.end60_crit_edge

dirty.if.end60_crit_edge:                         ; preds = %dirty
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

dirty.cleanup_crit_edge:                          ; preds = %dirty
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end60:                                         ; preds = %dirty.if.end60_crit_edge, %if.end11.if.end60_crit_edge, %land.lhs.true7.if.end60_crit_edge
  %wcnt.0119 = phi i32 [ %wcnt.0, %dirty.if.end60_crit_edge ], [ 0, %if.end11.if.end60_crit_edge ], [ 0, %land.lhs.true7.if.end60_crit_edge ]
  %dirty61 = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 7
  %call.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty61, i32 noundef 4) #13
  %28 = ptrtoint ptr %dirty61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %dirty61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %wcnt.0119)
  %cmp62 = icmp eq i32 %wcnt.0119, -16
  br i1 %cmp62, label %land.lhs.true64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true64:                                  ; preds = %if.end60
  %call.i.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), i32 noundef 4) #13
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i115.not = icmp eq i32 %29, 0
  br i1 %tobool.i115.not, label %if.then66, label %land.lhs.true64.cleanup_crit_edge

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i116 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef nonnull @psz_cleaner, i32 noundef 50) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %land.lhs.true64.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %dirty.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb47.cleanup_crit_edge ], [ 0, %sw.bb39.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -42, %dirty.cleanup_crit_edge ], [ -16, %if.then66 ], [ -16, %land.lhs.true64.cleanup_crit_edge ], [ -16, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_flush_dirty_zone(ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zone, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !274

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !274

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dirty = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 7
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty) #13, !srcloc !276
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool16.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty, i32 noundef 4) #13
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call19, %if.then21 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_ftrace_combine_log(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_record_write(ptr noundef %zone, ptr noundef readonly %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %zone, null
  %tobool1.not = icmp eq ptr %record, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 3
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 8
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %datalen, i32 noundef 4) #13
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %datalen, align 4
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %zone, i32 0, i32 5
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.not = icmp ult i32 %3, %5
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %buf4 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %8 = ptrtoint ptr %buf4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp6 = icmp ugt i32 %7, %5
  br i1 %cmp6, label %if.then9, label %if.end.if.end12_crit_edge, !prof !274

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %7, %5
  %add.ptr = getelementptr i8, ptr %9, i32 %sub
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %buf.0 = phi ptr [ %add.ptr, %if.then9 ], [ %9, %if.end.if.end12_crit_edge ]
  %cnt.0 = phi i32 [ %5, %if.then9 ], [ %7, %if.end.if.end12_crit_edge ]
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 8
  %start.i = getelementptr inbounds %struct.psz_buffer, ptr %11, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %start.i, align 4
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 8
  %sub15 = sub i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %sub15)
  %cmp16 = icmp ugt i32 %cnt.0, %sub15
  br i1 %cmp16, label %if.then23, label %if.end27, !prof !274

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 1, ptr noundef %buf.0, i32 noundef %sub15, i32 noundef %13)
  %add.ptr25 = getelementptr i8, ptr %buf.0, i32 %sub15
  %sub26 = sub i32 %cnt.0, %sub15
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 8
  %start29.c = getelementptr inbounds %struct.psz_buffer, ptr %17, i32 0, i32 2
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %start29.c, i32 noundef 4) #13
  %18 = ptrtoint ptr %start29.c to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %sub26, ptr %start29.c, align 4
  %call30.c = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 1, ptr noundef %add.ptr25, i32 noundef %sub26, i32 noundef 0)
  br label %if.then32

if.end27:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 8
  %start29 = getelementptr inbounds %struct.psz_buffer, ptr %20, i32 0, i32 2
  %add = add i32 %13, %cnt.0
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %start29, i32 noundef 4) #13
  %21 = ptrtoint ptr %start29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %add, ptr %start29, align 4
  %call30 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 1, ptr noundef %buf.0, i32 noundef %cnt.0, i32 noundef %13)
  br i1 %cmp.not.not, label %if.end27.cleanup_crit_edge, label %if.end27.if.then32_crit_edge

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.end27.if.then32_crit_edge, %if.then23
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 8
  %datalen34 = getelementptr inbounds %struct.psz_buffer, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size, align 8
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen34, i32 noundef 4) #13
  %26 = ptrtoint ptr %datalen34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %datalen34, align 4
  %call36 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %zone, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_kmsg_write_record(ptr nocapture noundef %cxt, ptr nocapture noundef readonly %record) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %kmsg_max_cnt = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 4
  %0 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kmsg_max_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp129.not = icmp eq i32 %1, 0
  br i1 %cmp129.not, label %entry.cleanup70_crit_edge, label %for.body.lr.ph

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup70

for.body.lr.ph:                                   ; preds = %entry
  %kmsg_write_cnt = getelementptr inbounds %struct.psz_context, ptr %cxt, i32 0, i32 6
  %compressed.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  %time.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %tv_nsec.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3, i32 1
  %reason.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 8
  %size26 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %buf = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %67, %for.inc.for.body_crit_edge ]
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %kmsg_write_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kmsg_write_cnt, align 4
  %add = add i32 %4, %i.0130
  %rem = urem i32 %add, %2
  %5 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cxt, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.cleanup70_crit_edge, label %if.end, !prof !274

for.body.cleanup70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup70

if.end:                                           ; preds = %for.body
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_size, align 8
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 8
  %oldbuf = getelementptr inbounds %struct.pstore_zone, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %oldbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %oldbuf, align 4
  %add5 = add i32 %10, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5, i32 noundef 3520) #17
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %buffer, align 8
  %tobool8.not = icmp eq ptr %call9.i.i, null
  %15 = ptrtoint ptr %oldbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oldbuf, align 4
  br i1 %tobool8.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %buffer, align 8
  br label %cleanup70

if.end12:                                         ; preds = %if.end
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call9.i.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_write_record.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_write_record, %if.then24)) #13
          to label %do.end [label %if.then24], !srcloc !273

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pstore_zone, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_write_record.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.139, ptr noundef %22, i32 noundef %rem) #13
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end12
  %23 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %record, align 8
  %data.i = getelementptr inbounds %struct.pstore_info, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 8
  %data2.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1308375781, ptr %data2.i, align 8
  %30 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %compressed.i, align 8, !range !280
  %compressed3.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 3
  %32 = ptrtoint ptr %compressed3.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %compressed3.i, align 8
  %33 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %time.i, align 8
  %time4.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 1, i32 2
  %35 = ptrtoint ptr %time4.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %time4.i, align 8
  %36 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec8.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 2, i32 1
  %38 = ptrtoint ptr %tv_nsec8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tv_nsec8.i, align 8
  %39 = ptrtoint ptr %reason.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reason.i, align 8
  %reason9.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 3, i32 2
  %41 = ptrtoint ptr %reason9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %reason9.i, align 8
  %42 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %40, label %do.end.psz_write_kmsg_hdr.exit_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then13.i
  ]

do.end.psz_write_kmsg_hdr.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_write_kmsg_hdr.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %oops_counter.i = getelementptr inbounds %struct.psz_context, ptr %26, i32 0, i32 11
  %43 = ptrtoint ptr %oops_counter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oops_counter.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %oops_counter.i, align 4
  br label %psz_write_kmsg_hdr.exit

if.then13.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %panic_counter.i = getelementptr inbounds %struct.psz_context, ptr %26, i32 0, i32 12
  %45 = ptrtoint ptr %panic_counter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %panic_counter.i, align 4
  %inc14.i = add i32 %46, 1
  store i32 %inc14.i, ptr %panic_counter.i, align 4
  br label %psz_write_kmsg_hdr.exit

psz_write_kmsg_hdr.exit:                          ; preds = %if.then13.i, %if.then.i, %do.end.psz_write_kmsg_hdr.exit_crit_edge
  %inc14.sink.i = phi i32 [ %inc14.i, %if.then13.i ], [ %inc.i, %if.then.i ], [ 0, %do.end.psz_write_kmsg_hdr.exit_crit_edge ]
  %counter15.i = getelementptr inbounds %struct.psz_buffer, ptr %28, i32 3, i32 1
  %47 = ptrtoint ptr %counter15.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc14.sink.i, ptr %counter15.i, align 4
  %48 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size26, align 4
  %50 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buffer_size, align 8
  %sub = add i32 %51, -40
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %sub)
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf, align 8
  %call30 = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %8, i32 noundef 3, ptr noundef %54, i32 noundef %52, i32 noundef 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42, i32 %call30)
  %cmp32.not = icmp eq i32 %call30, -42
  br i1 %cmp32.not, label %do.body48, label %if.then39, !prof !274

if.then39:                                        ; preds = %psz_write_kmsg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add40 = add nuw i32 %rem, 1
  %55 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %kmsg_max_cnt, align 4
  %rem44 = urem i32 %add40, %56
  %57 = ptrtoint ptr %kmsg_write_cnt to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %rem44, ptr %kmsg_write_cnt, align 4
  %58 = ptrtoint ptr %oldbuf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %oldbuf, align 4
  tail call void @kfree(ptr noundef %59) #13
  %60 = ptrtoint ptr %oldbuf to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %oldbuf, align 4
  br label %cleanup70

do.body48:                                        ; preds = %psz_write_kmsg_hdr.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_kmsg_write_record.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_kmsg_write_record, %if.then60)) #13
          to label %for.inc [label %if.then60], !srcloc !273

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_kmsg_write_record.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.141, i32 noundef %rem) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %do.body48
  %61 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %62) #13
  %63 = ptrtoint ptr %oldbuf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %oldbuf, align 4
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %buffer, align 8
  store ptr null, ptr %oldbuf, align 4
  %inc = add nuw i32 %i.0130, 1
  %66 = ptrtoint ptr %kmsg_max_cnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %kmsg_max_cnt, align 4
  %cmp = icmp ult i32 %inc, %67
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup70_crit_edge

for.inc.cleanup70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup70

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup70:                                        ; preds = %for.inc.cleanup70_crit_edge, %if.then39, %if.then9, %for.body.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi i32 [ -12, %if.then9 ], [ %call30, %if.then39 ], [ -16, %entry.cleanup70_crit_edge ], [ -16, %for.inc.cleanup70_crit_edge ], [ -28, %for.body.cleanup70_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @psz_init_zone(i32 noundef %type, ptr nocapture noundef %off, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %call = tail call ptr @pstore_type_to_name(i32 noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %off, align 8
  %conv = zext i32 %size to i64
  %add = add i64 %2, %conv
  %total_size = getelementptr inbounds %struct.pstore_zone_info, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_size, align 4
  %conv1 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp sgt i64 %add, %conv1
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %call, i32 noundef %size, i64 noundef %2, i32 noundef %4) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #20
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end8.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %if.end7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #17
  %buffer = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %buffer, align 8
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = call ptr @memset(ptr %call9.i, i32 255, i32 %size)
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %off, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %call7.i.i, align 8
  %name21 = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %name21, align 8
  %type22 = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %type, ptr %type22, align 4
  %sub = add i32 %size, -12
  %buffer_size = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %buffer_size, align 8
  %xor = xor i32 %type, 1128743492
  %14 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor, ptr %call9.i, align 128
  %oldbuf = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %oldbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %oldbuf, align 4
  %dirty = getelementptr inbounds %struct.pstore_zone, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty, i32 noundef 4) #13
  %16 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %dirty, align 8
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 8
  %datalen = getelementptr inbounds %struct.psz_buffer, ptr %18, i32 0, i32 1
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %datalen, i32 noundef 4) #13
  %19 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %datalen, align 4
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 8
  %start = getelementptr inbounds %struct.psz_buffer, ptr %21, i32 0, i32 2
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %start, i32 noundef 4) #13
  %22 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %start, align 4
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %off, align 8
  %add27 = add i64 %24, %conv
  store i64 %add27, ptr %off, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psz_init_zone.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psz_init_zone, %if.then34)) #13
          to label %cleanup [label %if.then34], !srcloc !273

if.then34:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name21, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %call7.i.i, align 8
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psz_init_zone.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.145, ptr noundef %26, i64 noundef %28, i32 noundef 12, i32 noundef %30) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end18, %if.then16, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.then16 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then34 ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ], [ %call7.i.i, %if.end18 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @psz_init_zones(i32 noundef %type, ptr nocapture noundef %off, i32 noundef %total_size, i32 noundef %record_size, ptr nocapture noundef writeonly %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 16), align 4
  %call = tail call ptr @pstore_type_to_name(i32 noundef %type) #13
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_size)
  %tobool.not = icmp eq i32 %total_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %record_size)
  %tobool1.not = icmp eq i32 %record_size, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %off, align 8
  %conv = zext i32 %total_size to i64
  %add = add i64 %3, %conv
  %total_size2 = getelementptr inbounds %struct.pstore_zone_info, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %total_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_size2, align 4
  %conv3 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp = icmp sgt i64 %add, %conv3
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %call, i32 noundef %total_size, i64 noundef %3, i32 noundef %5) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %div = udiv i32 %total_size, %record_size
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 4) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end9.do.end15_crit_edge, label %if.end7.i.i, !prof !274

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

if.end7.i.i:                                      ; preds = %if.end9
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #17
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.do.end15_crit_edge, label %if.end19

if.end7.i.i.do.end15_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end15:                                         ; preds = %if.end7.i.i.do.end15_crit_edge, %if.end9.do.end15_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %call) #16
  br label %cleanup

if.end19:                                         ; preds = %if.end7.i.i
  %mul = shl nuw i32 %div, 2
  %9 = call ptr @memset(ptr %call8.i.i, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_cmp4(i32 %record_size, i32 %total_size)
  %cmp2072.not = icmp ugt i32 %record_size, %total_size
  br i1 %cmp2072.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %if.end19.for.body_crit_edge
  %storemerge73 = phi i32 [ %inc, %if.end33.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %call22 = tail call fastcc ptr @psz_init_zone(i32 noundef %type, ptr noundef %off, i32 noundef %record_size)
  %tobool23.not = icmp eq ptr %call22, null
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %or.cond70 = or i1 %tobool23.not, %cmp.i
  br i1 %or.cond70, label %while.cond.preheader.i, label %if.end33

while.cond.preheader.i:                           ; preds = %for.body
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge73)
  %cmp.not6.i = icmp eq i32 %storemerge73, 0
  br i1 %cmp.not6.i, label %while.cond.preheader.i.psz_free_zones.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.psz_free_zones.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit

while.body.i:                                     ; preds = %psz_free_zone.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %10 = phi i32 [ %dec.i, %psz_free_zone.exit.i.while.body.i_crit_edge ], [ %storemerge73, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %10, -1
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %dec.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %while.body.i.psz_free_zone.exit.i_crit_edge, label %if.end.i.i57

while.body.i.psz_free_zone.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zone.exit.i

if.end.i.i57:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %buffer.i.i = getelementptr inbounds %struct.pstore_zone, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i.i, align 8
  tail call void @kfree(ptr noundef %14) #13
  tail call void @kfree(ptr noundef nonnull %12) #13
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i, align 4
  br label %psz_free_zone.exit.i

psz_free_zone.exit.i:                             ; preds = %if.end.i.i57, %while.body.i.psz_free_zone.exit.i_crit_edge
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %psz_free_zone.exit.i.psz_free_zones.exit_crit_edge, label %psz_free_zone.exit.i.while.body.i_crit_edge

psz_free_zone.exit.i.while.body.i_crit_edge:      ; preds = %psz_free_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

psz_free_zone.exit.i.psz_free_zones.exit_crit_edge: ; preds = %psz_free_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %psz_free_zones.exit

psz_free_zones.exit:                              ; preds = %psz_free_zone.exit.i.psz_free_zones.exit_crit_edge, %while.cond.preheader.i.psz_free_zones.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

if.end33:                                         ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %storemerge73
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call22, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %storemerge73, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %if.end19.for.end_crit_edge
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %psz_free_zones.exit, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call22, %psz_free_zones.exit ], [ %call8.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %do.end15 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pstore_type_to_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psz_flush_dirty_zones(ptr noundef readonly %zones, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zones, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp16.not = icmp eq i32 %cnt, 0
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %zones, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), i32 noundef 4) #13
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.psz_context, ptr @pstore_zone_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not.i = icmp eq i32 %2, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end14.i, !prof !274

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %dirty.i = getelementptr inbounds %struct.pstore_zone, ptr %1, i32 0, i32 7
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @llvm.prefetch.p0(ptr %dirty.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dirty.i) #13, !srcloc !276
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool16.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.for.inc_crit_edge, label %if.end18.i

if.end14.i.for.inc_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @psz_zone_write(ptr noundef nonnull %1, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.for.inc_crit_edge, label %if.then21.i

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %dirty.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end18.i.for.inc_crit_edge, %if.end14.i.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then21.i, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call19.i, %if.then21.i ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -16, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !129, !131, !133, !135, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !221, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262}
!llvm.named.register.sp = !{!263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/pstore/zone.c", i32 1299, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @register_pstore_zone._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @register_pstore_zone._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/pstore/zone.c", i32 1303, i32 3}
!8 = !{ptr @register_pstore_zone._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @register_pstore_zone._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/pstore/zone.c", i32 1309, i32 3}
!12 = !{ptr @register_pstore_zone._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @register_pstore_zone._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/pstore/zone.c", i32 1328, i32 2}
!16 = !{ptr @register_pstore_zone._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @register_pstore_zone._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @register_pstore_zone._entry.12, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @register_pstore_zone._entry_ptr.14, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/pstore/zone.c", i32 1329, i32 2}
!23 = !{ptr @register_pstore_zone._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @register_pstore_zone._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @register_pstore_zone._entry.18, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @register_pstore_zone._entry_ptr.20, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.22, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/pstore/zone.c", i32 1330, i32 2}
!30 = !{ptr @register_pstore_zone._entry.21, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @register_pstore_zone._entry_ptr.23, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.25, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @register_pstore_zone._entry.24, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @register_pstore_zone._entry_ptr.26, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.28, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/pstore/zone.c", i32 1331, i32 2}
!37 = !{ptr @register_pstore_zone._entry.27, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @register_pstore_zone._entry_ptr.29, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @register_pstore_zone._entry.30, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @register_pstore_zone._entry_ptr.32, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.34, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/pstore/zone.c", i32 1332, i32 2}
!44 = !{ptr @register_pstore_zone._entry.33, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @register_pstore_zone._entry_ptr.35, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.37, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @register_pstore_zone._entry.36, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @register_pstore_zone._entry_ptr.38, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.40, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/pstore/zone.c", i32 1342, i32 3}
!51 = !{ptr @register_pstore_zone._entry.39, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @register_pstore_zone._entry_ptr.41, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.43, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/pstore/zone.c", i32 1348, i32 3}
!55 = !{ptr @register_pstore_zone._entry.42, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @register_pstore_zone._entry_ptr.44, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.45, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/pstore/zone.c", i32 1355, i32 2}
!59 = !{ptr @.str.46, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug297, !58, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!61 = !{ptr @.str.47, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.48, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/pstore/zone.c", i32 1356, i32 2}
!64 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug298, !63, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!65 = !{ptr @.str.49, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.50, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/pstore/zone.c", i32 1357, i32 2}
!68 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug299, !67, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!69 = !{ptr @.str.51, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.52, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/pstore/zone.c", i32 1358, i32 2}
!72 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug300, !71, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!73 = !{ptr @.str.53, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.54, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/pstore/zone.c", i32 1359, i32 2}
!76 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug301, !75, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!77 = !{ptr @.str.55, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.56, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/pstore/zone.c", i32 1360, i32 2}
!80 = !{ptr @register_pstore_zone.__UNIQUE_ID_ddebug302, !79, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!81 = !{ptr @.str.57, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/pstore/zone.c", i32 1364, i32 3}
!84 = !{ptr @register_pstore_zone._entry.58, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @register_pstore_zone._entry_ptr.60, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/pstore/zone.c", i32 1379, i32 2}
!88 = !{ptr @register_pstore_zone._entry.61, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @register_pstore_zone._entry_ptr.63, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.65, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/pstore/zone.c", i32 1384, i32 3}
!92 = !{ptr @register_pstore_zone._entry.64, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @register_pstore_zone._entry_ptr.66, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.68, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/pstore/zone.c", i32 1387, i32 4}
!96 = !{ptr @register_pstore_zone._entry.67, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @register_pstore_zone._entry_ptr.69, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.71, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/pstore/zone.c", i32 1388, i32 3}
!100 = !{ptr @register_pstore_zone._entry.70, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @register_pstore_zone._entry_ptr.72, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.74, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/pstore/zone.c", i32 1392, i32 3}
!104 = !{ptr @register_pstore_zone._entry.73, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @register_pstore_zone._entry_ptr.75, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.77, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/pstore/zone.c", i32 1396, i32 3}
!108 = !{ptr @register_pstore_zone._entry.76, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @register_pstore_zone._entry_ptr.78, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.80, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/pstore/zone.c", i32 1400, i32 3}
!112 = !{ptr @register_pstore_zone._entry.79, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @register_pstore_zone._entry_ptr.81, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.83, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/pstore/zone.c", i32 1402, i32 2}
!116 = !{ptr @register_pstore_zone._entry.82, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @register_pstore_zone._entry_ptr.84, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.86, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/pstore/zone.c", i32 1406, i32 3}
!120 = !{ptr @register_pstore_zone._entry.85, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @register_pstore_zone._entry_ptr.87, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @__ksymtab_register_pstore_zone, !123, !"__ksymtab_register_pstore_zone", i1 false, i1 false}
!123 = !{!"../fs/pstore/zone.c", i32 1423, i32 1}
!124 = !{ptr @__ksymtab_unregister_pstore_zone, !125, !"__ksymtab_unregister_pstore_zone", i1 false, i1 false}
!125 = !{!"../fs/pstore/zone.c", i32 1463, i32 1}
!126 = !{ptr @__UNIQUE_ID_file303, !127, !"__UNIQUE_ID_file303", i1 false, i1 false}
!127 = !{!"../fs/pstore/zone.c", i32 1465, i32 1}
!128 = !{ptr @__UNIQUE_ID_license304, !127, !"__UNIQUE_ID_license304", i1 false, i1 false}
!129 = !{ptr @__UNIQUE_ID_author305, !130, !"__UNIQUE_ID_author305", i1 false, i1 false}
!130 = !{!"../fs/pstore/zone.c", i32 1466, i32 1}
!131 = !{ptr @__UNIQUE_ID_author306, !132, !"__UNIQUE_ID_author306", i1 false, i1 false}
!132 = !{!"../fs/pstore/zone.c", i32 1467, i32 1}
!133 = !{ptr @__UNIQUE_ID_description307, !134, !"__UNIQUE_ID_description307", i1 false, i1 false}
!134 = !{!"../fs/pstore/zone.c", i32 1468, i32 1}
!135 = !{ptr @.str.88, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/pstore/zone.c", i32 1099, i32 3}
!137 = !{ptr @.str.89, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @pstore_zone_cxt, !139, !"pstore_zone_cxt", i1 false, i1 false}
!139 = !{!"../fs/pstore/zone.c", i32 1097, i32 27}
!140 = !{ptr @.str.90, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/pstore/zone.c", i32 624, i32 3}
!142 = !{ptr @.str.91, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @psz_recovery._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @psz_recovery._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.92, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/pstore/zone.c", i32 626, i32 3}
!147 = !{ptr @psz_recovery.__UNIQUE_ID_ddebug290, !146, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!148 = !{ptr @.str.93, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/pstore/zone.c", i32 477, i32 2}
!151 = !{ptr @.str.95, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @psz_kmsg_recover.__UNIQUE_ID_ddebug284, !150, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!153 = !{ptr @.str.96, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.97, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/pstore/zone.c", i32 398, i32 4}
!156 = !{ptr @.str.98, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug276, !155, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!158 = !{ptr @.str.99, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.100, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/pstore/zone.c", i32 402, i32 4}
!161 = !{ptr @psz_kmsg_recover_meta._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @psz_kmsg_recover_meta._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.101, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/pstore/zone.c", i32 407, i32 4}
!165 = !{ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug277, !164, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!166 = !{ptr @.str.102, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.104, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/pstore/zone.c", i32 412, i32 4}
!169 = !{ptr @psz_kmsg_recover_meta._entry.103, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @psz_kmsg_recover_meta._entry_ptr.105, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.107, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/pstore/zone.c", i32 420, i32 4}
!173 = !{ptr @psz_kmsg_recover_meta._entry.106, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @psz_kmsg_recover_meta._entry_ptr.108, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.109, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/pstore/zone.c", i32 443, i32 4}
!177 = !{ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug282, !176, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!178 = !{ptr @.str.110, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.111, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/pstore/zone.c", i32 452, i32 3}
!181 = !{ptr @psz_kmsg_recover_meta.__UNIQUE_ID_ddebug283, !180, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!182 = !{ptr @.str.112, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.113, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/pstore/zone.c", i32 354, i32 5}
!185 = !{ptr @.str.114, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @psz_kmsg_recover_data._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @psz_kmsg_recover_data._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.115, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/pstore/zone.c", i32 504, i32 3}
!190 = !{ptr @.str.116, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @psz_recover_zone.__UNIQUE_ID_ddebug285, !189, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!192 = !{ptr @.str.117, !189, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.118, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/pstore/zone.c", i32 509, i32 3}
!195 = !{ptr @psz_recover_zone.__UNIQUE_ID_ddebug286, !194, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!196 = !{ptr @.str.119, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.120, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/pstore/zone.c", i32 515, i32 3}
!199 = !{ptr @psz_recover_zone._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @psz_recover_zone._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.121, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/pstore/zone.c", i32 522, i32 3}
!203 = !{ptr @psz_recover_zone.__UNIQUE_ID_ddebug287, !202, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!204 = !{ptr @.str.122, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.123, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/pstore/zone.c", i32 528, i32 2}
!207 = !{ptr @psz_recover_zone.__UNIQUE_ID_ddebug288, !206, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!208 = !{ptr @.str.124, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.126, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/pstore/zone.c", i32 546, i32 3}
!211 = !{ptr @psz_recover_zone._entry.125, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @psz_recover_zone._entry_ptr.127, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @psz_recover_zone._entry.128, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../fs/pstore/zone.c", i32 554, i32 3}
!215 = !{ptr @psz_recover_zone._entry_ptr.129, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.130, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/pstore/zone.c", i32 589, i32 2}
!218 = !{ptr @.str.131, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @psz_recover_zones.__UNIQUE_ID_ddebug289, !217, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!220 = !{ptr @.str.132, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.133, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/pstore/zone.c", i32 973, i32 37}
!223 = !{ptr @.str.134, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/pstore/zone.c", i32 815, i32 3}
!225 = !{ptr @.str.135, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @psz_kmsg_write.__UNIQUE_ID_ddebug295, !224, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!227 = !{ptr @.str.136, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.137, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/pstore/zone.c", i32 771, i32 3}
!230 = !{ptr @.str.138, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @psz_kmsg_write_record.__UNIQUE_ID_ddebug291, !229, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!232 = !{ptr @.str.139, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.140, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/pstore/zone.c", i32 785, i32 3}
!235 = !{ptr @psz_kmsg_write_record.__UNIQUE_ID_ddebug294, !234, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!236 = !{ptr @.str.141, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.142, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/pstore/zone.c", i32 1161, i32 3}
!239 = !{ptr @.str.143, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @psz_init_zone._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @psz_init_zone._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.144, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/pstore/zone.c", i32 1188, i32 2}
!244 = !{ptr @psz_init_zone.__UNIQUE_ID_ddebug296, !243, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!245 = !{ptr @.str.145, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.146, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/pstore/zone.c", i32 1207, i32 3}
!248 = !{ptr @.str.147, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @psz_init_zones._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @psz_init_zones._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.149, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/pstore/zone.c", i32 1215, i32 3}
!253 = !{ptr @psz_init_zones._entry.148, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @psz_init_zones._entry_ptr.150, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.152, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/pstore/zone.c", i32 1223, i32 4}
!257 = !{ptr @psz_init_zones._entry.151, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @psz_init_zones._entry_ptr.153, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.154, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/pstore/zone.c", i32 143, i32 8}
!261 = !{ptr @.str.155, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @psz_cleaner, !260, !"psz_cleaner", i1 false, i1 false}
!263 = !{!"sp"}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{i64 2148725846, i64 2148725851, i64 2148725864, i64 2148725908, i64 2148725942, i64 2148725963}
!274 = !{!"branch_weights", i32 1, i32 2000}
!275 = !{i64 2148503871}
!276 = !{i64 750799, i64 750816, i64 750840, i64 750866, i64 750884}
!277 = !{i64 2148504241}
!278 = !{ptr @psz_ftrace_read, ptr @psz_kmsg_read, ptr @psz_record_read}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{i8 0, i8 2}
!281 = !{!"auto-init"}

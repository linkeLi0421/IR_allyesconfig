; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/pcmcia_cis.c_pt.bc'
source_filename = "../drivers/pcmcia/pcmcia_cis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pcmcia_loop_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_loop_config\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_loop_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_loop_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_loop_config\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_loop_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcmcia_loop_tuple\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_loop_tuple\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_loop_tuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_loop_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_loop_tuple\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_loop_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcmcia_get_tuple\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_get_tuple\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_get_tuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_get_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_get_tuple\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_get_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcmcia_get_mac_from_cis\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_get_mac_from_cis\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_get_mac_from_cis\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_get_mac_from_cis:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_get_mac_from_cis\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_get_mac_from_cis:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tuple_t = type { i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, ptr }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pcmcia_cfg_mem = type { ptr, ptr, ptr, %union.cisparse_t, %struct.cistpl_cftable_entry_t }
%union.cisparse_t = type { %struct.cistpl_cftable_entry_t }
%struct.cistpl_cftable_entry_t = type { i8, i16, i8, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_timing_t, %struct.cistpl_io_t, %struct.cistpl_irq_t, %struct.cistpl_mem_t, i8 }
%struct.cistpl_power_t = type { i8, i8, [7 x i32] }
%struct.cistpl_timing_t = type { i32, i32, i32, i32, i32, i32 }
%struct.cistpl_io_t = type { i8, i8, [16 x %struct.anon.122] }
%struct.anon.122 = type { i32, i32 }
%struct.cistpl_irq_t = type { i32, i32 }
%struct.cistpl_mem_t = type { i8, i8, [8 x %struct.anon.123] }
%struct.anon.123 = type { i32, i32, i32 }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pcmcia_loop_get = type { i32, ptr }

@pccard_read_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no memory to read tuple\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pccard_read_tuple\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/pcmcia/pcmcia_cis.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pccard_read_tuple._entry_ptr = internal global ptr @pccard_read_tuple._entry, section ".printk_index", align 4
@__kstrtab_pcmcia_loop_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_loop_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_loop_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_loop_config to i32), ptr @__kstrtab_pcmcia_loop_config, ptr @__kstrtabns_pcmcia_loop_config }, section "___ksymtab+pcmcia_loop_config", align 4
@__kstrtab_pcmcia_loop_tuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_loop_tuple = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_loop_tuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_loop_tuple to i32), ptr @__kstrtab_pcmcia_loop_tuple, ptr @__kstrtabns_pcmcia_loop_tuple }, section "___ksymtab+pcmcia_loop_tuple", align 4
@__kstrtab_pcmcia_get_tuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_get_tuple = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_get_tuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_get_tuple to i32), ptr @__kstrtab_pcmcia_get_tuple, ptr @__kstrtabns_pcmcia_get_tuple }, section "___ksymtab+pcmcia_get_tuple", align 4
@__kstrtab_pcmcia_get_mac_from_cis = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_get_mac_from_cis = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_get_mac_from_cis = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_get_mac_from_cis to i32), ptr @__kstrtab_pcmcia_get_mac_from_cis, ptr @__kstrtabns_pcmcia_get_mac_from_cis }, section "___ksymtab+pcmcia_get_mac_from_cis", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pccard_loop_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pccard_loop_tuple\00", [46 x i8] zeroinitializer }, align 32
@pccard_loop_tuple._entry_ptr = internal global ptr @pccard_loop_tuple._entry, section ".printk_index", align 4
@pcmcia_do_loop_config.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmcia\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcmcia_do_loop_config\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"testing configuration %x, autoconf %x\0A\00", [57 x i8] zeroinitializer }, align 32
@pcmcia_do_loop_config.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"checking configuration %x: %pr %pr %pr (%d lines)\0A\00", [45 x i8] zeroinitializer }, align 32
@pcmcia_do_get_tuple.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_do_get_tuple\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"do_get_tuple: out of memory\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmcia_do_get_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid CIS tuple length for LAN_NODE_ID\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmcia_do_get_mac\00", [46 x i8] zeroinitializer }, align 32
@pcmcia_do_get_mac._entry_ptr = internal global ptr @pcmcia_do_get_mac._entry, section ".printk_index", align 4
@pcmcia_do_get_mac._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid header for LAN_NODE_ID\0A\00", [32 x i8] zeroinitializer }, align 32
@pcmcia_do_get_mac._entry_ptr.16 = internal global ptr @pcmcia_do_get_mac._entry.14, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 44, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 94, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 163, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 239, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 360, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 406, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [31 x i8] c"../drivers/pcmcia/pcmcia_cis.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 412, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_pcmcia_get_mac_from_cis, ptr @__ksymtab_pcmcia_get_tuple, ptr @__ksymtab_pcmcia_loop_config, ptr @__ksymtab_pcmcia_loop_tuple, ptr @pccard_loop_tuple._entry, ptr @pccard_loop_tuple._entry_ptr, ptr @pccard_read_tuple._entry, ptr @pccard_read_tuple._entry_ptr, ptr @pcmcia_do_get_mac._entry, ptr @pcmcia_do_get_mac._entry.14, ptr @pcmcia_do_get_mac._entry_ptr, ptr @pcmcia_do_get_mac._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_read_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_loop_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_do_get_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_do_get_mac._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pccard_read_tuple(ptr noundef %s, i32 noundef %function, i8 noundef zeroext %code, ptr noundef %parse) local_unnamed_addr #0 align 64 {
entry:
  %tuple = alloca %struct.tuple_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tuple) #6
  %0 = getelementptr inbounds i8, ptr %tuple, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %DesiredTuple = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 1
  %3 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %code, ptr %DesiredTuple, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %function)
  %cmp1 = icmp eq i32 %function, 255
  %spec.select = select i1 %cmp1, i32 2, i32 0
  %4 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %tuple, align 4
  %call5 = call i32 @pccard_get_first_tuple(ptr noundef %s, i32 noundef %function, ptr noundef nonnull %tuple) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.end
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %5 = ptrtoint ptr %TupleData to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %TupleData, align 4
  %TupleOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 7
  %6 = ptrtoint ptr %TupleOffset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %TupleOffset, align 2
  %TupleDataMax = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 8
  %7 = ptrtoint ptr %TupleDataMax to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %TupleDataMax, align 1
  %call9 = call i32 @pccard_get_tuple_data(ptr noundef %s, ptr noundef nonnull %tuple) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 @pcmcia_parse_tuple(ptr noundef nonnull %tuple, ptr noundef %parse) #6
  br label %done

done:                                             ; preds = %if.end12, %if.end8.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.done_crit_edge ], [ %call9, %if.end8.done_crit_edge ], [ %call13, %if.end12 ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tuple) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_get_first_tuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_get_tuple_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_parse_tuple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_loop_config(ptr noundef %p_dev, ptr noundef %conf_check, ptr noundef %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 756) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %p_dev, ptr %call7.i.i, align 8
  %conf_check2 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %conf_check2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %conf_check, ptr %conf_check2, align 4
  %priv_data3 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %priv_data3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv_data, ptr %priv_data3, align 8
  %4 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_dev, align 8
  %func = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 3
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func, align 1
  %conv = zext i8 %7 to i32
  %parse = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %call7.i.i, i32 0, i32 3
  %call4 = tail call fastcc i32 @pccard_loop_tuple(ptr noundef %5, i32 noundef %conv, i8 noundef zeroext 27, ptr noundef %parse, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pcmcia_do_loop_config)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pccard_loop_tuple(ptr noundef %s, i32 noundef %function, i8 noundef zeroext %code, ptr noundef %parse, ptr noundef %priv_data, ptr nocapture noundef readonly %loop_tuple) unnamed_addr #0 align 64 {
entry:
  %tuple = alloca %struct.tuple_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tuple) #6
  %0 = getelementptr inbounds i8, ptr %tuple, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %3 = ptrtoint ptr %TupleData to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %TupleData, align 4
  %TupleDataMax = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 8
  %4 = ptrtoint ptr %TupleDataMax to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %TupleDataMax, align 1
  %TupleOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 7
  %5 = ptrtoint ptr %TupleOffset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %TupleOffset, align 2
  %DesiredTuple = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 1
  %6 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %code, ptr %DesiredTuple, align 4
  %7 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tuple, align 4
  %call1 = call i32 @pccard_get_first_tuple(ptr noundef %s, i32 noundef %function, ptr noundef nonnull %tuple) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not30 = icmp eq i32 %call1, 0
  br i1 %tobool.not30, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tobool6.not = icmp eq ptr %parse, null
  br label %while.body

while.body:                                       ; preds = %next_entry.while.body_crit_edge, %while.body.lr.ph
  %call2 = call i32 @pccard_get_tuple_data(ptr noundef %s, ptr noundef nonnull %tuple) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %while.body.next_entry_crit_edge

while.body.next_entry_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_entry

if.end5:                                          ; preds = %while.body
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @pcmcia_parse_tuple(ptr noundef nonnull %tuple, ptr noundef nonnull %parse) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.next_entry_crit_edge

if.then7.next_entry_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_entry

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %call13 = call i32 %loop_tuple(ptr noundef nonnull %tuple, ptr noundef %parse, ptr noundef %priv_data) #6, !callees !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.while.end_crit_edge, label %if.end12.next_entry_crit_edge

if.end12.next_entry_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_entry

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

next_entry:                                       ; preds = %if.end12.next_entry_crit_edge, %if.then7.next_entry_crit_edge, %while.body.next_entry_crit_edge
  %call17 = call i32 @pccard_get_next_tuple(ptr noundef %s, i32 noundef %function, ptr noundef nonnull %tuple) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %next_entry.while.body_crit_edge, label %next_entry.while.end_crit_edge

next_entry.while.end_crit_edge:                   ; preds = %next_entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

next_entry.while.body_crit_edge:                  ; preds = %next_entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %next_entry.while.end_crit_edge, %if.end12.while.end_crit_edge, %if.end.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call1, %if.end.while.end_crit_edge ], [ 0, %if.end12.while.end_crit_edge ], [ %call17, %next_entry.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0.lcssa, %while.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tuple) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_do_loop_config(ptr nocapture noundef readnone %tuple, ptr nocapture noundef readonly %parse, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dflt2 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_flags, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %Vcc = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Vcc, align 4
  %conv = zext i8 %7 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_do_loop_config.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_do_loop_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %parse, align 4
  %conv6 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_do_loop_config.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv6, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %parse, align 4
  %conv8 = zext i8 %11 to i32
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %config_index, align 4
  %flags10 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 1
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags10, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool12.not = icmp eq i16 %17, 0
  br i1 %tobool12.not, label %do.end.if.end15_crit_edge, label %if.then13

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = call ptr @memcpy(ptr %dflt2, ptr %parse, i32 372)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end.if.end15_crit_edge
  %and16 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end44_crit_edge, label %if.then18

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then18:                                        ; preds = %if.end15
  %vcc19 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 3
  %19 = ptrtoint ptr %vcc19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vcc19, align 4
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then18
  %param = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %param, align 4
  %div = udiv i32 %23, 10000
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp.not = icmp eq i32 %div, %conv
  br i1 %cmp.not, label %if.then23.if.end44_crit_edge, label %if.then23.cleanup241_crit_edge

if.then23.cleanup241_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.then23.if.end44_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else:                                          ; preds = %if.then18
  %vcc28 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %vcc28 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vcc28, align 4
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool32.not = icmp eq i8 %26, 0
  br i1 %tobool32.not, label %if.else.if.end44_crit_edge, label %if.then33

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then33:                                        ; preds = %if.else
  %param35 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 3, i32 2
  %27 = ptrtoint ptr %param35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %param35, align 4
  %div37 = udiv i32 %28, 10000
  call void @__sanitizer_cov_trace_cmp4(i32 %div37, i32 %conv)
  %cmp38.not = icmp eq i32 %div37, %conv
  br i1 %cmp38.not, label %if.then33.if.end44_crit_edge, label %if.then33.cleanup241_crit_edge

if.then33.cleanup241_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then33.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.then23.if.end44_crit_edge, %if.end15.if.end44_crit_edge
  %and45 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end71_crit_edge, label %if.then47

if.end44.if.end71_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then47:                                        ; preds = %if.end44
  %vpp1 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 4
  %29 = ptrtoint ptr %vpp1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vpp1, align 4
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not = icmp eq i8 %31, 0
  br i1 %tobool51.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %param54 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 4, i32 2
  br label %if.end71.sink.split

if.else57:                                        ; preds = %if.then47
  %vpp158 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %vpp158 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vpp158, align 4
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool62.not = icmp eq i8 %34, 0
  br i1 %tobool62.not, label %if.else57.if.end71_crit_edge, label %if.then63

if.else57.if.end71_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then63:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  %param65 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 4, i32 2
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.then63, %if.then52
  %param54.sink = phi ptr [ %param54, %if.then52 ], [ %param65, %if.then63 ]
  %35 = ptrtoint ptr %param54.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %param54.sink, align 4
  %div56 = udiv i32 %36, 10000
  %vpp = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %vpp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div56, ptr %vpp, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.else57.if.end71_crit_edge, %if.end44.if.end71_crit_edge
  %and72 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end80_crit_edge, label %land.lhs.true

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end71
  %38 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags10, align 2
  %40 = and i16 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool77.not = icmp eq i16 %40, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end80_crit_edge, label %if.then78

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %config_flags, align 4
  %or = or i32 %42, 2
  store i32 %or, ptr %config_flags, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true.if.end80_crit_edge, %if.end71.if.end80_crit_edge
  %and81 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end161_crit_edge, label %if.then83

if.end80.if.end161_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then83:                                        ; preds = %if.end80
  %nwin = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %nwin to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nwin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool86.not = icmp eq i8 %44, 0
  %io84 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7
  %io88 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 7
  %cond = select i1 %tobool86.not, ptr %io88, ptr %io84
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %end, align 4
  %48 = load ptr, ptr %resource, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %48, align 4
  %arrayidx93 = getelementptr %struct.pcmcia_device, ptr %1, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx93, align 4
  %end94 = getelementptr inbounds %struct.resource, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %end94 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %end94, align 4
  %53 = load ptr, ptr %arrayidx93, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  %nwin98 = getelementptr inbounds %struct.cistpl_io_t, ptr %cond, i32 0, i32 1
  %55 = ptrtoint ptr %nwin98 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nwin98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp100 = icmp eq i8 %56, 0
  br i1 %cmp100, label %if.then83.cleanup241_crit_edge, label %if.end103

if.then83.cleanup241_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end103:                                        ; preds = %if.then83
  %57 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %resource, align 4
  %flags106 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %flags106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags106, align 4
  %and107 = and i32 %60, -25
  store i32 %and107, ptr %flags106, align 4
  %61 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cond, align 4
  %conv109 = zext i8 %62 to i32
  %and.i = and i32 %conv109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = lshr i32 %conv109, 2
  %63 = and i32 %and1.i, 16
  %retval.0.i329 = select i1 %tobool.not.i, i32 8, i32 %63
  %64 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %resource, align 4
  %flags113 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %flags113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags113, align 4
  %or114 = or i32 %retval.0.i329, %67
  store i32 %or114, ptr %flags113, align 4
  %68 = ptrtoint ptr %nwin98 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nwin98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp117 = icmp ugt i8 %69, 1
  br i1 %cmp117, label %if.then119, label %if.end103.if.end144_crit_edge

if.end103.if.end144_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then119:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 1, i32 1
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %len123 = getelementptr inbounds %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 0, i32 1
  %72 = ptrtoint ptr %len123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp124 = icmp ugt i32 %71, %73
  %conv125 = zext i1 %cmp124 to i32
  %74 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resource, align 4
  %flags128 = getelementptr inbounds %struct.resource, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags128, align 4
  %78 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx93, align 4
  %flags131 = getelementptr inbounds %struct.resource, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %flags131 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %flags131, align 4
  %not.cmp124 = xor i1 %cmp124, true
  %sub = zext i1 %not.cmp124 to i32
  %arrayidx133 = getelementptr %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 %sub
  %81 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx133, align 4
  %83 = load ptr, ptr %arrayidx93, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %83, align 4
  %len140 = getelementptr %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 %sub, i32 1
  %85 = ptrtoint ptr %len140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len140, align 4
  %87 = load ptr, ptr %arrayidx93, align 4
  %end143 = getelementptr inbounds %struct.resource, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %end143 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %end143, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then119, %if.end103.if.end144_crit_edge
  %i.0 = phi i32 [ %conv125, %if.then119 ], [ 0, %if.end103.if.end144_crit_edge ]
  %arrayidx146 = getelementptr %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 %i.0
  %89 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx146, align 4
  %91 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %resource, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %92, align 4
  %len153 = getelementptr %struct.cistpl_io_t, ptr %cond, i32 0, i32 2, i32 %i.0, i32 1
  %94 = ptrtoint ptr %len153 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len153, align 4
  %96 = load ptr, ptr %resource, align 4
  %end156 = getelementptr inbounds %struct.resource, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %end156 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %end156, align 4
  %98 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cond, align 4
  %100 = and i8 %99, 31
  %and159 = zext i8 %100 to i32
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 14
  %101 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and159, ptr %io_lines, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.end144, %if.end80.if.end161_crit_edge
  %and162 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.do.body215_crit_edge, label %if.then164

if.end161.do.body215_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body215

if.then164:                                       ; preds = %if.end161
  %nwin166 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 1
  %102 = ptrtoint ptr %nwin166 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nwin166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool168.not = icmp eq i8 %103, 0
  %mem165 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9
  %mem172 = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 4, i32 9
  %cond174 = select i1 %tobool168.not, ptr %mem172, ptr %mem165
  %arrayidx176 = getelementptr %struct.pcmcia_device, ptr %1, i32 0, i32 7, i32 2
  %104 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx176, align 4
  %end177 = getelementptr inbounds %struct.resource, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %end177 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %end177, align 4
  %107 = load ptr, ptr %arrayidx176, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %107, align 4
  %nwin181 = getelementptr inbounds %struct.cistpl_mem_t, ptr %cond174, i32 0, i32 1
  %109 = ptrtoint ptr %nwin181 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nwin181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp183 = icmp eq i8 %110, 0
  br i1 %cmp183, label %if.then164.cleanup241_crit_edge, label %if.end186

if.then164.cleanup241_crit_edge:                  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end186:                                        ; preds = %if.then164
  %win187 = getelementptr inbounds %struct.cistpl_mem_t, ptr %cond174, i32 0, i32 2
  %host_addr = getelementptr inbounds %struct.cistpl_mem_t, ptr %cond174, i32 0, i32 2, i32 0, i32 2
  %111 = ptrtoint ptr %host_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %host_addr, align 4
  %113 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx176, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %114, align 4
  %116 = ptrtoint ptr %win187 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %win187, align 4
  %118 = load ptr, ptr %arrayidx176, align 4
  %end197 = getelementptr inbounds %struct.resource, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %end197 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %end197, align 4
  %120 = load ptr, ptr %arrayidx176, align 4
  %end200 = getelementptr inbounds %struct.resource, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %end200 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %end200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %122)
  %cmp201 = icmp ult i32 %122, 4096
  br i1 %cmp201, label %if.then203, label %if.end186.if.end207_crit_edge

if.end186.if.end207_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then203:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %end200 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4096, ptr %end200, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end186.if.end207_crit_edge
  %card_addr = getelementptr inbounds %struct.cistpl_mem_t, ptr %cond174, i32 0, i32 2, i32 0, i32 1
  %124 = ptrtoint ptr %card_addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %card_addr, align 4
  %card_addr210 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 8
  %126 = ptrtoint ptr %card_addr210 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %card_addr210, align 4
  br label %do.body215

do.body215:                                       ; preds = %if.end207, %if.end161.do.body215_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_do_loop_config.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_do_loop_config, %if.then227)) #6
          to label %do.end239 [label %if.then227], !srcloc !51

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #8
  %dev228 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %config_index229 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 12
  %127 = ptrtoint ptr %config_index229 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %config_index229, align 4
  %resource230 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %129 = ptrtoint ptr %resource230 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %resource230, align 4
  %arrayidx233 = getelementptr %struct.pcmcia_device, ptr %1, i32 0, i32 7, i32 1
  %131 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx233, align 4
  %arrayidx235 = getelementptr %struct.pcmcia_device, ptr %1, i32 0, i32 7, i32 2
  %133 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx235, align 4
  %io_lines236 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 14
  %135 = ptrtoint ptr %io_lines236 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %io_lines236, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_do_loop_config.__UNIQUE_ID_ddebug342, ptr noundef %dev228, ptr noundef nonnull @.str.9, i32 noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %134, i32 noundef %136) #6
  br label %do.end239

do.end239:                                        ; preds = %if.then227, %do.body215
  %conf_check = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 1
  %137 = ptrtoint ptr %conf_check to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %conf_check, align 4
  %priv_data = getelementptr inbounds %struct.pcmcia_cfg_mem, ptr %priv, i32 0, i32 2
  %139 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %priv_data, align 4
  %call240 = tail call i32 %138(ptr noundef %1, ptr noundef %140) #6
  br label %cleanup241

cleanup241:                                       ; preds = %do.end239, %if.then164.cleanup241_crit_edge, %if.then83.cleanup241_crit_edge, %if.then33.cleanup241_crit_edge, %if.then23.cleanup241_crit_edge
  %retval.3 = phi i32 [ %call240, %do.end239 ], [ -19, %if.then23.cleanup241_crit_edge ], [ -19, %if.then33.cleanup241_crit_edge ], [ -19, %if.then83.cleanup241_crit_edge ], [ -19, %if.then164.cleanup241_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext %code, ptr noundef %loop_tuple, ptr noundef %priv_data) #0 align 64 {
entry:
  %tuple.i = alloca %struct.tuple_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dev, align 8
  %func = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 3
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tuple.i) #6
  %4 = getelementptr inbounds i8, ptr %tuple.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 256) #9
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str) #10
  br label %pccard_loop_tuple.exit

if.end.i:                                         ; preds = %entry
  %TupleData.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 10
  %7 = ptrtoint ptr %TupleData.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %TupleData.i, align 4
  %TupleDataMax.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 8
  %8 = ptrtoint ptr %TupleDataMax.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %TupleDataMax.i, align 1
  %TupleOffset.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 7
  %9 = ptrtoint ptr %TupleOffset.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %TupleOffset.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %code, ptr %4, align 4
  %11 = ptrtoint ptr %tuple.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tuple.i, align 4
  %call1.i = call i32 @pccard_get_first_tuple(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %tuple.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not30.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not30.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %next_entry.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %call2.i = call i32 @pccard_get_tuple_data(ptr noundef %1, ptr noundef nonnull %tuple.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %while.body.i.next_entry.i_crit_edge

while.body.i.next_entry.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_entry.i

if.end5.i:                                        ; preds = %while.body.i
  %call.i = call i32 %loop_tuple(ptr noundef %p_dev, ptr noundef nonnull %tuple.i, ptr noundef %priv_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end5.i.while.end.i_crit_edge, label %if.end5.i.next_entry.i_crit_edge

if.end5.i.next_entry.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_entry.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

next_entry.i:                                     ; preds = %if.end5.i.next_entry.i_crit_edge, %while.body.i.next_entry.i_crit_edge
  %call17.i = call i32 @pccard_get_next_tuple(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %tuple.i) #6
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %next_entry.i.while.body.i_crit_edge, label %next_entry.i.while.end.i_crit_edge

next_entry.i.while.end.i_crit_edge:               ; preds = %next_entry.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

next_entry.i.while.body.i_crit_edge:              ; preds = %next_entry.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %next_entry.i.while.end.i_crit_edge, %if.end5.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call1.i, %if.end.i.while.end.i_crit_edge ], [ %call17.i, %next_entry.i.while.end.i_crit_edge ], [ 0, %if.end5.i.while.end.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %pccard_loop_tuple.exit

pccard_loop_tuple.exit:                           ; preds = %while.end.i, %do.end.i
  %retval.0.i = phi i32 [ -12, %do.end.i ], [ %ret.0.lcssa.i, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tuple.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_get_tuple(ptr noundef %p_dev, i8 noundef zeroext %code, ptr noundef %buf) #0 align 64 {
entry:
  %get = alloca %struct.pcmcia_loop_get, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get) #6
  %0 = getelementptr inbounds %struct.pcmcia_loop_get, ptr %get, i32 0, i32 1
  %1 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %get, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %0, align 4
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %buf, align 4
  %call = call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext %code, ptr noundef nonnull @pcmcia_do_get_tuple, ptr noundef nonnull %get)
  %4 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %get, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_do_get_tuple(ptr noundef %p_dev, ptr nocapture noundef readonly %tuple, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %0 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleDataLen, align 4
  %conv = zext i8 %1 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #11
  %buf = getelementptr inbounds %struct.pcmcia_loop_get, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %3, align 4
  %5 = load ptr, ptr %buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %TupleDataLen, align 4
  %conv3 = zext i8 %9 to i32
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %priv, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %13 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %TupleData, align 4
  %15 = load i8, ptr %TupleDataLen, align 4
  %conv6 = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %12, ptr %14, i32 %conv6)
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_do_get_tuple.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_do_get_tuple, %if.then11)) #6
          to label %if.end12 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_do_get_tuple.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.body, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_get_mac_from_cis(ptr noundef %p_dev, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext 34, ptr noundef nonnull @pcmcia_do_get_mac, ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_do_get_mac(ptr noundef %p_dev, ptr nocapture noundef readonly %tuple, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %0 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %TupleData, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not = icmp eq i8 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %4 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp3 = icmp ult i8 %5, 8
  br i1 %cmp3, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx9 = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp11.not = icmp eq i8 %7, 6
  br i1 %cmp11.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20 = getelementptr i8, ptr %1, i32 2
  tail call void @dev_addr_mod(ptr noundef %priv, i32 noundef 0, ptr noundef %arrayidx20, i32 noundef 6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_get_next_tuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pccard_read_tuple._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pccard_read_tuple._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_pcmcia_loop_config, !9, !"__ksymtab_pcmcia_loop_config", i1 false, i1 false}
!9 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 282, i32 1}
!10 = !{ptr @__ksymtab_pcmcia_loop_tuple, !11, !"__ksymtab_pcmcia_loop_tuple", i1 false, i1 false}
!11 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 333, i32 1}
!12 = !{ptr @__ksymtab_pcmcia_get_tuple, !13, !"__ksymtab_pcmcia_get_tuple", i1 false, i1 false}
!13 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 387, i32 1}
!14 = !{ptr @__ksymtab_pcmcia_get_mac_from_cis, !15, !"__ksymtab_pcmcia_get_mac_from_cis", i1 false, i1 false}
!15 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 432, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 94, i32 3}
!18 = !{ptr @pccard_loop_tuple._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pccard_loop_tuple._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 163, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pcmcia_do_loop_config.__UNIQUE_ID_ddebug341, !21, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 239, i32 2}
!27 = !{ptr @pcmcia_do_loop_config.__UNIQUE_ID_ddebug342, !26, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 360, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pcmcia_do_get_tuple.__UNIQUE_ID_ddebug343, !29, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 406, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcmcia_do_get_mac._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pcmcia_do_get_mac._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pcmcia/pcmcia_cis.c", i32 412, i32 3}
!39 = !{ptr @pcmcia_do_get_mac._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pcmcia_do_get_mac._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = distinct !{ptr @pcmcia_do_loop_config, null}
!51 = !{i64 2148212274, i64 2148212279, i64 2148212292, i64 2148212336, i64 2148212370, i64 2148212391}

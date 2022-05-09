; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/cistpl.c_pt.bc'
source_filename = "../drivers/pcmcia/cistpl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pcmcia_parse_tuple\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_parse_tuple\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_parse_tuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_parse_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_parse_tuple\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_parse_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cis_cache_entry = type { %struct.list_head, i32, i32, i32, [0 x i8] }
%struct.tuple_t = type { i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, ptr }
%struct.cistpl_device_t = type { i8, [4 x %struct.anon.73] }
%struct.anon.73 = type { i8, i8, i32, i32 }
%struct.cistpl_checksum_t = type { i16, i16, i8 }
%struct.cistpl_longlink_mfc_t = type { i8, [8 x %struct.anon.74] }
%struct.anon.74 = type { i8, i32 }
%struct.cistpl_vers_1_t = type { i8, i8, i8, [4 x i8], [254 x i8] }
%struct.cistpl_altstr_t = type { i8, [4 x i8], [254 x i8] }
%struct.cistpl_jedec_t = type { i8, [4 x %struct.anon.75] }
%struct.anon.75 = type { i8, i8 }
%struct.cistpl_manfid_t = type { i16, i16 }
%struct.cistpl_funcid_t = type { i8, i8 }
%struct.cistpl_funce_t = type { i8, [0 x i8] }
%struct.cistpl_config_t = type { i8, i32, [4 x i32], i8 }
%struct.cistpl_cftable_entry_t = type { i8, i16, i8, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_timing_t, %struct.cistpl_io_t, %struct.cistpl_irq_t, %struct.cistpl_mem_t, i8 }
%struct.cistpl_power_t = type { i8, i8, [7 x i32] }
%struct.cistpl_timing_t = type { i32, i32, i32, i32, i32, i32 }
%struct.cistpl_io_t = type { i8, i8, [16 x %struct.anon.76] }
%struct.anon.76 = type { i32, i32 }
%struct.cistpl_irq_t = type { i32, i32 }
%struct.cistpl_mem_t = type { i8, i8, [8 x %struct.anon.77] }
%struct.anon.77 = type { i32, i32, i32 }
%struct.cistpl_device_geo_t = type { i8, [4 x %struct.anon.78] }
%struct.anon.78 = type { i8, i32, i32, i32, i32, i32 }
%struct.cistpl_vers_2_t = type { i8, i8, i16, i8, i8, i8, i8, i8, [244 x i8] }
%struct.cistpl_org_t = type { i8, [30 x i8] }
%struct.cistpl_format_t = type { i8, i8, i32, i32 }

@__param_str_cis_width = internal constant [17 x i8] c"pcmcia.cis_width\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cis_width = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cis_width = internal constant %struct.kernel_param { ptr @__param_str_cis_width, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @cis_width } }, section "__param", align 4
@__UNIQUE_ID_cis_widthtype236 = internal constant [30 x i8] c"pcmcia.parmtype=cis_width:int\00", section ".modinfo", align 1
@pcmcia_read_cis_mem.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmcia\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_read_cis_mem\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pcmcia/cistpl.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pcmcia_read_cis_mem(%d, %#x, %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@pcmcia_read_cis_mem.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not map memory\0A\00", [42 x i8] zeroinitializer }, align 32
@pcmcia_read_cis_mem.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"attempt to read CIS mem at addr %#x\00", [60 x i8] zeroinitializer }, align 32
@pcmcia_read_cis_mem.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pcmcia_read_cis_mem.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  %#2.2x %#2.2x %#2.2x %#2.2x ...\0A\00", [61 x i8] zeroinitializer }, align 32
@pcmcia_write_cis_mem.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmcia_write_cis_mem\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pcmcia_write_cis_mem(%d, %#x, %u)\0A\00", [61 x i8] zeroinitializer }, align 32
@pcmcia_write_cis_mem.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.4, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.4, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@verify_cis_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 382, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no memory for verifying CIS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"verify_cis_cache\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@verify_cis_cache._entry_ptr = internal global ptr @verify_cis_cache._entry, section ".printk_index", align 4
@pcmcia_replace_cis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 414, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"replacement CIS too big\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_replace_cis\00", [45 x i8] zeroinitializer }, align 32
@pcmcia_replace_cis._entry_ptr = internal global ptr @pcmcia_replace_cis._entry, section ".printk_index", align 4
@pcmcia_replace_cis._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 421, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no memory to replace CIS\0A\00", [38 x i8] zeroinitializer }, align 32
@pcmcia_replace_cis._entry_ptr.17 = internal global ptr @pcmcia_replace_cis._entry.15, section ".printk_index", align 4
@pcmcia_replace_cis._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 427, ptr @.str.20, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Using replacement CIS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcmcia_replace_cis._entry_ptr.21 = internal global ptr @pcmcia_replace_cis._entry.18, section ".printk_index", align 4
@pccard_get_next_tuple.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pccard_get_next_tuple\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cs: overrun in pcmcia_get_next_tuple\0A\00", [58 x i8] zeroinitializer }, align 32
@pcmcia_parse_tuple.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_parse_tuple\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"parse_tuple failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_pcmcia_parse_tuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_parse_tuple = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_parse_tuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_parse_tuple to i32), ptr @__kstrtab_pcmcia_parse_tuple, ptr @__kstrtabns_pcmcia_parse_tuple }, section "___ksymtab+pcmcia_parse_tuple", align 4
@pccard_validate_cis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1398, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no memory to validate CIS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pccard_validate_cis\00", [44 x i8] zeroinitializer }, align 32
@pccard_validate_cis._entry_ptr = internal global ptr @pccard_validate_cis._entry, section ".printk_index", align 4
@pccard_validate_cis._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1404, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@pccard_validate_cis._entry_ptr.29 = internal global ptr @pccard_validate_cis._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cis\00", [28 x i8] zeroinitializer }, align 32
@pccard_cis_attr = dso_local constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @pccard_show_cis, ptr @pccard_store_cis, ptr null }, [52 x i8] zeroinitializer }, align 32
@set_cis_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 96, ptr @.str.33, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cs: unable to map card memory!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_cis_map\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@set_cis_map._entry_ptr = internal global ptr @set_cis_map._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIS\00", [28 x i8] zeroinitializer }, align 32
@mantissa = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A\0C\0D\0F\14\19\1E#(-27<FPZ", [16 x i8] zeroinitializer }, align 32
@exponent = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 6, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.36 = internal global [25 x i64] [i64 23, i64 8, i64 1, i64 6, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 32, i64 33, i64 34, i64 64, i64 65, i64 70, i64 71]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 125, i64 126, i64 127]
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"cis_width\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 58, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 140, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 154, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 170, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 202, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 221, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 382, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 414, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 421, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 427, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 623, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1357, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1398, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1404, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1606, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"pccard_cis_attr\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1605, i32 28 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 96, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 505, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant [9 x i8] c"mantissa\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 34, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"exponent\00", align 1
@___asan_gen_.168 = private constant [27 x i8] c"../drivers/pcmcia/cistpl.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 39, i32 20 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_cis_widthtype236, ptr @__ksymtab_pcmcia_parse_tuple, ptr @__param_cis_width, ptr @pccard_validate_cis._entry, ptr @pccard_validate_cis._entry.28, ptr @pccard_validate_cis._entry_ptr, ptr @pccard_validate_cis._entry_ptr.29, ptr @pcmcia_replace_cis._entry, ptr @pcmcia_replace_cis._entry.15, ptr @pcmcia_replace_cis._entry.18, ptr @pcmcia_replace_cis._entry_ptr, ptr @pcmcia_replace_cis._entry_ptr.17, ptr @pcmcia_replace_cis._entry_ptr.21, ptr @set_cis_map._entry, ptr @set_cis_map._entry_ptr, ptr @verify_cis_cache._entry, ptr @verify_cis_cache._entry_ptr, ptr @cis_width, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @pccard_cis_attr, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mantissa, ptr @exponent], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_cis_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_replace_cis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_replace_cis._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_replace_cis._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_validate_cis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_validate_cis._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_cis_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cis_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantissa to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exponent to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_cis_mem(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %cis_mem = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6
  %and4 = and i8 %1, -2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and4, ptr %flags, align 1
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 23
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %set_mem_map = getelementptr inbounds %struct.pccard_operations, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %set_mem_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mem_map, align 4
  %call = tail call i32 %7(ptr noundef %s, ptr noundef %cis_mem) #9
  %res = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 5
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @release_resource(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res, align 4
  tail call void @kfree(ptr noundef %11) #9
  %12 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %cis_virt = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %13 = ptrtoint ptr %cis_virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cis_virt, align 4
  tail call void @iounmap(ptr noundef %14) #9
  %15 = ptrtoint ptr %cis_virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cis_virt, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_read_cis_mem(ptr noundef %s, i32 noundef %attr, i32 noundef %addr, i32 noundef %len, ptr nocapture noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read_cis_mem, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %attr, i32 noundef %addr, i32 noundef %len) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %attr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  %0 = load i32, ptr @cis_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool9.not = icmp eq i32 %0, 0
  %or = select i1 %tobool9.not, i32 1, i32 3
  %call10 = tail call fastcc ptr @set_cis_map(ptr noundef %s, i32 noundef 0, i32 noundef %or)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.body13, label %do.body31

do.body13:                                        ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read_cis_mem, %if.then25)) #9
          to label %do.end29 [label %if.then25], !srcloc !95

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug238, ptr noundef %dev26, ptr noundef nonnull @.str.4) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %1 = call ptr @memset(ptr %ptr, i32 255, i32 %len)
  br label %cleanup174

do.body31:                                        ; preds = %if.then4
  %and5 = and i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %not.tobool6.not = xor i1 %tobool6.not, true
  %mul = zext i1 %not.tobool6.not to i32
  %spec.select236 = shl i32 %addr, %mul
  %spec.select = select i1 %tobool6.not, i8 7, i8 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %call10, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %spec.select) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %spec.select236 to i8
  %add.ptr38 = getelementptr i8, ptr %call10, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %conv) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %shr = lshr i32 %spec.select236, 8
  %conv43 = trunc i32 %shr to i8
  %add.ptr44 = getelementptr i8, ptr %call10, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %conv43) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %shr48 = lshr i32 %spec.select236, 16
  %conv50 = trunc i32 %shr48 to i8
  %add.ptr51 = getelementptr i8, ptr %call10, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %conv50) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %shr55 = lshr i32 %spec.select236, 24
  %conv57 = trunc i32 %shr55 to i8
  %add.ptr58 = getelementptr i8, ptr %call10, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %conv57) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not258 = icmp eq i32 %len, 0
  br i1 %cmp.not258, label %do.body31.do.body149_crit_edge, label %for.body.lr.ph

do.body31.do.body149_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

for.body.lr.ph:                                   ; preds = %do.body31
  %add.ptr60 = getelementptr i8, ptr %call10, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.addr.0260 = phi i32 [ %len, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %buf.0259 = phi ptr [ %ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %3 = ptrtoint ptr %buf.0259 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %buf.0259, align 1
  %dec = add i32 %len.addr.0260, -1
  %incdec.ptr = getelementptr i8, ptr %buf.0259, i32 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.body.do.body149_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body149_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %addr)
  %cmp65 = icmp ugt i32 %addr, 512
  br i1 %cmp65, label %do.body68, label %if.end85

do.body68:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read_cis_mem, %if.then80)) #9
          to label %do.end84 [label %if.then80], !srcloc !95

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug239, ptr noundef %dev81, ptr noundef nonnull @.str.5, i32 noundef %addr) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %do.body68
  %4 = call ptr @memset(ptr %ptr, i32 255, i32 %len)
  br label %cleanup174

if.end85:                                         ; preds = %if.else
  %5 = load i32, ptr @cis_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool86.not = icmp eq i32 %5, 0
  %or88 = select i1 %tobool86.not, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %tobool89.not = icmp eq i32 %attr, 0
  %or91 = or i32 %or88, 32
  %flags64.0 = select i1 %tobool89.not, i32 %or88, i32 %or91
  %inc.0 = select i1 %tobool89.not, i32 1, i32 2
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool96.not268 = icmp eq i32 %len, 0
  br i1 %tobool96.not268, label %if.end85.do.body149_crit_edge, label %while.body.preheader

if.end85.do.body149_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

while.body.preheader:                             ; preds = %if.end85
  %not.tobool89.not = xor i1 %tobool89.not, true
  %mul93 = zext i1 %not.tobool89.not to i32
  %addr.addr.1 = shl nuw nsw i32 %addr, %mul93
  %6 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_size, align 4
  %neg = sub i32 0, %7
  %and95 = and i32 %addr.addr.1, %neg
  br label %while.body

while.body:                                       ; preds = %for.end141.while.body_crit_edge, %while.body.preheader
  %addr.addr.2272 = phi i32 [ 0, %for.end141.while.body_crit_edge ], [ %addr.addr.1, %while.body.preheader ]
  %len.addr.1271 = phi i32 [ %len.addr.2.lcssa, %for.end141.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %buf.1270 = phi ptr [ %buf.2.lcssa, %for.end141.while.body_crit_edge ], [ %ptr, %while.body.preheader ]
  %card_offset.0269 = phi i32 [ %add, %for.end141.while.body_crit_edge ], [ %and95, %while.body.preheader ]
  %call97 = tail call fastcc ptr @set_cis_map(ptr noundef %s, i32 noundef %card_offset.0269, i32 noundef %flags64.0)
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %do.body100, label %if.end117

do.body100:                                       ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read_cis_mem, %if.then112)) #9
          to label %do.end116 [label %if.then112], !srcloc !95

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %dev113 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug240, ptr noundef %dev113, ptr noundef nonnull @.str.4) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.body100
  %8 = call ptr @memset(ptr %ptr, i32 255, i32 %len.addr.1271)
  br label %cleanup174

if.end117:                                        ; preds = %while.body
  %9 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_size, align 4
  %add.ptr119 = getelementptr i8, ptr %call97, i32 %10
  %sub121 = add i32 %10, -1
  %and122 = and i32 %sub121, %addr.addr.2272
  %add.ptr123 = getelementptr i8, ptr %call97, i32 %and122
  %cmp128262 = icmp eq ptr %add.ptr123, %add.ptr119
  br i1 %cmp128262, label %if.end117.for.end141_crit_edge, label %if.end117.if.end131_crit_edge

if.end117.if.end131_crit_edge:                    ; preds = %if.end117
  br label %if.end131

if.end117.for.end141_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end141

if.end131:                                        ; preds = %if.end131.if.end131_crit_edge, %if.end117.if.end131_crit_edge
  %len.addr.2266 = phi i32 [ %dec138, %if.end131.if.end131_crit_edge ], [ %len.addr.1271, %if.end117.if.end131_crit_edge ]
  %sys.0265 = phi ptr [ %add.ptr140, %if.end131.if.end131_crit_edge ], [ %add.ptr123, %if.end117.if.end131_crit_edge ]
  %buf.2264 = phi ptr [ %incdec.ptr139, %if.end131.if.end131_crit_edge ], [ %buf.1270, %if.end117.if.end131_crit_edge ]
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %sys.0265) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  %12 = ptrtoint ptr %buf.2264 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf.2264, align 1
  %dec138 = add i32 %len.addr.2266, -1
  %incdec.ptr139 = getelementptr i8, ptr %buf.2264, i32 1
  %add.ptr140 = getelementptr i8, ptr %sys.0265, i32 %inc.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec138)
  %cmp125.not = icmp eq i32 %dec138, 0
  %cmp128 = icmp eq ptr %add.ptr140, %add.ptr119
  %or.cond = select i1 %cmp125.not, i1 true, i1 %cmp128
  br i1 %or.cond, label %if.end131.for.end141_crit_edge, label %if.end131.if.end131_crit_edge

if.end131.if.end131_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.end131.for.end141_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end141

for.end141:                                       ; preds = %if.end131.for.end141_crit_edge, %if.end117.for.end141_crit_edge
  %buf.2.lcssa = phi ptr [ %buf.1270, %if.end117.for.end141_crit_edge ], [ %incdec.ptr139, %if.end131.for.end141_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1271, %if.end117.for.end141_crit_edge ], [ %dec138, %if.end131.for.end141_crit_edge ]
  %13 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_size, align 4
  %add = add i32 %14, %card_offset.0269
  %tobool96.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %tobool96.not, label %for.end141.do.body149_crit_edge, label %for.end141.while.body_crit_edge

for.end141.while.body_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.end141.do.body149_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

do.body149:                                       ; preds = %for.end141.do.body149_crit_edge, %if.end85.do.body149_crit_edge, %for.body.do.body149_crit_edge, %do.body31.do.body149_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read_cis_mem, %if.then161)) #9
          to label %cleanup174 [label %if.then161], !srcloc !95

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  %dev162 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ptr, align 1
  %conv164 = zext i8 %16 to i32
  %add.ptr165 = getelementptr i8, ptr %ptr, i32 1
  %17 = ptrtoint ptr %add.ptr165 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr165, align 1
  %conv166 = zext i8 %18 to i32
  %add.ptr167 = getelementptr i8, ptr %ptr, i32 2
  %19 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr167, align 1
  %conv168 = zext i8 %20 to i32
  %add.ptr169 = getelementptr i8, ptr %ptr, i32 3
  %21 = ptrtoint ptr %add.ptr169 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr169, align 1
  %conv170 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug241, ptr noundef %dev162, ptr noundef nonnull @.str.6, i32 noundef %conv164, i32 noundef %conv166, i32 noundef %conv168, i32 noundef %conv170) #9
  br label %cleanup174

cleanup174:                                       ; preds = %if.then161, %do.body149, %do.end116, %do.end84, %do.end29
  %retval.2 = phi i32 [ -1, %do.end29 ], [ -1, %do.end116 ], [ -1, %do.end84 ], [ 0, %if.then161 ], [ 0, %do.body149 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @set_cis_map(ptr noundef %s, i32 noundef %card_offset, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cis_mem = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 16
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %4 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_size, align 4
  %call = tail call ptr @pcmcia_find_mem_region(i32 noundef 0, i32 noundef %5, i32 noundef %5, i32 noundef 0, ptr noundef %s) #9
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %res, align 4
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cis_virt = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %7 = ptrtoint ptr %cis_virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cis_virt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and8 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true10:                                  ; preds = %if.end6
  %cis_virt11 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %10 = ptrtoint ptr %cis_virt11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cis_virt11, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true10.if.end18_crit_edge

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  %res14 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %res14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res14, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %map_size15 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %16 = ptrtoint ptr %map_size15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_size15, align 4
  %call16 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %17) #9
  %18 = ptrtoint ptr %cis_virt11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %cis_virt11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true10.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %card_start = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %card_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %card_offset, ptr %card_start, align 4
  %conv = trunc i32 %flags to i8
  %flags19 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %flags19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %flags19, align 1
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 23
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 8
  %set_mem_map = getelementptr inbounds %struct.pccard_operations, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %set_mem_map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mem_map, align 4
  %call20 = tail call i32 %24(ptr noundef %s, ptr noundef %cis_mem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cis_virt23 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %25 = ptrtoint ptr %cis_virt23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cis_virt23, align 4
  tail call void @iounmap(ptr noundef %26) #9
  %27 = ptrtoint ptr %cis_virt23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cis_virt23, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %features, align 4
  %and27 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end38_crit_edge, label %if.then29

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then29:                                        ; preds = %if.end25
  %cis_virt30 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %30 = ptrtoint ptr %cis_virt30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cis_virt30, align 4
  %tobool31.not = icmp eq ptr %31, null
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then32

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %31) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge
  %static_start = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %static_start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %static_start, align 4
  %map_size35 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %34 = ptrtoint ptr %map_size35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %map_size35, align 4
  %call36 = tail call ptr @ioremap(i32 noundef %33, i32 noundef %35) #9
  %36 = ptrtoint ptr %cis_virt30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call36, ptr %cis_virt30, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.end25.if.end38_crit_edge
  %cis_virt39 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %37 = ptrtoint ptr %cis_virt39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cis_virt39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then22, %do.end
  %retval.0 = phi ptr [ null, %if.then22 ], [ %38, %if.end38 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_write_cis_mem(ptr noundef %s, i32 noundef %attr, i32 noundef %addr, i32 noundef %len, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write_cis_mem, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %attr, i32 noundef %addr, i32 noundef %len) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %attr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %0 = load i32, ptr @cis_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool65.not = icmp eq i32 %0, 0
  %or67 = select i1 %tobool65.not, i32 1, i32 3
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  %call10 = tail call fastcc ptr @set_cis_map(ptr noundef %s, i32 noundef 0, i32 noundef %or67)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.body13, label %do.body31

do.body13:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write_cis_mem, %cleanup127.sink.split)) #9
          to label %cleanup127 [label %cleanup127.sink.split], !srcloc !95

do.body31:                                        ; preds = %if.then4
  %and5 = and i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %not.tobool6.not = xor i1 %tobool6.not, true
  %mul = zext i1 %not.tobool6.not to i32
  %spec.select175 = shl i32 %addr, %mul
  %spec.select = select i1 %tobool6.not, i8 7, i8 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %call10, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %spec.select) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %spec.select175 to i8
  %add.ptr38 = getelementptr i8, ptr %call10, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %conv) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %shr = lshr i32 %spec.select175, 8
  %conv43 = trunc i32 %shr to i8
  %add.ptr44 = getelementptr i8, ptr %call10, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %conv43) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %shr48 = lshr i32 %spec.select175, 16
  %conv50 = trunc i32 %shr48 to i8
  %add.ptr51 = getelementptr i8, ptr %call10, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %conv50) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %shr55 = lshr i32 %spec.select175, 24
  %conv57 = trunc i32 %shr55 to i8
  %add.ptr58 = getelementptr i8, ptr %call10, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %conv57) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not189 = icmp eq i32 %len, 0
  br i1 %cmp.not189, label %do.body31.cleanup127_crit_edge, label %do.body60.lr.ph

do.body31.cleanup127_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127

do.body60.lr.ph:                                  ; preds = %do.body31
  %add.ptr63 = getelementptr i8, ptr %call10, i32 8
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %do.body60.lr.ph
  %len.addr.0191 = phi i32 [ %len, %do.body60.lr.ph ], [ %dec, %do.body60.do.body60_crit_edge ]
  %buf.0190 = phi ptr [ %ptr, %do.body60.lr.ph ], [ %incdec.ptr, %do.body60.do.body60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %1 = ptrtoint ptr %buf.0190 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf.0190, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %2) #9, !srcloc !97
  %dec = add i32 %len.addr.0191, -1
  %incdec.ptr = getelementptr i8, ptr %buf.0190, i32 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.body60.cleanup127_crit_edge, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

do.body60.cleanup127_crit_edge:                   ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127

if.else:                                          ; preds = %do.end
  %and68 = and i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %inc.0 = select i1 %tobool69.not, i32 1, i32 2
  %3 = shl nuw nsw i32 %and68, 5
  %4 = or i32 %or67, %3
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool76.not199 = icmp eq i32 %len, 0
  br i1 %tobool76.not199, label %if.else.cleanup127_crit_edge, label %while.body.preheader

if.else.cleanup127_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127

while.body.preheader:                             ; preds = %if.else
  %not.tobool69.not = xor i1 %tobool69.not, true
  %mul73 = zext i1 %not.tobool69.not to i32
  %addr.addr.1 = shl i32 %addr, %mul73
  %5 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_size, align 4
  %neg = sub i32 0, %6
  %and75 = and i32 %addr.addr.1, %neg
  br label %while.body

while.body:                                       ; preds = %for.end119.while.body_crit_edge, %while.body.preheader
  %addr.addr.2203 = phi i32 [ 0, %for.end119.while.body_crit_edge ], [ %addr.addr.1, %while.body.preheader ]
  %card_offset.0202 = phi i32 [ %add, %for.end119.while.body_crit_edge ], [ %and75, %while.body.preheader ]
  %len.addr.1201 = phi i32 [ %len.addr.2.lcssa, %for.end119.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %buf.1200 = phi ptr [ %buf.2.lcssa, %for.end119.while.body_crit_edge ], [ %ptr, %while.body.preheader ]
  %call77 = tail call fastcc ptr @set_cis_map(ptr noundef %s, i32 noundef %card_offset.0202, i32 noundef %4)
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %do.body80, label %if.end97

do.body80:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write_cis_mem, %cleanup127.sink.split)) #9
          to label %cleanup127 [label %cleanup127.sink.split], !srcloc !95

if.end97:                                         ; preds = %while.body
  %7 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_size, align 4
  %add.ptr99 = getelementptr i8, ptr %call77, i32 %8
  %sub101 = add i32 %8, -1
  %and102 = and i32 %sub101, %addr.addr.2203
  %add.ptr103 = getelementptr i8, ptr %call77, i32 %and102
  %cmp108193 = icmp eq ptr %add.ptr103, %add.ptr99
  br i1 %cmp108193, label %if.end97.for.end119_crit_edge, label %if.end97.do.body112_crit_edge

if.end97.do.body112_crit_edge:                    ; preds = %if.end97
  br label %do.body112

if.end97.for.end119_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119

do.body112:                                       ; preds = %do.body112.do.body112_crit_edge, %if.end97.do.body112_crit_edge
  %len.addr.2197 = phi i32 [ %dec116, %do.body112.do.body112_crit_edge ], [ %len.addr.1201, %if.end97.do.body112_crit_edge ]
  %sys.0196 = phi ptr [ %add.ptr118, %do.body112.do.body112_crit_edge ], [ %add.ptr103, %if.end97.do.body112_crit_edge ]
  %buf.2195 = phi ptr [ %incdec.ptr117, %do.body112.do.body112_crit_edge ], [ %buf.1200, %if.end97.do.body112_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %buf.2195 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.2195, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %sys.0196, i8 %10) #9, !srcloc !97
  %dec116 = add i32 %len.addr.2197, -1
  %incdec.ptr117 = getelementptr i8, ptr %buf.2195, i32 1
  %add.ptr118 = getelementptr i8, ptr %sys.0196, i32 %inc.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec116)
  %cmp105.not = icmp eq i32 %dec116, 0
  %cmp108 = icmp eq ptr %add.ptr118, %add.ptr99
  %or.cond = select i1 %cmp105.not, i1 true, i1 %cmp108
  br i1 %or.cond, label %do.body112.for.end119_crit_edge, label %do.body112.do.body112_crit_edge

do.body112.do.body112_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

do.body112.for.end119_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119

for.end119:                                       ; preds = %do.body112.for.end119_crit_edge, %if.end97.for.end119_crit_edge
  %buf.2.lcssa = phi ptr [ %buf.1200, %if.end97.for.end119_crit_edge ], [ %incdec.ptr117, %do.body112.for.end119_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1201, %if.end97.for.end119_crit_edge ], [ %dec116, %do.body112.for.end119_crit_edge ]
  %11 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %map_size, align 4
  %add = add i32 %12, %card_offset.0202
  %tobool76.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %tobool76.not, label %for.end119.cleanup127_crit_edge, label %for.end119.while.body_crit_edge

for.end119.while.body_crit_edge:                  ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.end119.cleanup127_crit_edge:                  ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127

cleanup127.sink.split:                            ; preds = %do.body80, %do.body13
  %pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244.sink = phi ptr [ @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug243, %do.body13 ], [ @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244, %do.body80 ]
  call void @__sanitizer_cov_trace_pc() #11
  %dev93 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244.sink, ptr noundef %dev93, ptr noundef nonnull @.str.4) #9
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup127.sink.split, %for.end119.cleanup127_crit_edge, %do.body80, %if.else.cleanup127_crit_edge, %do.body60.cleanup127_crit_edge, %do.body31.cleanup127_crit_edge, %do.body13
  %retval.2 = phi i32 [ -22, %do.body13 ], [ -22, %do.body80 ], [ 0, %if.else.cleanup127_crit_edge ], [ 0, %do.body31.cleanup127_crit_edge ], [ -22, %cleanup127.sink.split ], [ 0, %for.end119.cleanup127_crit_edge ], [ 0, %do.body60.cleanup127_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_cis_cache(ptr noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cis_cache = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %cis_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cis_cache, align 8
  %cmp.i.not10 = icmp eq ptr %1, %cis_cache
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %l.011 = phi ptr [ %n.013, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %l.011 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.013 = load ptr, ptr %l.011, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.011) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.011, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %l.011 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l.011, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %l.011 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %l.011, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.011, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.011) #9
  %cmp.i.not = icmp eq ptr %n.013, %cis_cache
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verify_cis_cache(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #13
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup22

if.end2:                                          ; preds = %if.end
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %cis_cache = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end2
  %cis.0.in = phi ptr [ %cis_cache, %if.end2 ], [ %cis.0, %lor.lhs.false.for.cond_crit_edge ]
  %3 = ptrtoint ptr %cis.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cis.0 = load ptr, ptr %cis.0.in, align 4
  %cmp4.not = icmp eq ptr %cis.0, %cis_cache
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %len5 = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.0, i32 0, i32 2
  %4 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len5, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 256)
  %attr = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.0, i32 0, i32 3
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 4
  %addr = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.0, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %call9 = tail call i32 @pcmcia_read_cis_mem(ptr noundef %s, i32 noundef %8, i32 noundef %10, i32 noundef %6, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %for.body.if.then13_crit_edge

for.body.if.then13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %for.body
  %cache = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.0, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %call7.i, ptr %cache, i32 %6) #14
  %cmp12.not = icmp eq i32 %bcmp, 0
  br i1 %cmp12.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %for.body.if.then13_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %cleanup22

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %cleanup22

cleanup22:                                        ; preds = %for.end, %if.then13, %do.end, %entry.cleanup22_crit_edge
  %retval.2 = phi i32 [ -12, %do.end ], [ 0, %for.end ], [ -22, %entry.cleanup22_crit_edge ], [ -1, %if.then13 ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_replace_cis(ptr noundef %s, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %len)
  %cmp = icmp ugt i32 %len, 512
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %return

if.end:                                           ; preds = %entry
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fake_cis, align 4
  tail call void @kfree(ptr noundef %1) #9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #15
  %2 = ptrtoint ptr %fake_cis to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %fake_cis, align 4
  %cmp3 = icmp eq ptr %call9.i, null
  br i1 %cmp3, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.16) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fake_cis_len = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 11
  %3 = ptrtoint ptr %fake_cis_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %fake_cis_len, align 8
  %4 = call ptr @memcpy(ptr %call9.i, ptr %data, i32 %len)
  %dev13 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.19) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %return

return:                                           ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pccard_get_first_tuple(ptr noundef %s, i32 noundef %function, ptr nocapture noundef %tuple) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = and i32 %1, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %if.end
  %Flags = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 2
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 135266304, ptr %Flags, align 4
  %TupleLink = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 6
  %5 = ptrtoint ptr %TupleLink to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %TupleLink, align 1
  %LinkOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 3
  %6 = ptrtoint ptr %LinkOffset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %LinkOffset, align 4
  %CISOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 4
  %7 = ptrtoint ptr %CISOffset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %CISOffset, align 4
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %8 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp ugt i16 %9, 1
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end30_crit_edge

if.end6.if.end30_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end6
  %10 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuple, align 4
  %and13 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then15:                                        ; preds = %land.lhs.true
  %DesiredTuple = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 1
  %12 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DesiredTuple, align 4
  store i8 6, ptr %DesiredTuple, align 4
  %call = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %s, i32 noundef %function, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17 = icmp eq i32 %call, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %14 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 19, ptr %DesiredTuple, align 4
  %call21 = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %s, i32 noundef %function, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.then19.cleanup.thread_crit_edge, label %if.then19.return_crit_edge

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then19.cleanup.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %TupleLink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %TupleLink, align 1
  %16 = ptrtoint ptr %CISOffset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %CISOffset, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then19.cleanup.thread_crit_edge
  %17 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %DesiredTuple, align 4
  br label %if.end30

if.end30:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end30_crit_edge, %if.end6.if.end30_crit_edge
  %call31 = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %s, i32 noundef %function, ptr noundef %tuple)
  br label %return

return:                                           ; preds = %if.end30, %if.then19.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call31, %if.end30 ], [ -22, %entry.return_crit_edge ], [ -19, %if.end.return_crit_edge ], [ -28, %if.then19.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pccard_get_next_tuple(ptr noundef %s, i32 noundef %function, ptr nocapture noundef %tuple) local_unnamed_addr #0 align 64 {
entry:
  %link.i = alloca [5 x i8], align 1
  %link = alloca [2 x i8], align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link) #9
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %link, align 1, !annotation !112
  %1 = getelementptr inbounds [2 x i8], ptr %link, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !112
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %5 = and i32 %4, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %TupleLink = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 6
  %7 = ptrtoint ptr %TupleLink to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %TupleLink, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %1, align 1
  %CISOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 4
  %10 = ptrtoint ptr %CISOffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %CISOffset, align 4
  %conv = zext i8 %8 to i32
  %add = add i32 %11, %conv
  %Flags = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 2
  %12 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %Flags, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %bf.clear to i32
  %13 = getelementptr inbounds [5 x i8], ptr %link.i, i32 0, i32 1
  %14 = getelementptr inbounds [5 x i8], ptr %link.i, i32 0, i32 2
  %LinkOffset.i = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 3
  %ops_mutex.i.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  %cis_cache.i.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %function)
  %cmp129 = icmp eq i32 %function, 255
  %mul = mul i32 %function, 5
  %DesiredTuple = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %ofs.0282 = phi i32 [ %add, %if.end6 ], [ %ofs.2, %for.inc.for.body_crit_edge ]
  %attr.0281 = phi i32 [ %bf.cast, %if.end6 ], [ %attr.2, %for.inc.for.body_crit_edge ]
  %i.0278 = phi i32 [ 0, %if.end6 ], [ %inc185, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp11 = icmp eq i8 %16, -1
  br i1 %cmp11, label %if.end24.thread, label %if.else

if.end24.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %link, align 1
  br label %if.then29

if.else:                                          ; preds = %for.body
  %call = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %attr.0281, i32 noundef %ofs.0282, i32 noundef 2, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %link, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end17.if.end45_crit_edge [
    i8 0, label %if.then22
    i8 -1, label %if.end17.if.then29_crit_edge
  ]

if.end17.if.then29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end17.if.end45_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %ofs.0282, 1
  br label %for.inc

if.then29:                                        ; preds = %if.end17.if.then29_crit_edge, %if.end24.thread
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %link.i) #9
  %21 = call ptr @memset(ptr %link.i, i32 255, i32 5)
  %22 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %Flags, align 4
  %23 = and i16 %bf.load.i, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  %bf.lshr3.i = lshr i16 %bf.load.i, 12
  %bf.cast4.i = zext i16 %bf.lshr3.i to i32
  %24 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %LinkOffset.i, align 4
  %call.i = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %bf.cast4.i, i32 noundef %25, i32 noundef 5, ptr noundef nonnull %link.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then.i.follow_link.exit.thread_crit_edge

if.then.i.follow_link.exit.thread_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %13, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load11.i = load i16, ptr %Flags, align 4
  %bf.shl.i = select i1 %cmp.i, i16 16, i16 0
  %bf.clear12.i = and i16 %bf.load11.i, -2033
  %bf.set.i = or i16 %bf.clear12.i, %bf.shl.i
  %32 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %LinkOffset.i, align 4
  %add.i = add i32 %33, 5
  store i32 %add.i, ptr %LinkOffset.i, align 4
  %34 = add i16 %bf.load11.i, 1792
  %bf.shl21.i = and i16 %34, 1792
  %bf.set23.i = or i16 %bf.set.i, %bf.shl21.i
  br label %if.end50.i

if.else.i:                                        ; preds = %if.then29
  %35 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool30.not.i = icmp eq i16 %35, 0
  br i1 %tobool30.not.i, label %if.else.i.follow_link.exit.thread_crit_edge, label %if.then31.i

if.else.i.follow_link.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit.thread

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %LinkOffset.i, align 4
  %38 = lshr i16 %bf.load.i, 8
  %bf.shl40.i = and i16 %38, 240
  %bf.clear41.i = and i16 %bf.load.i, -2289
  %bf.set42.i = or i16 %bf.shl40.i, %bf.clear41.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then31.i, %if.end.i
  %storemerge.i = phi i16 [ %bf.set42.i, %if.then31.i ], [ %bf.set23.i, %if.end.i ]
  %ofs.0.i = phi i32 [ %37, %if.then31.i ], [ %28, %if.end.i ]
  %39 = ptrtoint ptr %Flags to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %storemerge.i, ptr %Flags, align 4
  %bf.lshr53.i = lshr i16 %storemerge.i, 4
  %bf.clear54.i = and i16 %bf.lshr53.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear54.i)
  %tobool56.not.i = icmp eq i16 %bf.clear54.i, 0
  br i1 %tobool56.not.i, label %if.end50.i.if.end89.i_crit_edge, label %if.then57.i

if.end50.i.if.end89.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then57.i:                                      ; preds = %if.end50.i
  %bf.cast55.i = zext i16 %bf.clear54.i to i32
  %call64.i = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %bf.cast55.i, i32 noundef %ofs.0.i, i32 noundef 5, ptr noundef nonnull %link.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.then57.i.follow_link.exit.thread_crit_edge

if.then57.i.follow_link.exit.thread_crit_edge:    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit.thread

if.end67.i:                                       ; preds = %if.then57.i
  %40 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %link.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %41)
  %cmp70.i = icmp eq i8 %41, 19
  br i1 %cmp70.i, label %land.lhs.true.i, label %if.end67.i.if.end83.i_crit_edge

if.end67.i.if.end83.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp74.i = icmp ugt i8 %43, 2
  br i1 %cmp74.i, label %land.lhs.true76.i, label %land.lhs.true.i.if.end83.i_crit_edge

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

land.lhs.true76.i:                                ; preds = %land.lhs.true.i
  %bcmp151.i = call i32 @bcmp(ptr noundef dereferenceable(3) %14, ptr noundef nonnull dereferenceable(3) @.str.34, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp151.i)
  %cmp80.i = icmp eq i32 %bcmp151.i, 0
  br i1 %cmp80.i, label %land.lhs.true76.i.follow_link.exit_crit_edge, label %land.lhs.true76.i.if.end83.i_crit_edge

land.lhs.true76.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

land.lhs.true76.i.follow_link.exit_crit_edge:     ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit

if.end83.i:                                       ; preds = %land.lhs.true76.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %if.end67.i.if.end83.i_crit_edge
  %44 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load85.i = load i16, ptr %Flags, align 4
  %bf.lshr86.i = lshr i16 %bf.load85.i, 4
  %bf.clear87.i = and i16 %bf.lshr86.i, 15
  %bf.cast88.i = zext i16 %bf.clear87.i to i32
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex.i.i, i32 noundef 0) #9
  %45 = ptrtoint ptr %cis_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cis.03.i.i = load ptr, ptr %cis_cache.i.i, align 4
  %cmp.not4.i.i = icmp eq ptr %cis.03.i.i, %cis_cache.i.i
  br i1 %cmp.not4.i.i, label %if.end83.i.remove_cis_cache.exit.i_crit_edge, label %if.end83.i.for.body.i.i_crit_edge

if.end83.i.for.body.i.i_crit_edge:                ; preds = %if.end83.i
  br label %for.body.i.i

if.end83.i.remove_cis_cache.exit.i_crit_edge:     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_cis_cache.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end83.i.for.body.i.i_crit_edge
  %cis.05.i.i = phi ptr [ %cis.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %cis.03.i.i, %if.end83.i.for.body.i.i_crit_edge ]
  %addr2.i.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %ofs.0.i)
  %cmp3.i.i = icmp eq i32 %47, %ofs.0.i
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %len4.i.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp5.i.i = icmp eq i32 %49, 5
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %attr7.i.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %attr7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %attr7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %bf.cast88.i)
  %cmp8.i.i = icmp eq i32 %51, %bf.cast88.i
  br i1 %cmp8.i.i, label %if.then.i.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cis.05.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cis.05.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i.i, align 4
  %54 = ptrtoint ptr %cis.05.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cis.05.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %58 = ptrtoint ptr %cis.05.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %cis.05.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cis.05.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %cis.05.i.i) #9
  br label %remove_cis_cache.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %60 = ptrtoint ptr %cis.05.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %cis.0.i.i = load ptr, ptr %cis.05.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %cis.0.i.i, %cis_cache.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.remove_cis_cache.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.remove_cis_cache.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_cis_cache.exit.i

remove_cis_cache.exit.i:                          ; preds = %for.inc.i.i.remove_cis_cache.exit.i_crit_edge, %list_del.exit.i.i, %if.end83.i.remove_cis_cache.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_mutex.i.i) #9
  %shr.i = lshr i32 %ofs.0.i, 1
  br label %if.end89.i

if.end89.i:                                       ; preds = %remove_cis_cache.exit.i, %if.end50.i.if.end89.i_crit_edge
  %ofs.1.i = phi i32 [ %shr.i, %remove_cis_cache.exit.i ], [ %ofs.0.i, %if.end50.i.if.end89.i_crit_edge ]
  %61 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load91.i = load i16, ptr %Flags, align 4
  %bf.lshr92.i = lshr i16 %bf.load91.i, 4
  %bf.clear93.i = and i16 %bf.lshr92.i, 15
  %bf.cast94.i = zext i16 %bf.clear93.i to i32
  %call96.i = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %bf.cast94.i, i32 noundef %ofs.1.i, i32 noundef 5, ptr noundef nonnull %link.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end99.i, label %if.end89.i.follow_link.exit.thread_crit_edge

if.end89.i.follow_link.exit.thread_crit_edge:     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit.thread

if.end99.i:                                       ; preds = %if.end89.i
  %62 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %link.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %63)
  %cmp102.i = icmp eq i8 %63, 19
  br i1 %cmp102.i, label %land.lhs.true104.i, label %if.end99.i.if.end116.i_crit_edge

if.end99.i.if.end116.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

land.lhs.true104.i:                               ; preds = %if.end99.i
  %64 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp107.i = icmp ugt i8 %65, 2
  br i1 %cmp107.i, label %land.lhs.true109.i, label %land.lhs.true104.i.if.end116.i_crit_edge

land.lhs.true104.i.if.end116.i_crit_edge:         ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

land.lhs.true109.i:                               ; preds = %land.lhs.true104.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(3) %14, ptr noundef nonnull dereferenceable(3) @.str.34, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp113.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp113.i, label %land.lhs.true109.i.follow_link.exit_crit_edge, label %land.lhs.true109.i.if.end116.i_crit_edge

land.lhs.true109.i.if.end116.i_crit_edge:         ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

land.lhs.true109.i.follow_link.exit_crit_edge:    ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %follow_link.exit

if.end116.i:                                      ; preds = %land.lhs.true109.i.if.end116.i_crit_edge, %land.lhs.true104.i.if.end116.i_crit_edge, %if.end99.i.if.end116.i_crit_edge
  %66 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load118.i = load i16, ptr %Flags, align 4
  %bf.lshr119.i = lshr i16 %bf.load118.i, 4
  %bf.clear120.i = and i16 %bf.lshr119.i, 15
  %bf.cast121.i = zext i16 %bf.clear120.i to i32
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex.i.i, i32 noundef 0) #9
  %67 = ptrtoint ptr %cis_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %cis.03.i154.i = load ptr, ptr %cis_cache.i.i, align 4
  %cmp.not4.i155.i = icmp eq ptr %cis.03.i154.i, %cis_cache.i.i
  br i1 %cmp.not4.i155.i, label %if.end116.i.remove_cis_cache.exit176.i_crit_edge, label %if.end116.i.for.body.i159.i_crit_edge

if.end116.i.for.body.i159.i_crit_edge:            ; preds = %if.end116.i
  br label %for.body.i159.i

if.end116.i.remove_cis_cache.exit176.i_crit_edge: ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_cis_cache.exit176.i

for.body.i159.i:                                  ; preds = %for.inc.i175.i.for.body.i159.i_crit_edge, %if.end116.i.for.body.i159.i_crit_edge
  %cis.05.i156.i = phi ptr [ %cis.0.i173.i, %for.inc.i175.i.for.body.i159.i_crit_edge ], [ %cis.03.i154.i, %if.end116.i.for.body.i159.i_crit_edge ]
  %addr2.i157.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i156.i, i32 0, i32 1
  %68 = ptrtoint ptr %addr2.i157.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr2.i157.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %ofs.1.i)
  %cmp3.i158.i = icmp eq i32 %69, %ofs.1.i
  br i1 %cmp3.i158.i, label %land.lhs.true.i162.i, label %for.body.i159.i.for.inc.i175.i_crit_edge

for.body.i159.i.for.inc.i175.i_crit_edge:         ; preds = %for.body.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i175.i

land.lhs.true.i162.i:                             ; preds = %for.body.i159.i
  %len4.i160.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i156.i, i32 0, i32 2
  %70 = ptrtoint ptr %len4.i160.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len4.i160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %71)
  %cmp5.i161.i = icmp eq i32 %71, 5
  br i1 %cmp5.i161.i, label %land.lhs.true6.i165.i, label %land.lhs.true.i162.i.for.inc.i175.i_crit_edge

land.lhs.true.i162.i.for.inc.i175.i_crit_edge:    ; preds = %land.lhs.true.i162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i175.i

land.lhs.true6.i165.i:                            ; preds = %land.lhs.true.i162.i
  %attr7.i163.i = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.05.i156.i, i32 0, i32 3
  %72 = ptrtoint ptr %attr7.i163.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %attr7.i163.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %bf.cast121.i)
  %cmp8.i164.i = icmp eq i32 %73, %bf.cast121.i
  br i1 %cmp8.i164.i, label %if.then.i167.i, label %land.lhs.true6.i165.i.for.inc.i175.i_crit_edge

land.lhs.true6.i165.i.for.inc.i175.i_crit_edge:   ; preds = %land.lhs.true6.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i175.i

if.then.i167.i:                                   ; preds = %land.lhs.true6.i165.i
  %call.i.i.i166.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cis.05.i156.i) #9
  br i1 %call.i.i.i166.i, label %if.end.i.i.i170.i, label %if.then.i167.i.list_del.exit.i172.i_crit_edge

if.then.i167.i.list_del.exit.i172.i_crit_edge:    ; preds = %if.then.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i172.i

if.end.i.i.i170.i:                                ; preds = %if.then.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i168.i = getelementptr inbounds %struct.list_head, ptr %cis.05.i156.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i168.i, align 4
  %76 = ptrtoint ptr %cis.05.i156.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cis.05.i156.i, align 4
  %prev1.i.i.i.i169.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i169.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i169.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.i172.i

list_del.exit.i172.i:                             ; preds = %if.end.i.i.i170.i, %if.then.i167.i.list_del.exit.i172.i_crit_edge
  %80 = ptrtoint ptr %cis.05.i156.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %cis.05.i156.i, align 4
  %prev.i.i171.i = getelementptr inbounds %struct.list_head, ptr %cis.05.i156.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i171.i, align 4
  tail call void @kfree(ptr noundef %cis.05.i156.i) #9
  br label %remove_cis_cache.exit176.i

for.inc.i175.i:                                   ; preds = %land.lhs.true6.i165.i.for.inc.i175.i_crit_edge, %land.lhs.true.i162.i.for.inc.i175.i_crit_edge, %for.body.i159.i.for.inc.i175.i_crit_edge
  %82 = ptrtoint ptr %cis.05.i156.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %cis.0.i173.i = load ptr, ptr %cis.05.i156.i, align 4
  %cmp.not.i174.i = icmp eq ptr %cis.0.i173.i, %cis_cache.i.i
  br i1 %cmp.not.i174.i, label %for.inc.i175.i.remove_cis_cache.exit176.i_crit_edge, label %for.inc.i175.i.for.body.i159.i_crit_edge

for.inc.i175.i.for.body.i159.i_crit_edge:         ; preds = %for.inc.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i159.i

for.inc.i175.i.remove_cis_cache.exit176.i_crit_edge: ; preds = %for.inc.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_cis_cache.exit176.i

remove_cis_cache.exit176.i:                       ; preds = %for.inc.i175.i.remove_cis_cache.exit176.i_crit_edge, %list_del.exit.i172.i, %if.end116.i.remove_cis_cache.exit176.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_mutex.i.i) #9
  br label %follow_link.exit.thread

follow_link.exit.thread:                          ; preds = %remove_cis_cache.exit176.i, %if.end89.i.follow_link.exit.thread_crit_edge, %if.then57.i.follow_link.exit.thread_crit_edge, %if.else.i.follow_link.exit.thread_crit_edge, %if.then.i.follow_link.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %link.i) #9
  br label %cleanup

follow_link.exit:                                 ; preds = %land.lhs.true109.i.follow_link.exit_crit_edge, %land.lhs.true76.i.follow_link.exit_crit_edge
  %retval.0.i266 = phi i32 [ %ofs.0.i, %land.lhs.true76.i.follow_link.exit_crit_edge ], [ %ofs.1.i, %land.lhs.true109.i.follow_link.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %link.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i266)
  %cmp31 = icmp slt i32 %retval.0.i266, 0
  br i1 %cmp31, label %follow_link.exit.cleanup_crit_edge, label %if.end34

follow_link.exit.cleanup_crit_edge:               ; preds = %follow_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %follow_link.exit
  %83 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load36 = load i16, ptr %Flags, align 4
  %bf.lshr37 = lshr i16 %bf.load36, 4
  %bf.clear38 = and i16 %bf.lshr37, 15
  %bf.cast39 = zext i16 %bf.clear38 to i32
  %call41 = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %bf.cast39, i32 noundef %retval.0.i266, i32 noundef 2, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end45thread-pre-split, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45thread-pre-split:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %84)
  %.pr = load i8, ptr %link, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.end45thread-pre-split, %if.end17.if.end45_crit_edge
  %85 = phi i8 [ %.pr, %if.end45thread-pre-split ], [ %19, %if.end17.if.end45_crit_edge ]
  %attr.1 = phi i32 [ %bf.cast39, %if.end45thread-pre-split ], [ %attr.0281, %if.end17.if.end45_crit_edge ]
  %ofs.1 = phi i32 [ %retval.0.i266, %if.end45thread-pre-split ], [ %ofs.0282, %if.end17.if.end45_crit_edge ]
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %85, label %if.else165 [
    i8 17, label %sw.bb
    i8 18, label %sw.bb90
    i8 3, label %sw.bb109
    i8 6, label %sw.bb119
    i8 20, label %sw.bb153
    i8 19, label %if.end45.sw.epilog_crit_edge
  ]

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end45
  %87 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load79 = load i16, ptr %Flags, align 4
  %88 = trunc i32 %attr.1 to i16
  %bf.value = shl i16 %88, 12
  %bf.set = and i16 %bf.load79, 2047
  %bf.shl = or i16 %bf.set, %bf.value
  %bf.set84 = or i16 %bf.shl, 6144
  store i16 %bf.set84, ptr %Flags, align 4
  %add85 = add i32 %ofs.1, 2
  %call86 = tail call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %attr.1, i32 noundef %add85, i32 noundef 4, ptr noundef %LinkOffset.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end45
  %89 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load92 = load i16, ptr %Flags, align 4
  %90 = trunc i32 %attr.1 to i16
  %bf.value98 = shl i16 %90, 12
  %bf.shl99 = and i16 %bf.value98, -8192
  %bf.set94 = and i16 %bf.load92, 2047
  %bf.clear100 = or i16 %bf.shl99, %bf.set94
  %bf.set101 = or i16 %bf.clear100, 2048
  store i16 %bf.set101, ptr %Flags, align 4
  %add103 = add i32 %ofs.1, 2
  %call105 = tail call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %attr.1, i32 noundef %add103, i32 noundef 4, ptr noundef %LinkOffset.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %sw.bb90.sw.epilog_crit_edge, label %sw.bb90.cleanup_crit_edge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb90.sw.epilog_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load111 = load i16, ptr %Flags, align 4
  %bf.set113 = and i16 %bf.load111, 2047
  %bf.set117 = or i16 %bf.set113, -26624
  store i16 %bf.set117, ptr %Flags, align 4
  %92 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %LinkOffset.i, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end45
  %add120 = add i32 %ofs.1, 3
  %93 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add120, ptr %LinkOffset.i, align 4
  %94 = trunc i32 %attr.1 to i16
  %95 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load123 = load i16, ptr %Flags, align 4
  %bf.shl125 = shl i16 %94, 12
  %bf.clear126 = and i16 %bf.load123, 4095
  %bf.set127 = or i16 %bf.clear126, %bf.shl125
  store i16 %bf.set127, ptr %Flags, align 4
  br i1 %cmp129, label %if.then131, label %if.else145

if.then131:                                       ; preds = %sw.bb119
  %add132 = add i32 %ofs.1, 2
  %call133 = call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %attr.1, i32 noundef %add132, i32 noundef 1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.then131.cleanup_crit_edge

if.then131.cleanup_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tmp, align 1
  %98 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load139 = load i16, ptr %Flags, align 4
  %99 = and i8 %97, 7
  %bf.value140 = zext i8 %99 to i16
  %bf.shl141 = shl nuw nsw i16 %bf.value140, 8
  %bf.clear142 = and i16 %bf.load139, -1793
  %bf.set143 = or i16 %bf.shl141, %bf.clear142
  store i16 %bf.set143, ptr %Flags, align 4
  br label %sw.epilog

if.else145:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear148 = and i16 %bf.set127, -1793
  %bf.set149 = or i16 %bf.clear148, 256
  %100 = ptrtoint ptr %Flags to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %bf.set149, ptr %Flags, align 4
  %add151 = add i32 %add120, %mul
  %101 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add151, ptr %LinkOffset.i, align 4
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load155 = load i16, ptr %Flags, align 4
  %bf.clear156 = and i16 %bf.load155, -2049
  store i16 %bf.clear156, ptr %Flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb153, %if.else145, %if.end136, %sw.bb109, %sw.bb90.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge
  %103 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tuple, align 4
  %and158 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %sw.epilog.if.end172_crit_edge, label %land.lhs.true

sw.epilog.if.end172_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

land.lhs.true:                                    ; preds = %sw.epilog
  %105 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %DesiredTuple, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp161 = icmp eq i8 %106, -1
  br i1 %cmp161, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end172_crit_edge

land.lhs.true.if.end172_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else165:                                       ; preds = %if.end45
  %107 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %DesiredTuple, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp168 = icmp eq i8 %108, -1
  br i1 %cmp168, label %if.else165.for.end_crit_edge, label %if.else165.if.end172_crit_edge

if.else165.if.end172_crit_edge:                   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.else165.for.end_crit_edge:                     ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end172:                                        ; preds = %if.else165.if.end172_crit_edge, %land.lhs.true.if.end172_crit_edge, %sw.epilog.if.end172_crit_edge
  %109 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %DesiredTuple, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %110)
  %cmp177 = icmp eq i8 %85, %110
  br i1 %cmp177, label %if.end172.for.end_crit_edge, label %if.end180

if.end172.for.end_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end180:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %1, align 1
  %conv182 = zext i8 %112 to i32
  %add183 = add i32 %ofs.1, 2
  %add184 = add i32 %add183, %conv182
  br label %for.inc

for.inc:                                          ; preds = %if.end180, %if.then22
  %attr.2 = phi i32 [ %attr.1, %if.end180 ], [ %attr.0281, %if.then22 ]
  %ofs.2 = phi i32 [ %add184, %if.end180 ], [ %inc, %if.then22 ]
  %inc185 = add nuw nsw i32 %i.0278, 1
  %exitcond.not = icmp eq i32 %inc185, 200
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %if.end172.for.end_crit_edge, %if.else165.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %i.0278)
  %cmp186 = icmp eq i32 %i.0278, 200
  br i1 %cmp186, label %for.end.do.body_crit_edge, label %if.end196

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pccard_get_next_tuple.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pccard_get_next_tuple, %if.then194)) #9
          to label %cleanup [label %if.then194], !srcloc !95

if.then194:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pccard_get_next_tuple.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end196:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %link, align 1
  %TupleCode = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 5
  %115 = ptrtoint ptr %TupleCode to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %TupleCode, align 4
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %1, align 1
  %118 = ptrtoint ptr %TupleLink to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %TupleLink, align 1
  %add200 = add i32 %ofs.1, 2
  %119 = ptrtoint ptr %CISOffset to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add200, ptr %CISOffset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %if.then194, %do.body, %if.then131.cleanup_crit_edge, %sw.bb90.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %follow_link.exit.cleanup_crit_edge, %follow_link.exit.thread, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end196 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -28, %if.then194 ], [ -28, %follow_link.exit.thread ], [ -28, %do.body ], [ -1, %if.then131.cleanup_crit_edge ], [ -1, %sw.bb90.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %if.end34.cleanup_crit_edge ], [ -28, %follow_link.exit.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_cis_cache(ptr noundef %s, i32 noundef %attr, i32 noundef %addr, i32 noundef %len, ptr nocapture noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fake_cis, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %fake_cis_len = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 11
  %4 = ptrtoint ptr %fake_cis_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fake_cis_len, align 8
  %add = add i32 %len, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.not = icmp ult i32 %5, %add
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  %6 = call ptr @memcpy(ptr %ptr, ptr %add.ptr, i32 %len)
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memset(ptr %ptr, i32 255, i32 %len)
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %cis_cache = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 10
  %8 = ptrtoint ptr %cis_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %cis.090 = load ptr, ptr %cis_cache, align 4
  %cmp10.not91 = icmp eq ptr %cis.090, %cis_cache
  br i1 %cmp10.not91, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %cis.092 = phi ptr [ %cis.0, %for.inc.for.body_crit_edge ], [ %cis.090, %if.end7.for.body_crit_edge ]
  %addr11 = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.092, i32 0, i32 1
  %9 = ptrtoint ptr %addr11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp12 = icmp eq i32 %10, %addr
  br i1 %cmp12, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %len13 = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.092, i32 0, i32 2
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len)
  %cmp14 = icmp eq i32 %12, %len
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %attr16 = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.092, i32 0, i32 3
  %13 = ptrtoint ptr %attr16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %attr)
  %cmp17 = icmp eq i32 %14, %attr
  br i1 %cmp17, label %if.then18, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %cache = getelementptr inbounds %struct.cis_cache_entry, ptr %cis.092, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %ptr, ptr %cache, i32 %len)
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %cis.092 to i32
  call void @__asan_load4_noabort(i32 %16)
  %cis.0 = load ptr, ptr %cis.092, align 4
  %cmp10.not = icmp eq ptr %cis.0, %cis_cache
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call = tail call i32 @pcmcia_read_cis_mem(ptr noundef %s, i32 noundef %attr, i32 noundef %addr, i32 noundef %len, ptr noundef %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %if.end8.i, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %for.end
  %add28 = add i32 %len, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add28, i32 noundef 3264) #15
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.then31

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then31:                                        ; preds = %if.end8.i
  %addr32 = getelementptr inbounds %struct.cis_cache_entry, ptr %call9.i, i32 0, i32 1
  %17 = ptrtoint ptr %addr32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %addr32, align 8
  %len33 = getelementptr inbounds %struct.cis_cache_entry, ptr %call9.i, i32 0, i32 2
  %18 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %len33, align 4
  %attr34 = getelementptr inbounds %struct.cis_cache_entry, ptr %call9.i, i32 0, i32 3
  %19 = ptrtoint ptr %attr34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %attr, ptr %attr34, align 16
  %cache35 = getelementptr inbounds %struct.cis_cache_entry, ptr %call9.i, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %cache35, ptr %ptr, i32 %len)
  %21 = ptrtoint ptr %cis_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cis_cache, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %cis_cache, ptr noundef %22) #9
  br i1 %call.i.i, label %if.end.i.i85, label %if.then31.cleanup.sink.split_crit_edge

if.then31.cleanup.sink.split_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.i85:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cis_cache, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %cis_cache to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call9.i, ptr %cis_cache, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i85, %if.then31.cleanup.sink.split_crit_edge, %if.end8.i.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.then18, %if.else, %if.then3
  %retval.0.ph = phi i32 [ 0, %if.then18 ], [ 0, %if.then3 ], [ -22, %if.else ], [ %call, %if.end.i.i85 ], [ %call, %if.then31.cleanup.sink.split_crit_edge ], [ %call, %if.end8.i.cleanup.sink.split_crit_edge ], [ %call, %for.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pccard_get_tuple_data(ptr noundef %s, ptr nocapture noundef %tuple) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleLink = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 6
  %0 = ptrtoint ptr %TupleLink to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleLink, align 1
  %TupleOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 7
  %2 = ptrtoint ptr %TupleOffset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TupleOffset, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp ult i8 %1, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %4 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp10 = icmp eq i8 %1, %3
  br i1 %cmp10, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %Flags = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 2
  %5 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %Flags, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %bf.clear to i32
  %CISOffset = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 4
  %6 = ptrtoint ptr %CISOffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %CISOffset, align 4
  %add = add i32 %7, %conv1
  %TupleDataMax = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 8
  %8 = ptrtoint ptr %TupleDataMax to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %TupleDataMax, align 1
  %conv16 = zext i8 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv16)
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %11 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %TupleData, align 4
  %call = tail call fastcc i32 @read_cis_cache(ptr noundef nonnull %s, i32 noundef %bf.cast, i32 noundef %add, i32 noundef %10, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp ne i32 %call, 0
  %spec.select = sext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %spec.select, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_parse_tuple(ptr noundef readonly %tuple, ptr noundef %parse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %0 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleDataLen, align 4
  %TupleDataMax = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 8
  %2 = ptrtoint ptr %TupleDataMax to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TupleDataMax, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp ugt i8 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleCode = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 5
  %4 = ptrtoint ptr %TupleCode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TupleCode, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %5, label %if.end.do.body_crit_edge [
    i8 1, label %if.end.sw.bb_crit_edge
    i8 23, label %if.end.sw.bb_crit_edge640
    i8 16, label %sw.bb4
    i8 17, label %if.end.sw.bb6_crit_edge
    i8 18, label %if.end.sw.bb6_crit_edge641
    i8 6, label %sw.bb8
    i8 21, label %sw.bb10
    i8 22, label %sw.bb12
    i8 25, label %if.end.sw.bb14_crit_edge
    i8 24, label %if.end.sw.bb14_crit_edge642
    i8 32, label %sw.bb16
    i8 33, label %sw.bb18
    i8 34, label %sw.bb20
    i8 26, label %sw.bb22
    i8 27, label %sw.bb24
    i8 30, label %if.end.sw.bb26_crit_edge
    i8 31, label %if.end.sw.bb26_crit_edge643
    i8 64, label %sw.bb28
    i8 70, label %sw.bb30
    i8 65, label %if.end.sw.bb32_crit_edge
    i8 71, label %if.end.sw.bb32_crit_edge644
    i8 20, label %if.end.cleanup_crit_edge
    i8 19, label %if.end.cleanup_crit_edge645
  ]

if.end.cleanup_crit_edge645:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb32_crit_edge644:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end.sw.bb26_crit_edge643:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

if.end.sw.bb26_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

if.end.sw.bb14_crit_edge642:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14

if.end.sw.bb6_crit_edge641:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end.sw.bb_crit_edge640:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge640
  %TupleData.i = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %7 = ptrtoint ptr %TupleData.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %TupleData.i, align 4
  %conv.i = zext i8 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  %9 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %parse, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end72.i.for.body.i_crit_edge, %sw.bb
  %p.0133.i = phi ptr [ %8, %sw.bb ], [ %incdec.ptr81.i, %if.end72.i.for.body.i_crit_edge ]
  %i.0131.i = phi i32 [ 0, %sw.bb ], [ %inc86.i, %if.end72.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %p.0133.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p.0133.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp3.i = icmp eq i8 %11, -1
  br i1 %cmp3.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %12 = lshr i8 %11, 4
  %arrayidx.i = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0131.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %p.0133.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %p.0133.i, align 1
  %16 = lshr i8 %15, 3
  %.lobit.i = and i8 %16, 1
  %wp.i = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0131.i, i32 1
  %17 = ptrtoint ptr %wp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.lobit.i, ptr %wp.i, align 1
  %18 = load i8, ptr %p.0133.i, align 1
  %19 = and i8 %18, 7
  %and12.i = zext i8 %19 to i32
  %20 = zext i32 %and12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and12.i, label %if.end.i.do.body_crit_edge [
    i32 0, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb19.i
    i32 3, label %sw.bb23.i
    i32 4, label %sw.bb27.i
    i32 7, label %sw.bb31.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb31.i:                                        ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %p.0133.i, i32 1
  %cmp32.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp32.i, label %sw.bb31.i.do.body_crit_edge, label %if.end35.i

sw.bb31.i.do.body_crit_edge:                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end35.i:                                       ; preds = %sw.bb31.i
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.i, align 1
  %conv36.i = zext i8 %22 to i32
  %23 = lshr i32 %conv36.i, 3
  %and38.i = and i32 %23, 15
  %sub.i = add nsw i32 %and38.i, -1
  %arrayidx39.i = getelementptr [16 x i8], ptr @mantissa, i32 0, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %25 to i32
  %and42.i = and i32 %conv36.i, 7
  %arrayidx43.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and42.i
  %26 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx43.i, align 4
  %mul.i = mul i32 %27, %conv40.i
  %div.i = udiv i32 %mul.i, 10
  %speed46.i = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0131.i, i32 2
  %28 = ptrtoint ptr %speed46.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %speed46.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end35.i
  %p.1.i = phi ptr [ %incdec.ptr.i, %if.end35.i ], [ %incdec.ptr50.i, %while.body.i.while.cond.i_crit_edge ]
  %29 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool49.not.i = icmp sgt i8 %30, -1
  br i1 %tobool49.not.i, label %while.cond.i.sw.epilog.i_crit_edge, label %while.body.i

while.cond.i.sw.epilog.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr50.i = getelementptr i8, ptr %p.1.i, i32 1
  %cmp51.i = icmp eq ptr %incdec.ptr50.i, %add.ptr.i
  br i1 %cmp51.i, label %while.body.i.do.body_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.do.body_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog.sink.split.i:                           ; preds = %sw.bb27.i, %sw.bb23.i, %sw.bb19.i, %sw.bb15.i, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 100, %sw.bb27.i ], [ 150, %sw.bb23.i ], [ 200, %sw.bb19.i ], [ 250, %sw.bb15.i ], [ %and12.i, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %speed30.i = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0131.i, i32 2
  %31 = ptrtoint ptr %speed30.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %speed30.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %while.cond.i.sw.epilog.i_crit_edge
  %p.2.i = phi ptr [ %p.0133.i, %sw.epilog.sink.split.i ], [ %p.1.i, %while.cond.i.sw.epilog.i_crit_edge ]
  %incdec.ptr55.i = getelementptr i8, ptr %p.2.i, i32 1
  %cmp56.i = icmp eq ptr %incdec.ptr55.i, %add.ptr.i
  br i1 %cmp56.i, label %sw.epilog.i.do.body_crit_edge, label %if.end59.i

sw.epilog.i.do.body_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end59.i:                                       ; preds = %sw.epilog.i
  %32 = ptrtoint ptr %incdec.ptr55.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp61.i = icmp eq i8 %33, -1
  br i1 %cmp61.i, label %if.end59.i.cleanup_crit_edge, label %if.end64.i

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64.i:                                       ; preds = %if.end59.i
  %and66.i = and i8 %33, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and66.i)
  %cmp69.i = icmp eq i8 %and66.i, 7
  br i1 %cmp69.i, label %if.end64.i.do.body_crit_edge, label %if.end72.i

if.end64.i.do.body_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end72.i:                                       ; preds = %if.end64.i
  %34 = lshr i8 %33, 3
  %narrow.i = add nuw nsw i8 %34, 1
  %add.i = zext i8 %narrow.i to i32
  %35 = shl nuw nsw i8 %and66.i, 1
  %mul76.i = zext i8 %35 to i32
  %shl.i = shl nuw nsw i32 512, %mul76.i
  %mul77.i = mul nuw nsw i32 %shl.i, %add.i
  %size.i = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0131.i, i32 3
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul77.i, ptr %size.i, align 4
  %37 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %parse, align 4
  %inc.i = add i8 %38, 1
  store i8 %inc.i, ptr %parse, align 4
  %incdec.ptr81.i = getelementptr i8, ptr %p.2.i, i32 2
  %cmp82.i = icmp eq ptr %incdec.ptr81.i, %add.ptr.i
  %inc86.i = add nuw nsw i32 %i.0131.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc86.i)
  %exitcond.not.i = icmp eq i32 %inc86.i, 4
  %or.cond.i = select i1 %cmp82.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end72.i.cleanup_crit_edge, label %if.end72.i.for.body.i_crit_edge

if.end72.i.for.body.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.i = icmp ult i8 %1, 5
  br i1 %cmp.i, label %sw.bb4.do.body_crit_edge, label %if.end.i82

sw.bb4.do.body_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i82:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %TupleData.i80 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %39 = ptrtoint ptr %TupleData.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %TupleData.i80, align 4
  %CISOffset.i = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 4
  %41 = ptrtoint ptr %CISOffset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %CISOffset.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %40, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #9
  %46 = trunc i32 %42 to i16
  %47 = add i16 %46, -2
  %conv3.i = add i16 %47, %45
  %48 = ptrtoint ptr %parse to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv3.i, ptr %parse, align 2
  %add.ptr.i81 = getelementptr i8, ptr %40, i32 2
  %49 = ptrtoint ptr %add.ptr.i81 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr.i81, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  %len.i = getelementptr inbounds %struct.cistpl_checksum_t, ptr %parse, i32 0, i32 1
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %len.i, align 2
  %add.ptr5.i = getelementptr i8, ptr %40, i32 4
  %53 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr5.i, align 1
  %sum.i = getelementptr inbounds %struct.cistpl_checksum_t, ptr %parse, i32 0, i32 2
  %55 = ptrtoint ptr %sum.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %sum.i, align 2
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge641
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.i85 = icmp ult i8 %1, 4
  br i1 %cmp.i85, label %sw.bb6.do.body_crit_edge, label %if.end.i87

sw.bb6.do.body_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i87:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %TupleData.i86 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %56 = ptrtoint ptr %TupleData.i86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %TupleData.i86, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %57, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %61 = ptrtoint ptr %parse to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %parse, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %TupleData.i89 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %62 = ptrtoint ptr %TupleData.i89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %TupleData.i89, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %66 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %parse, align 4
  %67 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %TupleDataLen, align 4
  %conv.i91 = zext i8 %68 to i32
  %conv2.i = zext i8 %65 to i32
  %mul.i92 = mul nuw nsw i32 %conv2.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i92, i32 %conv.i91)
  %cmp.not.i = icmp ult i32 %mul.i92, %conv.i91
  br i1 %cmp.not.i, label %if.end.i93, label %sw.bb8.do.body_crit_edge

sw.bb8.do.body_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i93:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp626.not.i = icmp eq i8 %65, 0
  br i1 %cmp626.not.i, label %if.end.i93.cleanup_crit_edge, label %for.body.preheader.i

if.end.i93.cleanup_crit_edge:                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i93
  %incdec.ptr.i94 = getelementptr i8, ptr %63, i32 1
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i97, %for.body.i98.for.body.i98_crit_edge ], [ 0, %for.body.preheader.i ]
  %p.027.i = phi ptr [ %add.ptr.i96, %for.body.i98.for.body.i98_crit_edge ], [ %incdec.ptr.i94, %for.body.preheader.i ]
  %69 = ptrtoint ptr %p.027.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %p.027.i, align 1
  %arrayidx.i95 = getelementptr %struct.cistpl_longlink_mfc_t, ptr %parse, i32 0, i32 1, i32 %i.028.i
  %71 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx.i95, align 4
  %incdec.ptr8.i = getelementptr i8, ptr %p.027.i, i32 1
  %72 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %incdec.ptr8.i, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  %addr.i = getelementptr %struct.cistpl_longlink_mfc_t, ptr %parse, i32 0, i32 1, i32 %i.028.i, i32 1
  %75 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %addr.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %p.027.i, i32 5
  %inc.i97 = add nuw nsw i32 %i.028.i, 1
  %76 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %parse, align 4
  %conv5.i = zext i8 %77 to i32
  %cmp6.i = icmp ult i32 %inc.i97, %conv5.i
  br i1 %cmp6.i, label %for.body.i98.for.body.i98_crit_edge, label %for.body.i98.cleanup_crit_edge

for.body.i98.cleanup_crit_edge:                   ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i98

sw.bb10:                                          ; preds = %if.end
  %TupleData.i100 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %78 = ptrtoint ptr %TupleData.i100 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %TupleData.i100, align 4
  %conv.i102 = zext i8 %1 to i32
  %add.ptr.i103 = getelementptr i8, ptr %79, i32 %conv.i102
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %82 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %parse, align 1
  %incdec.ptr.i104 = getelementptr i8, ptr %79, i32 1
  %83 = ptrtoint ptr %incdec.ptr.i104 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr.i104, align 1
  %minor.i = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 1
  %85 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %minor.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %79, i32 2
  %cmp.not.i105 = icmp ult ptr %incdec.ptr1.i, %add.ptr.i103
  br i1 %cmp.not.i105, label %for.cond.preheader.i.i, label %sw.bb10.do.body_crit_edge

sw.bb10.do.body_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.preheader.i.i:                           ; preds = %sw.bb10
  %str.i = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 4
  %ns.i = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 2
  %86 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %87)
  %cmp2.i.i = icmp eq i8 %87, -1
  br i1 %cmp2.i.i, label %for.cond.preheader.i.i.for.end37.i.i_crit_edge, label %if.end5.i.i

for.cond.preheader.i.i.for.end37.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

for.cond.i.i:                                     ; preds = %lor.lhs.false30.i.i
  %88 = ptrtoint ptr %incdec.ptr31.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr31.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp2.i.1.i = icmp eq i8 %89, -1
  br i1 %cmp2.i.1.i, label %for.cond.i.i.for.end37.i.i_crit_edge, label %if.end5.i.1.i

for.cond.i.i.for.end37.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

if.end5.i.1.i:                                    ; preds = %for.cond.i.i
  %conv6.i.1.i = trunc i32 %inc13.i.i to i8
  %arrayidx.i.1.i = getelementptr %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv6.i.1.i, ptr %arrayidx.i.1.i, align 1
  br label %for.cond7.i.1.i

for.cond7.i.1.i:                                  ; preds = %if.end22.i.1.i.for.cond7.i.1.i_crit_edge, %if.end5.i.1.i
  %p.addr.1.i.1.i = phi ptr [ %incdec.ptr31.i.i, %if.end5.i.1.i ], [ %incdec.ptr.i.1.i, %if.end22.i.1.i.for.cond7.i.1.i_crit_edge ]
  %j.1.i.1.i = phi i32 [ %inc13.i.i, %if.end5.i.1.i ], [ %inc13.i.1.i, %if.end22.i.1.i.for.cond7.i.1.i_crit_edge ]
  %91 = ptrtoint ptr %p.addr.1.i.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %p.addr.1.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp9.i.1.i = icmp eq i8 %92, -1
  %spec.select.i.1.i = select i1 %cmp9.i.1.i, i8 0, i8 %92
  %inc13.i.1.i = add i32 %j.1.i.1.i, 1
  %arrayidx14.i.1.i = getelementptr i8, ptr %str.i, i32 %j.1.i.1.i
  %93 = ptrtoint ptr %arrayidx14.i.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select.i.1.i, ptr %arrayidx14.i.1.i, align 1
  %94 = ptrtoint ptr %p.addr.1.i.1.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %p.addr.1.i.1.i, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %95, label %if.end22.i.1.i [
    i8 -1, label %for.cond7.i.1.i.for.end37.i.i_crit_edge
    i8 0, label %lor.lhs.false30.i.1.i
  ]

for.cond7.i.1.i.for.end37.i.i_crit_edge:          ; preds = %for.cond7.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

lor.lhs.false30.i.1.i:                            ; preds = %for.cond7.i.1.i
  %incdec.ptr31.i.1.i = getelementptr i8, ptr %p.addr.1.i.1.i, i32 1
  %cmp32.i.1.i = icmp eq ptr %incdec.ptr31.i.1.i, %add.ptr.i103
  br i1 %cmp32.i.1.i, label %lor.lhs.false30.i.1.i.for.end37.i.i_crit_edge, label %for.cond.i.1.i

lor.lhs.false30.i.1.i.for.end37.i.i_crit_edge:    ; preds = %lor.lhs.false30.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

for.cond.i.1.i:                                   ; preds = %lor.lhs.false30.i.1.i
  %97 = ptrtoint ptr %incdec.ptr31.i.1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %incdec.ptr31.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %cmp2.i.2.i = icmp eq i8 %98, -1
  br i1 %cmp2.i.2.i, label %for.cond.i.1.i.for.end37.i.i_crit_edge, label %if.end5.i.2.i

for.cond.i.1.i.for.end37.i.i_crit_edge:           ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

if.end22.i.1.i:                                   ; preds = %for.cond7.i.1.i
  %incdec.ptr.i.1.i = getelementptr i8, ptr %p.addr.1.i.1.i, i32 1
  %cmp23.i.1.i = icmp eq ptr %incdec.ptr.i.1.i, %add.ptr.i103
  br i1 %cmp23.i.1.i, label %if.end22.i.1.i.do.body_crit_edge, label %if.end22.i.1.i.for.cond7.i.1.i_crit_edge

if.end22.i.1.i.for.cond7.i.1.i_crit_edge:         ; preds = %if.end22.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.1.i

if.end22.i.1.i.do.body_crit_edge:                 ; preds = %if.end22.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.2.i:                                    ; preds = %for.cond.i.1.i
  %conv6.i.2.i = trunc i32 %inc13.i.1.i to i8
  %arrayidx.i.2.i = getelementptr %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 3, i32 2
  %99 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv6.i.2.i, ptr %arrayidx.i.2.i, align 1
  br label %for.cond7.i.2.i

for.cond7.i.2.i:                                  ; preds = %if.end22.i.2.i.for.cond7.i.2.i_crit_edge, %if.end5.i.2.i
  %p.addr.1.i.2.i = phi ptr [ %incdec.ptr31.i.1.i, %if.end5.i.2.i ], [ %incdec.ptr.i.2.i, %if.end22.i.2.i.for.cond7.i.2.i_crit_edge ]
  %j.1.i.2.i = phi i32 [ %inc13.i.1.i, %if.end5.i.2.i ], [ %inc13.i.2.i, %if.end22.i.2.i.for.cond7.i.2.i_crit_edge ]
  %100 = ptrtoint ptr %p.addr.1.i.2.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %p.addr.1.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp9.i.2.i = icmp eq i8 %101, -1
  %spec.select.i.2.i = select i1 %cmp9.i.2.i, i8 0, i8 %101
  %inc13.i.2.i = add i32 %j.1.i.2.i, 1
  %arrayidx14.i.2.i = getelementptr i8, ptr %str.i, i32 %j.1.i.2.i
  %102 = ptrtoint ptr %arrayidx14.i.2.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %spec.select.i.2.i, ptr %arrayidx14.i.2.i, align 1
  %103 = ptrtoint ptr %p.addr.1.i.2.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %p.addr.1.i.2.i, align 1
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %104, label %if.end22.i.2.i [
    i8 -1, label %for.cond7.i.2.i.for.end37.i.i_crit_edge
    i8 0, label %lor.lhs.false30.i.2.i
  ]

for.cond7.i.2.i.for.end37.i.i_crit_edge:          ; preds = %for.cond7.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

lor.lhs.false30.i.2.i:                            ; preds = %for.cond7.i.2.i
  %incdec.ptr31.i.2.i = getelementptr i8, ptr %p.addr.1.i.2.i, i32 1
  %cmp32.i.2.i = icmp eq ptr %incdec.ptr31.i.2.i, %add.ptr.i103
  br i1 %cmp32.i.2.i, label %lor.lhs.false30.i.2.i.for.end37.i.i_crit_edge, label %for.cond.i.2.i

lor.lhs.false30.i.2.i.for.end37.i.i_crit_edge:    ; preds = %lor.lhs.false30.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

for.cond.i.2.i:                                   ; preds = %lor.lhs.false30.i.2.i
  %106 = ptrtoint ptr %incdec.ptr31.i.2.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %incdec.ptr31.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp2.i.3.i = icmp eq i8 %107, -1
  br i1 %cmp2.i.3.i, label %for.cond.i.2.i.for.end37.i.i_crit_edge, label %if.end5.i.3.i

for.cond.i.2.i.for.end37.i.i_crit_edge:           ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

if.end22.i.2.i:                                   ; preds = %for.cond7.i.2.i
  %incdec.ptr.i.2.i = getelementptr i8, ptr %p.addr.1.i.2.i, i32 1
  %cmp23.i.2.i = icmp eq ptr %incdec.ptr.i.2.i, %add.ptr.i103
  br i1 %cmp23.i.2.i, label %if.end22.i.2.i.do.body_crit_edge, label %if.end22.i.2.i.for.cond7.i.2.i_crit_edge

if.end22.i.2.i.for.cond7.i.2.i_crit_edge:         ; preds = %if.end22.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.2.i

if.end22.i.2.i.do.body_crit_edge:                 ; preds = %if.end22.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.3.i:                                    ; preds = %for.cond.i.2.i
  %conv6.i.3.i = trunc i32 %inc13.i.2.i to i8
  %arrayidx.i.3.i = getelementptr %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 3, i32 3
  %108 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv6.i.3.i, ptr %arrayidx.i.3.i, align 1
  br label %for.cond7.i.3.i

for.cond7.i.3.i:                                  ; preds = %if.end22.i.3.i.for.cond7.i.3.i_crit_edge, %if.end5.i.3.i
  %p.addr.1.i.3.i = phi ptr [ %incdec.ptr31.i.2.i, %if.end5.i.3.i ], [ %incdec.ptr.i.3.i, %if.end22.i.3.i.for.cond7.i.3.i_crit_edge ]
  %j.1.i.3.i = phi i32 [ %inc13.i.2.i, %if.end5.i.3.i ], [ %inc13.i.3.i, %if.end22.i.3.i.for.cond7.i.3.i_crit_edge ]
  %109 = ptrtoint ptr %p.addr.1.i.3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %p.addr.1.i.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %110)
  %cmp9.i.3.i = icmp eq i8 %110, -1
  %spec.select.i.3.i = select i1 %cmp9.i.3.i, i8 0, i8 %110
  %arrayidx14.i.3.i = getelementptr i8, ptr %str.i, i32 %j.1.i.3.i
  %111 = ptrtoint ptr %arrayidx14.i.3.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %spec.select.i.3.i, ptr %arrayidx14.i.3.i, align 1
  %112 = ptrtoint ptr %p.addr.1.i.3.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %p.addr.1.i.3.i, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %113, label %if.end22.i.3.i [
    i8 -1, label %for.cond7.i.3.i.for.end37.i.i_crit_edge
    i8 0, label %for.cond7.i.3.i.for.end37.i.i_crit_edge646
  ]

for.cond7.i.3.i.for.end37.i.i_crit_edge646:       ; preds = %for.cond7.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

for.cond7.i.3.i.for.end37.i.i_crit_edge:          ; preds = %for.cond7.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

if.end22.i.3.i:                                   ; preds = %for.cond7.i.3.i
  %inc13.i.3.i = add i32 %j.1.i.3.i, 1
  %incdec.ptr.i.3.i = getelementptr i8, ptr %p.addr.1.i.3.i, i32 1
  %cmp23.i.3.i = icmp eq ptr %incdec.ptr.i.3.i, %add.ptr.i103
  br i1 %cmp23.i.3.i, label %if.end22.i.3.i.do.body_crit_edge, label %if.end22.i.3.i.for.cond7.i.3.i_crit_edge

if.end22.i.3.i.for.cond7.i.3.i_crit_edge:         ; preds = %if.end22.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.3.i

if.end22.i.3.i.do.body_crit_edge:                 ; preds = %if.end22.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.i:                                      ; preds = %for.cond.preheader.i.i
  %ofs.i = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 3
  %115 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %ofs.i, align 1
  br label %for.cond7.i.i

for.cond7.i.i:                                    ; preds = %if.end22.i.i.for.cond7.i.i_crit_edge, %if.end5.i.i
  %p.addr.1.i.i = phi ptr [ %incdec.ptr1.i, %if.end5.i.i ], [ %incdec.ptr.i.i, %if.end22.i.i.for.cond7.i.i_crit_edge ]
  %j.1.i.i = phi i32 [ 0, %if.end5.i.i ], [ %inc13.i.i, %if.end22.i.i.for.cond7.i.i_crit_edge ]
  %116 = ptrtoint ptr %p.addr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %p.addr.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %cmp9.i.i = icmp eq i8 %117, -1
  %spec.select.i.i = select i1 %cmp9.i.i, i8 0, i8 %117
  %inc13.i.i = add i32 %j.1.i.i, 1
  %arrayidx14.i.i = getelementptr i8, ptr %str.i, i32 %j.1.i.i
  %118 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %spec.select.i.i, ptr %arrayidx14.i.i, align 1
  %119 = ptrtoint ptr %p.addr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %p.addr.1.i.i, align 1
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %120, label %if.end22.i.i [
    i8 -1, label %for.cond7.i.i.for.end37.i.i_crit_edge
    i8 0, label %lor.lhs.false30.i.i
  ]

for.cond7.i.i.for.end37.i.i_crit_edge:            ; preds = %for.cond7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

if.end22.i.i:                                     ; preds = %for.cond7.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %p.addr.1.i.i, i32 1
  %cmp23.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i103
  br i1 %cmp23.i.i, label %if.end22.i.i.do.body_crit_edge, label %if.end22.i.i.for.cond7.i.i_crit_edge

if.end22.i.i.for.cond7.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.i

if.end22.i.i.do.body_crit_edge:                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false30.i.i:                              ; preds = %for.cond7.i.i
  %incdec.ptr31.i.i = getelementptr i8, ptr %p.addr.1.i.i, i32 1
  %cmp32.i.i = icmp eq ptr %incdec.ptr31.i.i, %add.ptr.i103
  br i1 %cmp32.i.i, label %lor.lhs.false30.i.i.for.end37.i.i_crit_edge, label %for.cond.i.i

lor.lhs.false30.i.i.for.end37.i.i_crit_edge:      ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i

for.end37.i.i:                                    ; preds = %lor.lhs.false30.i.i.for.end37.i.i_crit_edge, %for.cond7.i.i.for.end37.i.i_crit_edge, %for.cond7.i.3.i.for.end37.i.i_crit_edge, %for.cond7.i.3.i.for.end37.i.i_crit_edge646, %for.cond.i.2.i.for.end37.i.i_crit_edge, %lor.lhs.false30.i.2.i.for.end37.i.i_crit_edge, %for.cond7.i.2.i.for.end37.i.i_crit_edge, %for.cond.i.1.i.for.end37.i.i_crit_edge, %lor.lhs.false30.i.1.i.for.end37.i.i_crit_edge, %for.cond7.i.1.i.for.end37.i.i_crit_edge, %for.cond.i.i.for.end37.i.i_crit_edge, %for.cond.preheader.i.i.for.end37.i.i_crit_edge
  %ns.1.i.i = phi i8 [ 1, %lor.lhs.false30.i.i.for.end37.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.end37.i.i_crit_edge ], [ 1, %for.cond.i.i.for.end37.i.i_crit_edge ], [ 2, %lor.lhs.false30.i.1.i.for.end37.i.i_crit_edge ], [ 2, %for.cond.i.1.i.for.end37.i.i_crit_edge ], [ 3, %lor.lhs.false30.i.2.i.for.end37.i.i_crit_edge ], [ 3, %for.cond.i.2.i.for.end37.i.i_crit_edge ], [ 4, %for.cond7.i.3.i.for.end37.i.i_crit_edge ], [ 4, %for.cond7.i.3.i.for.end37.i.i_crit_edge646 ], [ 3, %for.cond7.i.2.i.for.end37.i.i_crit_edge ], [ 2, %for.cond7.i.1.i.for.end37.i.i_crit_edge ], [ 1, %for.cond7.i.i.for.end37.i.i_crit_edge ]
  %122 = ptrtoint ptr %ns.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %ns.1.i.i, ptr %ns.i, align 1
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %TupleData.i107 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %123 = ptrtoint ptr %TupleData.i107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %TupleData.i107, align 4
  %conv.i109 = zext i8 %1 to i32
  %add.ptr.i110 = getelementptr i8, ptr %124, i32 %conv.i109
  %str.i111 = getelementptr inbounds %struct.cistpl_altstr_t, ptr %parse, i32 0, i32 2
  %ofs.i112 = getelementptr inbounds %struct.cistpl_altstr_t, ptr %parse, i32 0, i32 1
  %cmp.i.i = icmp eq ptr %124, %add.ptr.i110
  br i1 %cmp.i.i, label %sw.bb12.do.body_crit_edge, label %for.body.i.preheader.i

sw.bb12.do.body_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.i.preheader.i:                           ; preds = %sw.bb12
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp2.i.i113 = icmp eq i8 %126, -1
  br i1 %cmp2.i.i113, label %for.body.i.preheader.i.for.end37.i.i181_crit_edge, label %if.end5.i.i165

for.body.i.preheader.i.for.end37.i.i181_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

for.cond.i.i115:                                  ; preds = %lor.lhs.false30.i.i178
  %127 = ptrtoint ptr %incdec.ptr31.i.i176 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %incdec.ptr31.i.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %128)
  %cmp2.i.1.i114 = icmp eq i8 %128, -1
  br i1 %cmp2.i.1.i114, label %for.cond.i.i115.for.end37.i.i181_crit_edge, label %if.end5.i.1.i118

for.cond.i.i115.for.end37.i.i181_crit_edge:       ; preds = %for.cond.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

if.end5.i.1.i118:                                 ; preds = %for.cond.i.i115
  %conv6.i.1.i116 = trunc i32 %inc13.i.i170 to i8
  %arrayidx.i.1.i117 = getelementptr %struct.cistpl_altstr_t, ptr %parse, i32 0, i32 1, i32 1
  %129 = ptrtoint ptr %arrayidx.i.1.i117 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv6.i.1.i116, ptr %arrayidx.i.1.i117, align 1
  br label %for.cond7.i.1.i125

for.cond7.i.1.i125:                               ; preds = %if.end22.i.1.i133.for.cond7.i.1.i125_crit_edge, %if.end5.i.1.i118
  %p.addr.1.i.1.i119 = phi ptr [ %incdec.ptr31.i.i176, %if.end5.i.1.i118 ], [ %incdec.ptr.i.1.i131, %if.end22.i.1.i133.for.cond7.i.1.i125_crit_edge ]
  %j.1.i.1.i120 = phi i32 [ %inc13.i.i170, %if.end5.i.1.i118 ], [ %inc13.i.1.i123, %if.end22.i.1.i133.for.cond7.i.1.i125_crit_edge ]
  %130 = ptrtoint ptr %p.addr.1.i.1.i119 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %p.addr.1.i.1.i119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %131)
  %cmp9.i.1.i121 = icmp eq i8 %131, -1
  %spec.select.i.1.i122 = select i1 %cmp9.i.1.i121, i8 0, i8 %131
  %inc13.i.1.i123 = add i32 %j.1.i.1.i120, 1
  %arrayidx14.i.1.i124 = getelementptr i8, ptr %str.i111, i32 %j.1.i.1.i120
  %132 = ptrtoint ptr %arrayidx14.i.1.i124 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %spec.select.i.1.i122, ptr %arrayidx14.i.1.i124, align 1
  %133 = ptrtoint ptr %p.addr.1.i.1.i119 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %p.addr.1.i.1.i119, align 1
  %135 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %134, label %if.end22.i.1.i133 [
    i8 -1, label %for.cond7.i.1.i125.for.end37.i.i181_crit_edge
    i8 0, label %lor.lhs.false30.i.1.i128
  ]

for.cond7.i.1.i125.for.end37.i.i181_crit_edge:    ; preds = %for.cond7.i.1.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

lor.lhs.false30.i.1.i128:                         ; preds = %for.cond7.i.1.i125
  %incdec.ptr31.i.1.i126 = getelementptr i8, ptr %p.addr.1.i.1.i119, i32 1
  %cmp32.i.1.i127 = icmp eq ptr %incdec.ptr31.i.1.i126, %add.ptr.i110
  br i1 %cmp32.i.1.i127, label %lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge, label %for.cond.i.1.i130

lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge: ; preds = %lor.lhs.false30.i.1.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

for.cond.i.1.i130:                                ; preds = %lor.lhs.false30.i.1.i128
  %136 = ptrtoint ptr %incdec.ptr31.i.1.i126 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %incdec.ptr31.i.1.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %cmp2.i.2.i129 = icmp eq i8 %137, -1
  br i1 %cmp2.i.2.i129, label %for.cond.i.1.i130.for.end37.i.i181_crit_edge, label %if.end5.i.2.i136

for.cond.i.1.i130.for.end37.i.i181_crit_edge:     ; preds = %for.cond.i.1.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

if.end22.i.1.i133:                                ; preds = %for.cond7.i.1.i125
  %incdec.ptr.i.1.i131 = getelementptr i8, ptr %p.addr.1.i.1.i119, i32 1
  %cmp23.i.1.i132 = icmp eq ptr %incdec.ptr.i.1.i131, %add.ptr.i110
  br i1 %cmp23.i.1.i132, label %if.end22.i.1.i133.do.body_crit_edge, label %if.end22.i.1.i133.for.cond7.i.1.i125_crit_edge

if.end22.i.1.i133.for.cond7.i.1.i125_crit_edge:   ; preds = %if.end22.i.1.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.1.i125

if.end22.i.1.i133.do.body_crit_edge:              ; preds = %if.end22.i.1.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.2.i136:                                 ; preds = %for.cond.i.1.i130
  %conv6.i.2.i134 = trunc i32 %inc13.i.1.i123 to i8
  %arrayidx.i.2.i135 = getelementptr %struct.cistpl_altstr_t, ptr %parse, i32 0, i32 1, i32 2
  %138 = ptrtoint ptr %arrayidx.i.2.i135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv6.i.2.i134, ptr %arrayidx.i.2.i135, align 1
  br label %for.cond7.i.2.i143

for.cond7.i.2.i143:                               ; preds = %if.end22.i.2.i151.for.cond7.i.2.i143_crit_edge, %if.end5.i.2.i136
  %p.addr.1.i.2.i137 = phi ptr [ %incdec.ptr31.i.1.i126, %if.end5.i.2.i136 ], [ %incdec.ptr.i.2.i149, %if.end22.i.2.i151.for.cond7.i.2.i143_crit_edge ]
  %j.1.i.2.i138 = phi i32 [ %inc13.i.1.i123, %if.end5.i.2.i136 ], [ %inc13.i.2.i141, %if.end22.i.2.i151.for.cond7.i.2.i143_crit_edge ]
  %139 = ptrtoint ptr %p.addr.1.i.2.i137 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %p.addr.1.i.2.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %140)
  %cmp9.i.2.i139 = icmp eq i8 %140, -1
  %spec.select.i.2.i140 = select i1 %cmp9.i.2.i139, i8 0, i8 %140
  %inc13.i.2.i141 = add i32 %j.1.i.2.i138, 1
  %arrayidx14.i.2.i142 = getelementptr i8, ptr %str.i111, i32 %j.1.i.2.i138
  %141 = ptrtoint ptr %arrayidx14.i.2.i142 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %spec.select.i.2.i140, ptr %arrayidx14.i.2.i142, align 1
  %142 = ptrtoint ptr %p.addr.1.i.2.i137 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %p.addr.1.i.2.i137, align 1
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %143, label %if.end22.i.2.i151 [
    i8 -1, label %for.cond7.i.2.i143.for.end37.i.i181_crit_edge
    i8 0, label %lor.lhs.false30.i.2.i146
  ]

for.cond7.i.2.i143.for.end37.i.i181_crit_edge:    ; preds = %for.cond7.i.2.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

lor.lhs.false30.i.2.i146:                         ; preds = %for.cond7.i.2.i143
  %incdec.ptr31.i.2.i144 = getelementptr i8, ptr %p.addr.1.i.2.i137, i32 1
  %cmp32.i.2.i145 = icmp eq ptr %incdec.ptr31.i.2.i144, %add.ptr.i110
  br i1 %cmp32.i.2.i145, label %lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge, label %for.cond.i.2.i148

lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge: ; preds = %lor.lhs.false30.i.2.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

for.cond.i.2.i148:                                ; preds = %lor.lhs.false30.i.2.i146
  %145 = ptrtoint ptr %incdec.ptr31.i.2.i144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %incdec.ptr31.i.2.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %146)
  %cmp2.i.3.i147 = icmp eq i8 %146, -1
  br i1 %cmp2.i.3.i147, label %for.cond.i.2.i148.for.end37.i.i181_crit_edge, label %if.end5.i.3.i154

for.cond.i.2.i148.for.end37.i.i181_crit_edge:     ; preds = %for.cond.i.2.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

if.end22.i.2.i151:                                ; preds = %for.cond7.i.2.i143
  %incdec.ptr.i.2.i149 = getelementptr i8, ptr %p.addr.1.i.2.i137, i32 1
  %cmp23.i.2.i150 = icmp eq ptr %incdec.ptr.i.2.i149, %add.ptr.i110
  br i1 %cmp23.i.2.i150, label %if.end22.i.2.i151.do.body_crit_edge, label %if.end22.i.2.i151.for.cond7.i.2.i143_crit_edge

if.end22.i.2.i151.for.cond7.i.2.i143_crit_edge:   ; preds = %if.end22.i.2.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.2.i143

if.end22.i.2.i151.do.body_crit_edge:              ; preds = %if.end22.i.2.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.3.i154:                                 ; preds = %for.cond.i.2.i148
  %conv6.i.3.i152 = trunc i32 %inc13.i.2.i141 to i8
  %arrayidx.i.3.i153 = getelementptr %struct.cistpl_altstr_t, ptr %parse, i32 0, i32 1, i32 3
  %147 = ptrtoint ptr %arrayidx.i.3.i153 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv6.i.3.i152, ptr %arrayidx.i.3.i153, align 1
  br label %for.cond7.i.3.i160

for.cond7.i.3.i160:                               ; preds = %if.end22.i.3.i164.for.cond7.i.3.i160_crit_edge, %if.end5.i.3.i154
  %p.addr.1.i.3.i155 = phi ptr [ %incdec.ptr31.i.2.i144, %if.end5.i.3.i154 ], [ %incdec.ptr.i.3.i162, %if.end22.i.3.i164.for.cond7.i.3.i160_crit_edge ]
  %j.1.i.3.i156 = phi i32 [ %inc13.i.2.i141, %if.end5.i.3.i154 ], [ %inc13.i.3.i161, %if.end22.i.3.i164.for.cond7.i.3.i160_crit_edge ]
  %148 = ptrtoint ptr %p.addr.1.i.3.i155 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %p.addr.1.i.3.i155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %149)
  %cmp9.i.3.i157 = icmp eq i8 %149, -1
  %spec.select.i.3.i158 = select i1 %cmp9.i.3.i157, i8 0, i8 %149
  %arrayidx14.i.3.i159 = getelementptr i8, ptr %str.i111, i32 %j.1.i.3.i156
  %150 = ptrtoint ptr %arrayidx14.i.3.i159 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %spec.select.i.3.i158, ptr %arrayidx14.i.3.i159, align 1
  %151 = ptrtoint ptr %p.addr.1.i.3.i155 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %p.addr.1.i.3.i155, align 1
  %153 = zext i8 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %152, label %if.end22.i.3.i164 [
    i8 -1, label %for.cond7.i.3.i160.for.end37.i.i181_crit_edge
    i8 0, label %for.cond7.i.3.i160.for.end37.i.i181_crit_edge647
  ]

for.cond7.i.3.i160.for.end37.i.i181_crit_edge647: ; preds = %for.cond7.i.3.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

for.cond7.i.3.i160.for.end37.i.i181_crit_edge:    ; preds = %for.cond7.i.3.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

if.end22.i.3.i164:                                ; preds = %for.cond7.i.3.i160
  %inc13.i.3.i161 = add i32 %j.1.i.3.i156, 1
  %incdec.ptr.i.3.i162 = getelementptr i8, ptr %p.addr.1.i.3.i155, i32 1
  %cmp23.i.3.i163 = icmp eq ptr %incdec.ptr.i.3.i162, %add.ptr.i110
  br i1 %cmp23.i.3.i163, label %if.end22.i.3.i164.do.body_crit_edge, label %if.end22.i.3.i164.for.cond7.i.3.i160_crit_edge

if.end22.i.3.i164.for.cond7.i.3.i160_crit_edge:   ; preds = %if.end22.i.3.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.3.i160

if.end22.i.3.i164.do.body_crit_edge:              ; preds = %if.end22.i.3.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.i165:                                   ; preds = %for.body.i.preheader.i
  %154 = ptrtoint ptr %ofs.i112 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %ofs.i112, align 1
  br label %for.cond7.i.i172

for.cond7.i.i172:                                 ; preds = %if.end22.i.i175.for.cond7.i.i172_crit_edge, %if.end5.i.i165
  %p.addr.1.i.i166 = phi ptr [ %124, %if.end5.i.i165 ], [ %incdec.ptr.i.i173, %if.end22.i.i175.for.cond7.i.i172_crit_edge ]
  %j.1.i.i167 = phi i32 [ 0, %if.end5.i.i165 ], [ %inc13.i.i170, %if.end22.i.i175.for.cond7.i.i172_crit_edge ]
  %155 = ptrtoint ptr %p.addr.1.i.i166 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %p.addr.1.i.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %156)
  %cmp9.i.i168 = icmp eq i8 %156, -1
  %spec.select.i.i169 = select i1 %cmp9.i.i168, i8 0, i8 %156
  %inc13.i.i170 = add i32 %j.1.i.i167, 1
  %arrayidx14.i.i171 = getelementptr i8, ptr %str.i111, i32 %j.1.i.i167
  %157 = ptrtoint ptr %arrayidx14.i.i171 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %spec.select.i.i169, ptr %arrayidx14.i.i171, align 1
  %158 = ptrtoint ptr %p.addr.1.i.i166 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %p.addr.1.i.i166, align 1
  %160 = zext i8 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %159, label %if.end22.i.i175 [
    i8 -1, label %for.cond7.i.i172.for.end37.i.i181_crit_edge
    i8 0, label %lor.lhs.false30.i.i178
  ]

for.cond7.i.i172.for.end37.i.i181_crit_edge:      ; preds = %for.cond7.i.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

if.end22.i.i175:                                  ; preds = %for.cond7.i.i172
  %incdec.ptr.i.i173 = getelementptr i8, ptr %p.addr.1.i.i166, i32 1
  %cmp23.i.i174 = icmp eq ptr %incdec.ptr.i.i173, %add.ptr.i110
  br i1 %cmp23.i.i174, label %if.end22.i.i175.do.body_crit_edge, label %if.end22.i.i175.for.cond7.i.i172_crit_edge

if.end22.i.i175.for.cond7.i.i172_crit_edge:       ; preds = %if.end22.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.i172

if.end22.i.i175.do.body_crit_edge:                ; preds = %if.end22.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false30.i.i178:                           ; preds = %for.cond7.i.i172
  %incdec.ptr31.i.i176 = getelementptr i8, ptr %p.addr.1.i.i166, i32 1
  %cmp32.i.i177 = icmp eq ptr %incdec.ptr31.i.i176, %add.ptr.i110
  br i1 %cmp32.i.i177, label %lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge, label %for.cond.i.i115

lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge: ; preds = %lor.lhs.false30.i.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i181

for.end37.i.i181:                                 ; preds = %lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge, %for.cond7.i.i172.for.end37.i.i181_crit_edge, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge647, %for.cond.i.2.i148.for.end37.i.i181_crit_edge, %lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge, %for.cond7.i.2.i143.for.end37.i.i181_crit_edge, %for.cond.i.1.i130.for.end37.i.i181_crit_edge, %lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge, %for.cond7.i.1.i125.for.end37.i.i181_crit_edge, %for.cond.i.i115.for.end37.i.i181_crit_edge, %for.body.i.preheader.i.for.end37.i.i181_crit_edge
  %tobool.not = phi i1 [ false, %lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge ], [ false, %for.cond.i.2.i148.for.end37.i.i181_crit_edge ], [ false, %lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge ], [ false, %for.cond.i.1.i130.for.end37.i.i181_crit_edge ], [ false, %lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge ], [ false, %for.cond.i.i115.for.end37.i.i181_crit_edge ], [ false, %for.body.i.preheader.i.for.end37.i.i181_crit_edge ], [ true, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge ], [ true, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge647 ], [ false, %for.cond7.i.2.i143.for.end37.i.i181_crit_edge ], [ false, %for.cond7.i.1.i125.for.end37.i.i181_crit_edge ], [ false, %for.cond7.i.i172.for.end37.i.i181_crit_edge ]
  %cmp41.i.i179 = phi i32 [ -22, %lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge ], [ -22, %for.cond.i.2.i148.for.end37.i.i181_crit_edge ], [ -22, %lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge ], [ -22, %for.cond.i.1.i130.for.end37.i.i181_crit_edge ], [ -22, %lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge ], [ -22, %for.cond.i.i115.for.end37.i.i181_crit_edge ], [ -22, %for.body.i.preheader.i.for.end37.i.i181_crit_edge ], [ 0, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge ], [ 0, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge647 ], [ -22, %for.cond7.i.2.i143.for.end37.i.i181_crit_edge ], [ -22, %for.cond7.i.1.i125.for.end37.i.i181_crit_edge ], [ -22, %for.cond7.i.i172.for.end37.i.i181_crit_edge ]
  %ns.1.i.i180 = phi i8 [ 1, %lor.lhs.false30.i.i178.for.end37.i.i181_crit_edge ], [ 3, %for.cond.i.2.i148.for.end37.i.i181_crit_edge ], [ 3, %lor.lhs.false30.i.2.i146.for.end37.i.i181_crit_edge ], [ 2, %for.cond.i.1.i130.for.end37.i.i181_crit_edge ], [ 2, %lor.lhs.false30.i.1.i128.for.end37.i.i181_crit_edge ], [ 1, %for.cond.i.i115.for.end37.i.i181_crit_edge ], [ 0, %for.body.i.preheader.i.for.end37.i.i181_crit_edge ], [ 4, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge ], [ 4, %for.cond7.i.3.i160.for.end37.i.i181_crit_edge647 ], [ 3, %for.cond7.i.2.i143.for.end37.i.i181_crit_edge ], [ 2, %for.cond7.i.1.i125.for.end37.i.i181_crit_edge ], [ 1, %for.cond7.i.i172.for.end37.i.i181_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %parse, null
  br i1 %tobool.not.i.i, label %sw.epilog, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %for.end37.i.i181
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %ns.1.i.i180, ptr %parse, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge642
  %TupleData.i182 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %162 = ptrtoint ptr %TupleData.i182 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %TupleData.i182, align 4
  %conv.i184 = zext i8 %1 to i32
  %add.ptr.i185 = getelementptr i8, ptr %163, i32 %conv.i184
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i185, i32 -2
  %cmp31.i = icmp ugt ptr %163, %add.ptr2.i
  br i1 %cmp31.i, label %sw.bb14.parse_jedec.exit_crit_edge, label %if.end.i190

sw.bb14.parse_jedec.exit_crit_edge:               ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_jedec.exit

if.end.i190:                                      ; preds = %sw.bb14
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 1
  %arrayidx5.i = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 0
  %166 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %163, i32 1
  %167 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx6.i, align 1
  %info.i = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 0, i32 1
  %169 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %info.i, align 1
  %add.ptr9.i = getelementptr i8, ptr %163, i32 2
  %cmp3.i188 = icmp ugt ptr %add.ptr9.i, %add.ptr2.i
  br i1 %cmp3.i188, label %if.end.i190.parse_jedec.exit_crit_edge, label %if.end.i190.1

if.end.i190.parse_jedec.exit_crit_edge:           ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_jedec.exit

if.end.i190.1:                                    ; preds = %if.end.i190
  %170 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %add.ptr9.i, align 1
  %arrayidx5.i.1 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %arrayidx5.i.1, align 1
  %arrayidx6.i.1 = getelementptr i8, ptr %163, i32 3
  %173 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx6.i.1, align 1
  %info.i.1 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 1, i32 1
  %175 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %info.i.1, align 1
  %add.ptr9.i.1 = getelementptr i8, ptr %163, i32 4
  %cmp3.i188.1 = icmp ugt ptr %add.ptr9.i.1, %add.ptr2.i
  br i1 %cmp3.i188.1, label %if.end.i190.1.parse_jedec.exit_crit_edge, label %if.end.i190.2

if.end.i190.1.parse_jedec.exit_crit_edge:         ; preds = %if.end.i190.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_jedec.exit

if.end.i190.2:                                    ; preds = %if.end.i190.1
  %176 = ptrtoint ptr %add.ptr9.i.1 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %add.ptr9.i.1, align 1
  %arrayidx5.i.2 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 2
  %178 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx5.i.2, align 1
  %arrayidx6.i.2 = getelementptr i8, ptr %163, i32 5
  %179 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx6.i.2, align 1
  %info.i.2 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 2, i32 1
  %181 = ptrtoint ptr %info.i.2 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %info.i.2, align 1
  %add.ptr9.i.2 = getelementptr i8, ptr %163, i32 6
  %cmp3.i188.2 = icmp ugt ptr %add.ptr9.i.2, %add.ptr2.i
  br i1 %cmp3.i188.2, label %if.end.i190.2.parse_jedec.exit_crit_edge, label %if.end.i190.3

if.end.i190.2.parse_jedec.exit_crit_edge:         ; preds = %if.end.i190.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_jedec.exit

if.end.i190.3:                                    ; preds = %if.end.i190.2
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %add.ptr9.i.2 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %add.ptr9.i.2, align 1
  %arrayidx5.i.3 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 3
  %184 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %arrayidx5.i.3, align 1
  %arrayidx6.i.3 = getelementptr i8, ptr %163, i32 7
  %185 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx6.i.3, align 1
  %info.i.3 = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 3, i32 1
  %187 = ptrtoint ptr %info.i.3 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %info.i.3, align 1
  br label %parse_jedec.exit

parse_jedec.exit:                                 ; preds = %if.end.i190.3, %if.end.i190.2.parse_jedec.exit_crit_edge, %if.end.i190.1.parse_jedec.exit_crit_edge, %if.end.i190.parse_jedec.exit_crit_edge, %sw.bb14.parse_jedec.exit_crit_edge
  %nid.0.lcssa.i = phi i8 [ 0, %sw.bb14.parse_jedec.exit_crit_edge ], [ 1, %if.end.i190.parse_jedec.exit_crit_edge ], [ 2, %if.end.i190.1.parse_jedec.exit_crit_edge ], [ 3, %if.end.i190.2.parse_jedec.exit_crit_edge ], [ 4, %if.end.i190.3 ]
  %188 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %nid.0.lcssa.i, ptr %parse, align 1
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.i192 = icmp ult i8 %1, 4
  br i1 %cmp.i192, label %sw.bb16.do.body_crit_edge, label %if.end.i195

sw.bb16.do.body_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i195:                                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %TupleData.i193 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %189 = ptrtoint ptr %TupleData.i193 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %TupleData.i193, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 2)
  %192 = load i16, ptr %190, align 1
  %193 = tail call i16 @llvm.bswap.i16(i16 %192) #9
  %194 = ptrtoint ptr %parse to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %parse, align 2
  %195 = ptrtoint ptr %TupleData.i193 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %TupleData.i193, align 4
  %add.ptr.i194 = getelementptr i8, ptr %196, i32 2
  %197 = ptrtoint ptr %add.ptr.i194 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %add.ptr.i194, align 1
  %199 = tail call i16 @llvm.bswap.i16(i16 %198) #9
  %card.i = getelementptr inbounds %struct.cistpl_manfid_t, ptr %parse, i32 0, i32 1
  %200 = ptrtoint ptr %card.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %card.i, align 2
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i198 = icmp ult i8 %1, 2
  br i1 %cmp.i198, label %sw.bb18.do.body_crit_edge, label %if.end.i200

sw.bb18.do.body_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i200:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %TupleData.i199 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %201 = ptrtoint ptr %TupleData.i199 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %TupleData.i199, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 1
  %205 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %parse, align 1
  %arrayidx2.i = getelementptr i8, ptr %202, i32 1
  %206 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx2.i, align 1
  %sysinit.i = getelementptr inbounds %struct.cistpl_funcid_t, ptr %parse, i32 0, i32 1
  %208 = ptrtoint ptr %sysinit.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %sysinit.i, align 1
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i203 = icmp eq i8 %1, 0
  br i1 %cmp.i203, label %sw.bb20.do.body_crit_edge, label %if.end.i205

sw.bb20.do.body_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i205:                                      ; preds = %sw.bb20
  %TupleData.i204 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %209 = ptrtoint ptr %TupleData.i204 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %TupleData.i204, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %210, align 1
  %213 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %parse, align 1
  %214 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %215)
  %cmp417.i = icmp ugt i8 %215, 1
  br i1 %cmp417.i, label %if.end.i205.for.body.i210_crit_edge, label %if.end.i205.cleanup_crit_edge

if.end.i205.cleanup_crit_edge:                    ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i205.for.body.i210_crit_edge:              ; preds = %if.end.i205
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.body.i210.for.body.i210_crit_edge, %if.end.i205.for.body.i210_crit_edge
  %i.018.i = phi i32 [ %inc.i208, %for.body.i210.for.body.i210_crit_edge ], [ 1, %if.end.i205.for.body.i210_crit_edge ]
  %arrayidx6.i206 = getelementptr i8, ptr %210, i32 %i.018.i
  %216 = ptrtoint ptr %arrayidx6.i206 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx6.i206, align 1
  %sub.i207 = add nsw i32 %i.018.i, -1
  %arrayidx7.i = getelementptr %struct.cistpl_funce_t, ptr %parse, i32 0, i32 1, i32 %sub.i207
  %218 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx7.i, align 1
  %inc.i208 = add nuw nsw i32 %i.018.i, 1
  %219 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %TupleDataLen, align 4
  %conv3.i209 = zext i8 %220 to i32
  %cmp4.i = icmp ult i32 %inc.i208, %conv3.i209
  br i1 %cmp4.i, label %for.body.i210.for.body.i210_crit_edge, label %for.body.i210.cleanup_crit_edge

for.body.i210.cleanup_crit_edge:                  ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i210.for.body.i210_crit_edge:            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i210

sw.bb22:                                          ; preds = %if.end
  %TupleData.i212 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %221 = ptrtoint ptr %TupleData.i212 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %TupleData.i212, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 1
  %conv.i213 = zext i8 %224 to i32
  %and.i = and i32 %conv.i213, 3
  %and2.i = lshr i32 %conv.i213, 2
  %225 = and i32 %and2.i, 15
  %conv3.i215 = zext i8 %1 to i32
  %add.i216 = or i32 %and.i, 4
  %add4.i = add nuw nsw i32 %add.i216, %225
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %conv3.i215)
  %cmp.i217 = icmp ugt i32 %add4.i, %conv3.i215
  br i1 %cmp.i217, label %sw.bb22.do.body_crit_edge, label %if.end.i219

sw.bb22.do.body_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i219:                                      ; preds = %sw.bb22
  %incdec.ptr.i218 = getelementptr i8, ptr %222, i32 1
  %226 = ptrtoint ptr %incdec.ptr.i218 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %incdec.ptr.i218, align 1
  %228 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %parse, align 4
  %incdec.ptr6.i = getelementptr i8, ptr %222, i32 2
  %base.i = getelementptr inbounds %struct.cistpl_config_t, ptr %parse, i32 0, i32 1
  %229 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %base.i, align 4
  %230 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %incdec.ptr6.i, align 1
  %conv9.i = zext i8 %231 to i32
  %232 = load i32, ptr %base.i, align 4
  %add11.i = add i32 %232, %conv9.i
  store i32 %add11.i, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %exitcond.i = icmp eq i32 %and.i, 0
  br i1 %exitcond.i, label %if.end.i219.for.end.i_crit_edge, label %for.body.i224.1

if.end.i219.for.end.i_crit_edge:                  ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i224.1:                                  ; preds = %if.end.i219
  %arrayidx.i220.1 = getelementptr i8, ptr %222, i32 3
  %233 = ptrtoint ptr %arrayidx.i220.1 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx.i220.1, align 1
  %conv9.i.1 = zext i8 %234 to i32
  %shl.i222.1 = shl nuw nsw i32 %conv9.i.1, 8
  %235 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %base.i, align 4
  %add11.i.1 = add i32 %shl.i222.1, %236
  store i32 %add11.i.1, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.i.1 = icmp eq i32 %and.i, 1
  br i1 %exitcond.i.1, label %for.body.i224.1.for.end.i_crit_edge, label %for.body.i224.2

for.body.i224.1.for.end.i_crit_edge:              ; preds = %for.body.i224.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i224.2:                                  ; preds = %for.body.i224.1
  %arrayidx.i220.2 = getelementptr i8, ptr %222, i32 4
  %237 = ptrtoint ptr %arrayidx.i220.2 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx.i220.2, align 1
  %conv9.i.2 = zext i8 %238 to i32
  %shl.i222.2 = shl nuw nsw i32 %conv9.i.2, 16
  %239 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %base.i, align 4
  %add11.i.2 = add i32 %shl.i222.2, %240
  store i32 %add11.i.2, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.i.2 = icmp eq i32 %and.i, 2
  br i1 %exitcond.i.2, label %for.body.i224.2.for.end.i_crit_edge, label %for.body.i224.3

for.body.i224.2.for.end.i_crit_edge:              ; preds = %for.body.i224.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i224.3:                                  ; preds = %for.body.i224.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i220.3 = getelementptr i8, ptr %222, i32 5
  %241 = ptrtoint ptr %arrayidx.i220.3 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx.i220.3, align 1
  %conv9.i.3 = zext i8 %242 to i32
  %shl.i222.3 = shl nuw i32 %conv9.i.3, 24
  %243 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %base.i, align 4
  %add11.i.3 = add i32 %shl.i222.3, %244
  store i32 %add11.i.3, ptr %base.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i224.3, %for.body.i224.2.for.end.i_crit_edge, %for.body.i224.1.for.end.i_crit_edge, %if.end.i219.for.end.i_crit_edge
  %245 = add nuw nsw i32 %and.i, 1
  %uglygep.i = getelementptr i8, ptr %parse, i32 8
  %246 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %add.ptr.i225 = getelementptr i8, ptr %incdec.ptr6.i, i32 %245
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.end.i
  %i.275.i = phi i32 [ %inc34.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %for.end.i ]
  %arrayidx25.i = getelementptr i8, ptr %add.ptr.i225, i32 %i.275.i
  %247 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %248 to i32
  %rem.urem.i = shl i32 %i.275.i, 3
  %mul27.i = and i32 %rem.urem.i, 24
  %shl28.i = shl nuw i32 %conv26.i, %mul27.i
  %249 = lshr i32 %i.275.i, 2
  %arrayidx31.i = getelementptr %struct.cistpl_config_t, ptr %parse, i32 0, i32 2, i32 %249
  %250 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %shl28.i, %251
  store i32 %add32.i, ptr %arrayidx31.i, align 4
  %inc34.i = add nuw nsw i32 %i.275.i, 1
  %exitcond76.i = icmp eq i32 %i.275.i, %225
  br i1 %exitcond76.i, label %for.end35.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24.i

for.end35.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %TupleDataLen, align 4
  %254 = trunc i32 %add4.i to i8
  %conv40.i226 = sub i8 %253, %254
  %subtuples.i = getelementptr inbounds %struct.cistpl_config_t, ptr %parse, i32 0, i32 3
  %255 = ptrtoint ptr %subtuples.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv40.i226, ptr %subtuples.i, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %TupleData.i228 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %256 = ptrtoint ptr %TupleData.i228 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %TupleData.i228, align 4
  %conv.i230 = zext i8 %1 to i32
  %add.ptr.i231 = getelementptr i8, ptr %257, i32 %conv.i230
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %257, align 1
  %260 = and i8 %259, 63
  %261 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %parse, align 4
  %flags.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 1
  %262 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %flags.i, align 2
  %263 = load i8, ptr %257, align 1
  %264 = lshr i8 %263, 6
  %.lobit.i232 = and i8 %264, 1
  %265 = zext i8 %.lobit.i232 to i16
  store i16 %265, ptr %flags.i, align 2
  %266 = load i8, ptr %257, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %266)
  %tobool11.not.i = icmp sgt i8 %266, -1
  br i1 %tobool11.not.i, label %sw.bb24.if.end56.i_crit_edge, label %if.then12.i

sw.bb24.if.end56.i_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then12.i:                                      ; preds = %sw.bb24
  %incdec.ptr.i233 = getelementptr i8, ptr %257, i32 1
  %cmp.i234 = icmp eq ptr %incdec.ptr.i233, %add.ptr.i231
  br i1 %cmp.i234, label %if.then12.i.do.body_crit_edge, label %if.end15.i

if.then12.i.do.body_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end15.i:                                       ; preds = %if.then12.i
  %267 = ptrtoint ptr %incdec.ptr.i233 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %incdec.ptr.i233, align 1
  %269 = and i8 %268, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool18.not.i = icmp eq i8 %269, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end24.i_crit_edge, label %if.then19.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %270 = or i16 %265, 2
  %271 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %flags.i, align 2
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end24.i_crit_edge
  %272 = ptrtoint ptr %incdec.ptr.i233 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %incdec.ptr.i233, align 1
  %274 = and i8 %273, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool27.not.i = icmp eq i8 %274, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end33.i_crit_edge, label %if.then28.i

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %275 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %flags.i, align 2
  %277 = or i16 %276, 4
  store i16 %277, ptr %flags.i, align 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end33.i_crit_edge
  %278 = ptrtoint ptr %incdec.ptr.i233 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %incdec.ptr.i233, align 1
  %280 = and i8 %279, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool36.not.i = icmp eq i8 %280, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end42.i_crit_edge, label %if.then37.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %flags.i, align 2
  %283 = or i16 %282, 8
  store i16 %283, ptr %flags.i, align 2
  %284 = ptrtoint ptr %incdec.ptr.i233 to i32
  call void @__asan_load1_noabort(i32 %284)
  %.pr.i = load i8, ptr %incdec.ptr.i233, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.end33.i.if.end42.i_crit_edge
  %285 = phi i8 [ %.pr.i, %if.then37.i ], [ %279, %if.end33.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %285)
  %tobool45.not.i = icmp sgt i8 %285, -1
  br i1 %tobool45.not.i, label %if.end42.i.if.end51.i_crit_edge, label %if.then46.i

if.end42.i.if.end51.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %286 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %flags.i, align 2
  %288 = or i16 %287, 16
  store i16 %288, ptr %flags.i, align 2
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.end42.i.if.end51.i_crit_edge
  %289 = ptrtoint ptr %incdec.ptr.i233 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %incdec.ptr.i233, align 1
  %291 = and i8 %290, 15
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end51.i, %sw.bb24.if.end56.i_crit_edge
  %.sink.i235 = phi i8 [ %291, %if.end51.i ], [ 0, %sw.bb24.if.end56.i_crit_edge ]
  %p.0.i = phi ptr [ %incdec.ptr.i233, %if.end51.i ], [ %257, %sw.bb24.if.end56.i_crit_edge ]
  %interface55.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 2
  %292 = ptrtoint ptr %interface55.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %.sink.i235, ptr %interface55.i, align 4
  %incdec.ptr57.i = getelementptr i8, ptr %p.0.i, i32 1
  %cmp58.i = icmp eq ptr %incdec.ptr57.i, %add.ptr.i231
  br i1 %cmp58.i, label %if.end56.i.do.body_crit_edge, label %if.end61.i

if.end56.i.do.body_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end61.i:                                       ; preds = %if.end56.i
  %293 = ptrtoint ptr %incdec.ptr57.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %incdec.ptr57.i, align 1
  %incdec.ptr62.i = getelementptr i8, ptr %p.0.i, i32 2
  %conv63.i = zext i8 %294 to i32
  %and64.i = and i32 %conv63.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %cmp65.not.i = icmp eq i32 %and64.i, 0
  %vcc73.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 3
  br i1 %cmp65.not.i, label %if.end74.thread.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end61.i
  %call.i = tail call fastcc ptr @parse_power(ptr noundef %incdec.ptr62.i, ptr noundef %add.ptr.i231, ptr noundef %vcc73.i) #9
  %cmp68.i = icmp eq ptr %call.i, null
  br i1 %cmp68.i, label %if.then67.i.do.body_crit_edge, label %if.end74.i

if.then67.i.do.body_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end74.thread.i:                                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %295 = ptrtoint ptr %vcc73.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 0, ptr %vcc73.i, align 4
  br label %if.end88.thread.i

if.end74.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and64.i)
  %cmp77.i = icmp ugt i32 %and64.i, 1
  br i1 %cmp77.i, label %if.then79.i, label %if.end74.i.if.end88.thread.i_crit_edge

if.end74.i.if.end88.thread.i_crit_edge:           ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.thread.i

if.then79.i:                                      ; preds = %if.end74.i
  %vpp1.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 4
  %call80.i = tail call fastcc ptr @parse_power(ptr noundef nonnull %call.i, ptr noundef %add.ptr.i231, ptr noundef %vpp1.i) #9
  %cmp81.i = icmp eq ptr %call80.i, null
  br i1 %cmp81.i, label %if.then79.i.do.body_crit_edge, label %if.end88.i

if.then79.i.do.body_crit_edge:                    ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end88.thread.i:                                ; preds = %if.end74.i.if.end88.thread.i_crit_edge, %if.end74.thread.i
  %p.1351.i = phi ptr [ %incdec.ptr62.i, %if.end74.thread.i ], [ %call.i, %if.end74.i.if.end88.thread.i_crit_edge ]
  %vpp186.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 4
  %296 = ptrtoint ptr %vpp186.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 0, ptr %vpp186.i, align 4
  br label %if.else99.i

if.end88.i:                                       ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and64.i)
  %cmp91.i = icmp eq i32 %and64.i, 3
  br i1 %cmp91.i, label %if.then93.i, label %if.end88.i.if.else99.i_crit_edge

if.end88.i.if.else99.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else99.i

if.then93.i:                                      ; preds = %if.end88.i
  %vpp2.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 5
  %call94.i = tail call fastcc ptr @parse_power(ptr noundef nonnull %call80.i, ptr noundef %add.ptr.i231, ptr noundef %vpp2.i) #9
  %cmp95.i = icmp eq ptr %call94.i, null
  br i1 %cmp95.i, label %if.then93.i.do.body_crit_edge, label %if.then93.i.if.end102.i_crit_edge

if.then93.i.if.end102.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then93.i.do.body_crit_edge:                    ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else99.i:                                      ; preds = %if.end88.i.if.else99.i_crit_edge, %if.end88.thread.i
  %p.2354.i = phi ptr [ %p.1351.i, %if.end88.thread.i ], [ %call80.i, %if.end88.i.if.else99.i_crit_edge ]
  %vpp2100.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 5
  %297 = ptrtoint ptr %vpp2100.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 0, ptr %vpp2100.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else99.i, %if.then93.i.if.end102.i_crit_edge
  %p.3.i = phi ptr [ %call94.i, %if.then93.i.if.end102.i_crit_edge ], [ %p.2354.i, %if.else99.i ]
  %and104.i = and i32 %conv63.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  %timing113.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6
  br i1 %tobool105.not.i, label %if.else112.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.end102.i
  %cmp.i.i236 = icmp eq ptr %p.3.i, %add.ptr.i231
  br i1 %cmp.i.i236, label %if.then106.i.do.body_crit_edge, label %if.end.i.i

if.then106.i.do.body_crit_edge:                   ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i:                                       ; preds = %if.then106.i
  %298 = ptrtoint ptr %p.3.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %p.3.i, align 1
  %300 = and i8 %299, 3
  %and.i.i = zext i8 %300 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %300)
  %cmp1.not.i.i = icmp eq i8 %300, 3
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %incdec.ptr.i.i237 = getelementptr i8, ptr %p.3.i, i32 1
  %cmp4.i.i = icmp eq ptr %incdec.ptr.i.i237, %add.ptr.i231
  br i1 %cmp4.i.i, label %if.then3.i.i.do.body_crit_edge, label %if.end7.i.i

if.then3.i.i.do.body_crit_edge:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end7.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %301 = ptrtoint ptr %incdec.ptr.i.i237 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %incdec.ptr.i.i237, align 1
  %conv8.i.i = zext i8 %302 to i32
  %303 = lshr i32 %conv8.i.i, 3
  %and9.i.i = and i32 %303, 15
  %sub.i.i = add nsw i32 %and9.i.i, -1
  %arrayidx.i.i = getelementptr [16 x i8], ptr @mantissa, i32 0, i32 %sub.i.i
  %304 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx.i.i, align 1
  %conv10.i.i = zext i8 %305 to i32
  %and12.i.i = and i32 %conv8.i.i, 7
  %arrayidx13.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and12.i.i
  %306 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx13.i.i, align 4
  %mul.i.i = mul i32 %307, %conv10.i.i
  %div.i.i = udiv i32 %mul.i.i, 10
  %308 = ptrtoint ptr %timing113.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %div.i.i, ptr %timing113.i, align 4
  %arrayidx16.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and.i.i
  %309 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx16.i.i, align 4
  %waitscale.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 1
  %311 = ptrtoint ptr %waitscale.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %waitscale.i.i, align 4
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %312 = ptrtoint ptr %timing113.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %timing113.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i, %if.end7.i.i
  %p.addr.0.i.i = phi ptr [ %incdec.ptr.i.i237, %if.end7.i.i ], [ %p.3.i, %if.else.i.i ]
  %313 = lshr i8 %299, 2
  %314 = and i8 %313, 7
  %and23.i.i = zext i8 %314 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %314)
  %cmp24.not.i.i = icmp eq i8 %314, 7
  br i1 %cmp24.not.i.i, label %if.else46.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end18.i.i
  %incdec.ptr27.i.i = getelementptr i8, ptr %p.addr.0.i.i, i32 1
  %cmp28.i.i = icmp eq ptr %incdec.ptr27.i.i, %add.ptr.i231
  br i1 %cmp28.i.i, label %if.then26.i.i.do.body_crit_edge, label %if.end31.i.i

if.then26.i.i.do.body_crit_edge:                  ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end31.i.i:                                     ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %incdec.ptr27.i.i, align 1
  %conv32.i.i = zext i8 %316 to i32
  %317 = lshr i32 %conv32.i.i, 3
  %and34.i.i = and i32 %317, 15
  %sub35.i.i = add nsw i32 %and34.i.i, -1
  %arrayidx36.i.i = getelementptr [16 x i8], ptr @mantissa, i32 0, i32 %sub35.i.i
  %318 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx36.i.i, align 1
  %conv37.i.i = zext i8 %319 to i32
  %and39.i.i = and i32 %conv32.i.i, 7
  %arrayidx40.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and39.i.i
  %320 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx40.i.i, align 4
  %mul41.i.i = mul i32 %321, %conv37.i.i
  %div42.i.i = udiv i32 %mul41.i.i, 10
  %ready.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 2
  %322 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %div42.i.i, ptr %ready.i.i, align 4
  %arrayidx45.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and23.i.i
  %323 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx45.i.i, align 4
  %rdyscale.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 3
  %325 = ptrtoint ptr %rdyscale.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %rdyscale.i.i, align 4
  br label %if.end48.i.i

if.else46.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ready47.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 2
  %326 = ptrtoint ptr %ready47.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %ready47.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else46.i.i, %if.end31.i.i
  %p.addr.1.i.i238 = phi ptr [ %incdec.ptr27.i.i, %if.end31.i.i ], [ %p.addr.0.i.i, %if.else46.i.i ]
  %327 = lshr i8 %299, 5
  %conv52.i.i = zext i8 %327 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %327)
  %cmp53.not.i.i = icmp eq i8 %327, 7
  br i1 %cmp53.not.i.i, label %if.else73.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.end48.i.i
  %incdec.ptr56.i.i = getelementptr i8, ptr %p.addr.1.i.i238, i32 1
  %cmp57.i.i = icmp eq ptr %incdec.ptr56.i.i, %add.ptr.i231
  br i1 %cmp57.i.i, label %if.then55.i.i.do.body_crit_edge, label %if.end60.i.i

if.then55.i.i.do.body_crit_edge:                  ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end60.i.i:                                     ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %328 = ptrtoint ptr %incdec.ptr56.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %incdec.ptr56.i.i, align 1
  %conv61.i.i = zext i8 %329 to i32
  %330 = lshr i32 %conv61.i.i, 3
  %and63.i.i = and i32 %330, 15
  %sub64.i.i = add nsw i32 %and63.i.i, -1
  %arrayidx65.i.i = getelementptr [16 x i8], ptr @mantissa, i32 0, i32 %sub64.i.i
  %331 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx65.i.i, align 1
  %conv66.i.i = zext i8 %332 to i32
  %and68.i.i = and i32 %conv61.i.i, 7
  %arrayidx69.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and68.i.i
  %333 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx69.i.i, align 4
  %mul70.i.i = mul i32 %334, %conv66.i.i
  %div71.i.i = udiv i32 %mul70.i.i, 10
  %reserved.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 4
  %335 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %div71.i.i, ptr %reserved.i.i, align 4
  %arrayidx72.i.i = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %conv52.i.i
  %336 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx72.i.i, align 4
  %rsvscale.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 5
  %338 = ptrtoint ptr %rsvscale.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %rsvscale.i.i, align 4
  br label %parse_timing.exit.i

if.else73.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserved74.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 4
  %339 = ptrtoint ptr %reserved74.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %reserved74.i.i, align 4
  br label %parse_timing.exit.i

parse_timing.exit.i:                              ; preds = %if.else73.i.i, %if.end60.i.i
  %p.addr.2.i.i = phi ptr [ %incdec.ptr56.i.i, %if.end60.i.i ], [ %p.addr.1.i.i238, %if.else73.i.i ]
  %incdec.ptr76.i.i = getelementptr i8, ptr %p.addr.2.i.i, i32 1
  %cmp108.i = icmp eq ptr %incdec.ptr76.i.i, null
  br i1 %cmp108.i, label %parse_timing.exit.i.do.body_crit_edge, label %parse_timing.exit.i.if.end116.i_crit_edge

parse_timing.exit.i.if.end116.i_crit_edge:        ; preds = %parse_timing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

parse_timing.exit.i.do.body_crit_edge:            ; preds = %parse_timing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else112.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %340 = ptrtoint ptr %timing113.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %timing113.i, align 4
  %ready.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 2
  %341 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %ready.i, align 4
  %reserved.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 6, i32 4
  %342 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %reserved.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.else112.i, %parse_timing.exit.i.if.end116.i_crit_edge
  %p.4.i = phi ptr [ %incdec.ptr76.i.i, %parse_timing.exit.i.if.end116.i_crit_edge ], [ %p.3.i, %if.else112.i ]
  %and118.i = and i32 %conv63.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.else126.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end116.i
  %cmp.i316.i = icmp eq ptr %p.4.i, %add.ptr.i231
  br i1 %cmp.i316.i, label %if.then120.i.do.body_crit_edge, label %if.end.i317.i

if.then120.i.do.body_crit_edge:                   ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i317.i:                                    ; preds = %if.then120.i
  %io.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7
  %343 = ptrtoint ptr %p.4.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %p.4.i, align 1
  %345 = ptrtoint ptr %io.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %io.i, align 4
  %346 = load i8, ptr %p.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %346)
  %tobool.not.i.i239 = icmp sgt i8 %346, -1
  br i1 %tobool.not.i.i239, label %if.then1.i.i, label %if.end7.i319.i

if.then1.i.i:                                     ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #11
  %nwin.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 1
  %347 = ptrtoint ptr %nwin.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 1, ptr %nwin.i.i, align 1
  %win.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 2
  %348 = ptrtoint ptr %win.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %win.i.i, align 4
  %349 = and i8 %344, 31
  %and4.i.i = zext i8 %349 to i32
  %shl.i.i = shl nuw i32 1, %and4.i.i
  %len.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 2, i32 0, i32 1
  %350 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %shl.i.i, ptr %len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %p.4.i, i32 1
  br label %parse_io.exit.i

if.end7.i319.i:                                   ; preds = %if.end.i317.i
  %incdec.ptr.i318.i = getelementptr i8, ptr %p.4.i, i32 1
  %cmp8.i.i = icmp eq ptr %incdec.ptr.i318.i, %add.ptr.i231
  br i1 %cmp8.i.i, label %if.end7.i319.i.do.body_crit_edge, label %for.body.lr.ph.i.i

if.end7.i319.i.do.body_crit_edge:                 ; preds = %if.end7.i319.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph.i.i:                               ; preds = %if.end7.i319.i
  %351 = ptrtoint ptr %incdec.ptr.i318.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %incdec.ptr.i318.i, align 1
  %353 = and i8 %352, 15
  %narrow.i.i = add nuw nsw i8 %353, 1
  %nwin15.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 1
  %354 = ptrtoint ptr %nwin15.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %narrow.i.i, ptr %nwin15.i.i, align 1
  %355 = load i8, ptr %incdec.ptr.i318.i, align 1
  %356 = lshr i8 %355, 4
  %357 = and i8 %356, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %357)
  %cmp18.i.i = icmp eq i8 %357, 3
  %narrow124.i.i = select i1 %cmp18.i.i, i8 4, i8 %357
  %358 = lshr i8 %355, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %358)
  %cmp25.i.i = icmp eq i8 %358, 3
  %narrow125.i.i = select i1 %cmp25.i.i, i8 4, i8 %358
  %incdec.ptr30.i.i = getelementptr i8, ptr %p.4.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow124.i.i)
  %cmp42132.not.i.i = icmp eq i8 %narrow124.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow125.i.i)
  %cmp58135.not.i.i = icmp eq i8 %narrow125.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow124.i.i)
  %exitcond.not.i.i = icmp eq i8 %narrow124.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow124.i.i)
  %exitcond.not.i.i.1 = icmp eq i8 %narrow124.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow125.i.i)
  %exitcond146.not.i.i = icmp eq i8 %narrow125.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow125.i.i)
  %exitcond146.not.i.i.1 = icmp eq i8 %narrow125.i.i, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc76.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0142.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc77.i.i, %for.inc76.i.i.for.body.i.i_crit_edge ]
  %p.addr.0141.i.i = phi ptr [ %incdec.ptr30.i.i, %for.body.lr.ph.i.i ], [ %p.addr.2.lcssa.i.i, %for.inc76.i.i.for.body.i.i_crit_edge ]
  %arrayidx36.i320.i = getelementptr %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 2, i32 %i.0142.i.i
  %359 = ptrtoint ptr %arrayidx36.i320.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %arrayidx36.i320.i, align 4
  %len40.i.i = getelementptr %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 2, i32 %i.0142.i.i, i32 1
  %360 = ptrtoint ptr %len40.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 1, ptr %len40.i.i, align 4
  br i1 %cmp42132.not.i.i, label %for.body.i.i.for.cond57.preheader.i.i_crit_edge, label %for.body44.i.i

for.body.i.i.for.cond57.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i.i

for.cond57.preheader.i.i:                         ; preds = %if.end48.i323.i.6, %if.end48.i323.i.3.for.cond57.preheader.i.i_crit_edge, %if.end48.i323.i.1.for.cond57.preheader.i.i_crit_edge, %if.end48.i323.i.for.cond57.preheader.i.i_crit_edge, %for.body.i.i.for.cond57.preheader.i.i_crit_edge
  %p.addr.1.lcssa.i.i = phi ptr [ %p.addr.0141.i.i, %for.body.i.i.for.cond57.preheader.i.i_crit_edge ], [ %incdec.ptr56.i322.i, %if.end48.i323.i.for.cond57.preheader.i.i_crit_edge ], [ %incdec.ptr56.i322.i.1, %if.end48.i323.i.1.for.cond57.preheader.i.i_crit_edge ], [ %incdec.ptr56.i322.i.3, %if.end48.i323.i.3.for.cond57.preheader.i.i_crit_edge ], [ %incdec.ptr56.i322.i.6, %if.end48.i323.i.6 ]
  br i1 %cmp58135.not.i.i, label %for.cond57.preheader.i.i.for.inc76.i.i_crit_edge, label %for.body60.i.i

for.cond57.preheader.i.i.for.inc76.i.i_crit_edge: ; preds = %for.cond57.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i.i

for.body44.i.i:                                   ; preds = %for.body.i.i
  %cmp45.i.i = icmp eq ptr %p.addr.0141.i.i, %add.ptr.i231
  br i1 %cmp45.i.i, label %for.body44.i.i.do.body_crit_edge, label %if.end48.i323.i

for.body44.i.i.do.body_crit_edge:                 ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end48.i323.i:                                  ; preds = %for.body44.i.i
  %361 = ptrtoint ptr %p.addr.0141.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %p.addr.0141.i.i, align 1
  %conv49.i.i = zext i8 %362 to i32
  %363 = ptrtoint ptr %arrayidx36.i320.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx36.i320.i, align 4
  %add54.i.i = add i32 %364, %conv49.i.i
  store i32 %add54.i.i, ptr %arrayidx36.i320.i, align 4
  %incdec.ptr56.i322.i = getelementptr i8, ptr %p.addr.0141.i.i, i32 1
  br i1 %exitcond.not.i.i, label %if.end48.i323.i.for.cond57.preheader.i.i_crit_edge, label %for.body44.i.i.1

if.end48.i323.i.for.cond57.preheader.i.i_crit_edge: ; preds = %if.end48.i323.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i.i

for.body44.i.i.1:                                 ; preds = %if.end48.i323.i
  %cmp45.i.i.1 = icmp eq ptr %incdec.ptr56.i322.i, %add.ptr.i231
  br i1 %cmp45.i.i.1, label %for.body44.i.i.1.do.body_crit_edge, label %if.end48.i323.i.1

for.body44.i.i.1.do.body_crit_edge:               ; preds = %for.body44.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end48.i323.i.1:                                ; preds = %for.body44.i.i.1
  %365 = ptrtoint ptr %incdec.ptr56.i322.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %incdec.ptr56.i322.i, align 1
  %conv49.i.i.1 = zext i8 %366 to i32
  %shl50.i.i.1 = shl nuw nsw i32 %conv49.i.i.1, 8
  %367 = ptrtoint ptr %arrayidx36.i320.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx36.i320.i, align 4
  %add54.i.i.1 = add i32 %shl50.i.i.1, %368
  store i32 %add54.i.i.1, ptr %arrayidx36.i320.i, align 4
  %incdec.ptr56.i322.i.1 = getelementptr i8, ptr %p.addr.0141.i.i, i32 2
  br i1 %exitcond.not.i.i.1, label %if.end48.i323.i.1.for.cond57.preheader.i.i_crit_edge, label %for.body44.i.i.2

if.end48.i323.i.1.for.cond57.preheader.i.i_crit_edge: ; preds = %if.end48.i323.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i.i

for.body44.i.i.2:                                 ; preds = %if.end48.i323.i.1
  %cmp45.i.i.2 = icmp eq ptr %incdec.ptr56.i322.i.1, %add.ptr.i231
  br i1 %cmp45.i.i.2, label %for.body44.i.i.2.do.body_crit_edge, label %if.end48.i323.i.2

for.body44.i.i.2.do.body_crit_edge:               ; preds = %for.body44.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end48.i323.i.2:                                ; preds = %for.body44.i.i.2
  %369 = ptrtoint ptr %incdec.ptr56.i322.i.1 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %incdec.ptr56.i322.i.1, align 1
  %conv49.i.i.2 = zext i8 %370 to i32
  %shl50.i.i.2 = shl nuw nsw i32 %conv49.i.i.2, 16
  %371 = ptrtoint ptr %arrayidx36.i320.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx36.i320.i, align 4
  %add54.i.i.2 = add i32 %shl50.i.i.2, %372
  store i32 %add54.i.i.2, ptr %arrayidx36.i320.i, align 4
  %incdec.ptr56.i322.i.2 = getelementptr i8, ptr %p.addr.0141.i.i, i32 3
  %cmp45.i.i.3 = icmp eq ptr %incdec.ptr56.i322.i.2, %add.ptr.i231
  br i1 %cmp45.i.i.3, label %if.end48.i323.i.2.do.body_crit_edge, label %if.end48.i323.i.3

if.end48.i323.i.2.do.body_crit_edge:              ; preds = %if.end48.i323.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end48.i323.i.3:                                ; preds = %if.end48.i323.i.2
  %373 = ptrtoint ptr %incdec.ptr56.i322.i.2 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %incdec.ptr56.i322.i.2, align 1
  %conv49.i.i.3 = zext i8 %374 to i32
  %shl50.i.i.3 = shl nuw i32 %conv49.i.i.3, 24
  %375 = ptrtoint ptr %arrayidx36.i320.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx36.i320.i, align 4
  %add54.i.i.3 = add i32 %shl50.i.i.3, %376
  store i32 %add54.i.i.3, ptr %arrayidx36.i320.i, align 4
  %incdec.ptr56.i322.i.3 = getelementptr i8, ptr %p.addr.0141.i.i, i32 4
  br i1 %cmp18.i.i, label %if.end48.i323.i.3.for.cond57.preheader.i.i_crit_edge, label %for.body44.i.i.4

if.end48.i323.i.3.for.cond57.preheader.i.i_crit_edge: ; preds = %if.end48.i323.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i.i

for.body44.i.i.4:                                 ; preds = %if.end48.i323.i.3
  %cmp45.i.i.4 = icmp eq ptr %incdec.ptr56.i322.i.3, %add.ptr.i231
  %incdec.ptr56.i322.i.4 = getelementptr i8, ptr %p.addr.0141.i.i, i32 5
  %cmp45.i.i.5 = icmp eq ptr %incdec.ptr56.i322.i.4, %add.ptr.i231
  %or.cond = or i1 %cmp45.i.i.4, %cmp45.i.i.5
  %incdec.ptr56.i322.i.5 = getelementptr i8, ptr %p.addr.0141.i.i, i32 6
  %cmp45.i.i.6 = icmp eq ptr %incdec.ptr56.i322.i.5, %add.ptr.i231
  %or.cond637 = select i1 %or.cond, i1 true, i1 %cmp45.i.i.6
  br i1 %or.cond637, label %for.body44.i.i.4.do.body_crit_edge, label %if.end48.i323.i.6

for.body44.i.i.4.do.body_crit_edge:               ; preds = %for.body44.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end48.i323.i.6:                                ; preds = %for.body44.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr56.i322.i.6 = getelementptr i8, ptr %p.addr.0141.i.i, i32 7
  br label %for.cond57.preheader.i.i

for.body60.i.i:                                   ; preds = %for.cond57.preheader.i.i
  %cmp61.i.i = icmp eq ptr %p.addr.1.lcssa.i.i, %add.ptr.i231
  br i1 %cmp61.i.i, label %for.body60.i.i.do.body_crit_edge, label %if.end64.i.i

for.body60.i.i.do.body_crit_edge:                 ; preds = %for.body60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end64.i.i:                                     ; preds = %for.body60.i.i
  %377 = ptrtoint ptr %p.addr.1.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %p.addr.1.lcssa.i.i, align 1
  %conv65.i.i = zext i8 %378 to i32
  %379 = ptrtoint ptr %len40.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %len40.i.i, align 4
  %add71.i.i = add i32 %380, %conv65.i.i
  store i32 %add71.i.i, ptr %len40.i.i, align 4
  %incdec.ptr74.i.i = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 1
  br i1 %exitcond146.not.i.i, label %if.end64.i.i.for.inc76.i.i_crit_edge, label %for.body60.i.i.1

if.end64.i.i.for.inc76.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i.i

for.body60.i.i.1:                                 ; preds = %if.end64.i.i
  %cmp61.i.i.1 = icmp eq ptr %incdec.ptr74.i.i, %add.ptr.i231
  br i1 %cmp61.i.i.1, label %for.body60.i.i.1.do.body_crit_edge, label %if.end64.i.i.1

for.body60.i.i.1.do.body_crit_edge:               ; preds = %for.body60.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end64.i.i.1:                                   ; preds = %for.body60.i.i.1
  %381 = ptrtoint ptr %incdec.ptr74.i.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %incdec.ptr74.i.i, align 1
  %conv65.i.i.1 = zext i8 %382 to i32
  %shl67.i.i.1 = shl nuw nsw i32 %conv65.i.i.1, 8
  %383 = ptrtoint ptr %len40.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %len40.i.i, align 4
  %add71.i.i.1 = add i32 %shl67.i.i.1, %384
  store i32 %add71.i.i.1, ptr %len40.i.i, align 4
  %incdec.ptr74.i.i.1 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 2
  br i1 %exitcond146.not.i.i.1, label %if.end64.i.i.1.for.inc76.i.i_crit_edge, label %for.body60.i.i.2

if.end64.i.i.1.for.inc76.i.i_crit_edge:           ; preds = %if.end64.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i.i

for.body60.i.i.2:                                 ; preds = %if.end64.i.i.1
  %cmp61.i.i.2 = icmp eq ptr %incdec.ptr74.i.i.1, %add.ptr.i231
  br i1 %cmp61.i.i.2, label %for.body60.i.i.2.do.body_crit_edge, label %if.end64.i.i.2

for.body60.i.i.2.do.body_crit_edge:               ; preds = %for.body60.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end64.i.i.2:                                   ; preds = %for.body60.i.i.2
  %385 = ptrtoint ptr %incdec.ptr74.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %incdec.ptr74.i.i.1, align 1
  %conv65.i.i.2 = zext i8 %386 to i32
  %shl67.i.i.2 = shl nuw nsw i32 %conv65.i.i.2, 16
  %387 = ptrtoint ptr %len40.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %len40.i.i, align 4
  %add71.i.i.2 = add i32 %shl67.i.i.2, %388
  store i32 %add71.i.i.2, ptr %len40.i.i, align 4
  %incdec.ptr74.i.i.2 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 3
  %cmp61.i.i.3 = icmp eq ptr %incdec.ptr74.i.i.2, %add.ptr.i231
  br i1 %cmp61.i.i.3, label %if.end64.i.i.2.do.body_crit_edge, label %if.end64.i.i.3

if.end64.i.i.2.do.body_crit_edge:                 ; preds = %if.end64.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end64.i.i.3:                                   ; preds = %if.end64.i.i.2
  %389 = ptrtoint ptr %incdec.ptr74.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %incdec.ptr74.i.i.2, align 1
  %conv65.i.i.3 = zext i8 %390 to i32
  %shl67.i.i.3 = shl nuw i32 %conv65.i.i.3, 24
  %391 = ptrtoint ptr %len40.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %len40.i.i, align 4
  %add71.i.i.3 = add i32 %shl67.i.i.3, %392
  store i32 %add71.i.i.3, ptr %len40.i.i, align 4
  %incdec.ptr74.i.i.3 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 4
  br i1 %cmp25.i.i, label %if.end64.i.i.3.for.inc76.i.i_crit_edge, label %for.body60.i.i.4

if.end64.i.i.3.for.inc76.i.i_crit_edge:           ; preds = %if.end64.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i.i

for.body60.i.i.4:                                 ; preds = %if.end64.i.i.3
  %cmp61.i.i.4 = icmp eq ptr %incdec.ptr74.i.i.3, %add.ptr.i231
  %incdec.ptr74.i.i.4 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 5
  %cmp61.i.i.5 = icmp eq ptr %incdec.ptr74.i.i.4, %add.ptr.i231
  %or.cond638 = or i1 %cmp61.i.i.4, %cmp61.i.i.5
  %incdec.ptr74.i.i.5 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 6
  %cmp61.i.i.6 = icmp eq ptr %incdec.ptr74.i.i.5, %add.ptr.i231
  %or.cond639 = select i1 %or.cond638, i1 true, i1 %cmp61.i.i.6
  br i1 %or.cond639, label %for.body60.i.i.4.do.body_crit_edge, label %if.end64.i.i.6

for.body60.i.i.4.do.body_crit_edge:               ; preds = %for.body60.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end64.i.i.6:                                   ; preds = %for.body60.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr74.i.i.6 = getelementptr i8, ptr %p.addr.1.lcssa.i.i, i32 7
  br label %for.inc76.i.i

for.inc76.i.i:                                    ; preds = %if.end64.i.i.6, %if.end64.i.i.3.for.inc76.i.i_crit_edge, %if.end64.i.i.1.for.inc76.i.i_crit_edge, %if.end64.i.i.for.inc76.i.i_crit_edge, %for.cond57.preheader.i.i.for.inc76.i.i_crit_edge
  %p.addr.2.lcssa.i.i = phi ptr [ %p.addr.1.lcssa.i.i, %for.cond57.preheader.i.i.for.inc76.i.i_crit_edge ], [ %incdec.ptr74.i.i, %if.end64.i.i.for.inc76.i.i_crit_edge ], [ %incdec.ptr74.i.i.1, %if.end64.i.i.1.for.inc76.i.i_crit_edge ], [ %incdec.ptr74.i.i.3, %if.end64.i.i.3.for.inc76.i.i_crit_edge ], [ %incdec.ptr74.i.i.6, %if.end64.i.i.6 ]
  %inc77.i.i = add nuw nsw i32 %i.0142.i.i, 1
  %393 = ptrtoint ptr %nwin15.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %nwin15.i.i, align 1
  %conv32.i324.i = zext i8 %394 to i32
  %cmp33.i.i = icmp ult i32 %inc77.i.i, %conv32.i324.i
  br i1 %cmp33.i.i, label %for.inc76.i.i.for.body.i.i_crit_edge, label %for.inc76.i.i.parse_io.exit.i_crit_edge

for.inc76.i.i.parse_io.exit.i_crit_edge:          ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_io.exit.i

for.inc76.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

parse_io.exit.i:                                  ; preds = %for.inc76.i.i.parse_io.exit.i_crit_edge, %if.then1.i.i
  %retval.0.i325.i = phi ptr [ %add.ptr.i.i, %if.then1.i.i ], [ %p.addr.2.lcssa.i.i, %for.inc76.i.i.parse_io.exit.i_crit_edge ]
  %cmp122.i = icmp eq ptr %retval.0.i325.i, null
  br i1 %cmp122.i, label %parse_io.exit.i.do.body_crit_edge, label %parse_io.exit.i.if.end128.i_crit_edge

parse_io.exit.i.if.end128.i_crit_edge:            ; preds = %parse_io.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128.i

parse_io.exit.i.do.body_crit_edge:                ; preds = %parse_io.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else126.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %nwin.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 7, i32 1
  %395 = ptrtoint ptr %nwin.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 0, ptr %nwin.i, align 1
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.else126.i, %parse_io.exit.i.if.end128.i_crit_edge
  %p.5.i = phi ptr [ %retval.0.i325.i, %parse_io.exit.i.if.end128.i_crit_edge ], [ %p.4.i, %if.else126.i ]
  %and130.i = and i32 %conv63.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.else138.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end128.i
  %cmp.i326.i = icmp eq ptr %p.5.i, %add.ptr.i231
  br i1 %cmp.i326.i, label %if.then132.i.do.body_crit_edge, label %if.end.i330.i

if.then132.i.do.body_crit_edge:                   ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i330.i:                                    ; preds = %if.then132.i
  %irq.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 8
  %396 = ptrtoint ptr %p.5.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %p.5.i, align 1
  %conv.i.i = zext i8 %397 to i32
  %398 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %conv.i.i, ptr %irq.i, align 4
  %incdec.ptr.i327.i = getelementptr i8, ptr %p.5.i, i32 1
  %and.i328.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i328.i)
  %tobool.not.i329.i = icmp eq i32 %and.i328.i, 0
  br i1 %tobool.not.i329.i, label %if.end.i330.i.parse_irq.exit.i_crit_edge, label %if.then2.i.i

if.end.i330.i.parse_irq.exit.i_crit_edge:         ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_irq.exit.i

if.then2.i.i:                                     ; preds = %if.end.i330.i
  %add.ptr.i331.i = getelementptr i8, ptr %p.5.i, i32 3
  %cmp3.i.i = icmp ugt ptr %add.ptr.i331.i, %add.ptr.i231
  br i1 %cmp3.i.i, label %if.then2.i.i.do.body_crit_edge, label %if.end6.i.i

if.then2.i.i.do.body_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end6.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i332.i = getelementptr i8, ptr %p.5.i, i32 2
  %399 = ptrtoint ptr %arrayidx.i332.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx.i332.i, align 1
  %conv7.i.i = zext i8 %400 to i32
  %shl.i333.i = shl nuw nsw i32 %conv7.i.i, 8
  %401 = ptrtoint ptr %incdec.ptr.i327.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %incdec.ptr.i327.i, align 1
  %conv9.i.i = zext i8 %402 to i32
  %add.i.i = or i32 %shl.i333.i, %conv9.i.i
  %IRQInfo2.i.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 8, i32 1
  %403 = ptrtoint ptr %IRQInfo2.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %add.i.i, ptr %IRQInfo2.i.i, align 4
  br label %parse_irq.exit.i

parse_irq.exit.i:                                 ; preds = %if.end6.i.i, %if.end.i330.i.parse_irq.exit.i_crit_edge
  %retval.0.i334.i = phi ptr [ %add.ptr.i331.i, %if.end6.i.i ], [ %incdec.ptr.i327.i, %if.end.i330.i.parse_irq.exit.i_crit_edge ]
  %cmp134.i = icmp eq ptr %retval.0.i334.i, null
  br i1 %cmp134.i, label %parse_irq.exit.i.do.body_crit_edge, label %parse_irq.exit.i.if.end140.i_crit_edge

parse_irq.exit.i.if.end140.i_crit_edge:           ; preds = %parse_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.i

parse_irq.exit.i.do.body_crit_edge:               ; preds = %parse_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else138.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq139.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 8
  %404 = ptrtoint ptr %irq139.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 0, ptr %irq139.i, align 4
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.else138.i, %parse_irq.exit.i.if.end140.i_crit_edge
  %p.6.i = phi ptr [ %retval.0.i334.i, %parse_irq.exit.i.if.end140.i_crit_edge ], [ %p.5.i, %if.else138.i ]
  %and142.i = lshr i32 %conv63.i, 5
  %405 = and i32 %and142.i, 3
  %406 = zext i32 %405 to i64
  call void @__sanitizer_cov_trace_switch(i64 %406, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %405, label %if.end140.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb144.i
    i32 2, label %sw.bb161.i
    i32 3, label %sw.bb188.i
  ]

sw.bb.i:                                          ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  %nwin143.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 1
  %407 = ptrtoint ptr %nwin143.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 0, ptr %nwin143.i, align 1
  br label %sw.epilog.i244

sw.bb144.i:                                       ; preds = %if.end140.i
  %nwin146.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 1
  %408 = ptrtoint ptr %nwin146.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 1, ptr %nwin146.i, align 1
  %409 = ptrtoint ptr %p.6.i to i32
  call void @__asan_loadN_noabort(i32 %409, i32 2)
  %410 = load i16, ptr %p.6.i, align 1
  %411 = tail call i16 @llvm.bswap.i16(i16 %410) #9
  %conv148.i = zext i16 %411 to i32
  %shl.i241 = shl nuw nsw i32 %conv148.i, 8
  %win.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2
  %412 = ptrtoint ptr %win.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %shl.i241, ptr %win.i, align 4
  %card_addr.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 0, i32 1
  %413 = ptrtoint ptr %card_addr.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 0, ptr %card_addr.i, align 4
  %host_addr.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 0, i32 2
  %414 = ptrtoint ptr %host_addr.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %host_addr.i, align 4
  %add.ptr156.i = getelementptr i8, ptr %p.6.i, i32 2
  %cmp157.i = icmp ugt ptr %add.ptr156.i, %add.ptr.i231
  br i1 %cmp157.i, label %sw.bb144.i.do.body_crit_edge, label %sw.bb144.i.sw.epilog.i244_crit_edge

sw.bb144.i.sw.epilog.i244_crit_edge:              ; preds = %sw.bb144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i244

sw.bb144.i.do.body_crit_edge:                     ; preds = %sw.bb144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb161.i:                                       ; preds = %if.end140.i
  %nwin163.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 1
  %415 = ptrtoint ptr %nwin163.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 1, ptr %nwin163.i, align 1
  %416 = ptrtoint ptr %p.6.i to i32
  call void @__asan_loadN_noabort(i32 %416, i32 2)
  %417 = load i16, ptr %p.6.i, align 1
  %418 = tail call i16 @llvm.bswap.i16(i16 %417) #9
  %conv165.i = zext i16 %418 to i32
  %shl166.i = shl nuw nsw i32 %conv165.i, 8
  %win168.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2
  %419 = ptrtoint ptr %win168.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %shl166.i, ptr %win168.i, align 4
  %add.ptr171.i = getelementptr i8, ptr %p.6.i, i32 2
  %420 = ptrtoint ptr %add.ptr171.i to i32
  call void @__asan_loadN_noabort(i32 %420, i32 2)
  %421 = load i16, ptr %add.ptr171.i, align 1
  %422 = tail call i16 @llvm.bswap.i16(i16 %421) #9
  %conv173.i = zext i16 %422 to i32
  %shl174.i = shl nuw nsw i32 %conv173.i, 8
  %card_addr178.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 0, i32 1
  %423 = ptrtoint ptr %card_addr178.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %shl174.i, ptr %card_addr178.i, align 4
  %host_addr182.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 0, i32 2
  %424 = ptrtoint ptr %host_addr182.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 0, ptr %host_addr182.i, align 4
  %add.ptr183.i = getelementptr i8, ptr %p.6.i, i32 4
  %cmp184.i = icmp ugt ptr %add.ptr183.i, %add.ptr.i231
  br i1 %cmp184.i, label %sw.bb161.i.do.body_crit_edge, label %sw.bb161.i.sw.epilog.i244_crit_edge

sw.bb161.i.sw.epilog.i244_crit_edge:              ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i244

sw.bb161.i.do.body_crit_edge:                     ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb188.i:                                       ; preds = %if.end140.i
  %q157.i.i = ptrtoint ptr %add.ptr.i231 to i32
  %cmp.i335.i = icmp eq ptr %p.6.i, %add.ptr.i231
  br i1 %cmp.i335.i, label %sw.bb188.i.do.body_crit_edge, label %if.end.i339.i

sw.bb188.i.do.body_crit_edge:                     ; preds = %sw.bb188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i339.i:                                    ; preds = %sw.bb188.i
  %425 = ptrtoint ptr %p.6.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %p.6.i, align 1
  %427 = and i8 %426, 7
  %narrow.i336.i = add nuw nsw i8 %427, 1
  %nwin.i337.i = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 1
  %428 = ptrtoint ptr %nwin.i337.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %narrow.i336.i, ptr %nwin.i337.i, align 1
  %429 = load i8, ptr %p.6.i, align 1
  %conv2.i.i = zext i8 %429 to i32
  %and3.i.i = lshr i32 %conv2.i.i, 3
  %430 = and i32 %and3.i.i, 3
  %and5.i.i = lshr i32 %conv2.i.i, 5
  %431 = and i32 %and5.i.i, 3
  %incdec.ptr.i338.i = getelementptr i8, ptr %p.6.i, i32 1
  %cmp9.i.i242 = icmp eq ptr %incdec.ptr.i338.i, %add.ptr.i231
  br i1 %cmp9.i.i242, label %if.end.i339.i.do.body_crit_edge, label %for.cond17.preheader.lr.ph.i.i

if.end.i339.i.do.body_crit_edge:                  ; preds = %if.end.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond17.preheader.lr.ph.i.i:                   ; preds = %if.end.i339.i
  %and8.i.i = and i32 %conv2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %cmp18131.not.i.i = icmp eq i32 %430, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %cmp29136.not.i.i = icmp eq i32 %431, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i340.i = icmp eq i32 %and8.i.i, 0
  %432 = add nsw i32 %430, -1
  %433 = add nsw i32 %431, -1
  %brmerge.i.i = select i1 %tobool.not.i340.i, i1 true, i1 %cmp29136.not.i.i
  %434 = shl nuw nsw i32 %431, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %430)
  %exitcond.not.i345.i = icmp eq i32 %430, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %430)
  %exitcond.not.i345.i.1 = icmp eq i32 %430, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %431)
  %exitcond161.not.i.i = icmp eq i32 %431, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %431)
  %exitcond161.not.i.i.1 = icmp eq i32 %431, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %431)
  %exitcond164.not.i.i = icmp eq i32 %431, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %431)
  %exitcond164.not.i.i.1 = icmp eq i32 %431, 2
  br label %for.cond17.preheader.i.i

for.cond17.preheader.i.i:                         ; preds = %if.end61.i.i.for.cond17.preheader.i.i_crit_edge, %for.cond17.preheader.lr.ph.i.i
  %i.0151.i.i = phi i32 [ 0, %for.cond17.preheader.lr.ph.i.i ], [ %inc71.i.i, %if.end61.i.i.for.cond17.preheader.i.i_crit_edge ]
  %p.addr.0150.i.i = phi ptr [ %incdec.ptr.i338.i, %for.cond17.preheader.lr.ph.i.i ], [ %p.addr.4.i.i, %if.end61.i.i.for.cond17.preheader.i.i_crit_edge ]
  %p.addr.0150158.i.i = ptrtoint ptr %p.addr.0150.i.i to i32
  br i1 %cmp18131.not.i.i, label %for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge, label %for.body20.preheader.i.i

for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge: ; preds = %for.cond17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.preheader.i.i

for.body20.preheader.i.i:                         ; preds = %for.cond17.preheader.i.i
  %435 = sub i32 %q157.i.i, %p.addr.0150158.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %435, i32 %432)
  %.not.i.i = icmp ugt i32 %435, %432
  br i1 %.not.i.i, label %for.body20.i.i, label %for.body20.preheader.i.i.do.body_crit_edge

for.body20.preheader.i.i.do.body_crit_edge:       ; preds = %for.body20.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond28.preheader.loopexit.i.i:                ; preds = %for.body20.i.i.2, %for.body20.i.i.1.for.cond28.preheader.loopexit.i.i_crit_edge, %for.body20.i.i.for.cond28.preheader.loopexit.i.i_crit_edge
  %add26.i.i.lcssa = phi i32 [ %conv25.i.i, %for.body20.i.i.for.cond28.preheader.loopexit.i.i_crit_edge ], [ %add26.i.i.1, %for.body20.i.i.1.for.cond28.preheader.loopexit.i.i_crit_edge ], [ %add26.i.i.2, %for.body20.i.i.2 ]
  %uglygep.i243 = getelementptr i8, ptr %p.addr.0150.i.i, i32 %430
  %.pre.i.i = ptrtoint ptr %uglygep.i243 to i32
  br label %for.cond28.preheader.i.i

for.cond28.preheader.i.i:                         ; preds = %for.cond28.preheader.loopexit.i.i, %for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge
  %p.addr.1.lcssa159.pre-phi.i.i = phi i32 [ %.pre.i.i, %for.cond28.preheader.loopexit.i.i ], [ %p.addr.0150158.i.i, %for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge ]
  %p.addr.1.lcssa.i341.i = phi ptr [ %uglygep.i243, %for.cond28.preheader.loopexit.i.i ], [ %p.addr.0150.i.i, %for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge ]
  %len.0.lcssa.i.i = phi i32 [ %add26.i.i.lcssa, %for.cond28.preheader.loopexit.i.i ], [ 0, %for.cond17.preheader.i.i.for.cond28.preheader.i.i_crit_edge ]
  br i1 %cmp29136.not.i.i, label %for.cond28.preheader.i.i.if.end61.i.i_crit_edge, label %for.body31.preheader.i.i

for.cond28.preheader.i.i.if.end61.i.i_crit_edge:  ; preds = %for.cond28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i.i

for.body31.preheader.i.i:                         ; preds = %for.cond28.preheader.i.i
  %436 = sub i32 %q157.i.i, %p.addr.1.lcssa159.pre-phi.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %436, i32 %433)
  %.not166.i.i = icmp ugt i32 %436, %433
  br i1 %.not166.i.i, label %for.body31.i.i, label %for.body31.preheader.i.i.do.body_crit_edge

for.body31.preheader.i.i.do.body_crit_edge:       ; preds = %for.body31.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body20.i.i:                                   ; preds = %for.body20.preheader.i.i
  %437 = ptrtoint ptr %p.addr.0150.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %p.addr.0150.i.i, align 1
  %conv25.i.i = zext i8 %438 to i32
  br i1 %exitcond.not.i345.i, label %for.body20.i.i.for.cond28.preheader.loopexit.i.i_crit_edge, label %for.body20.i.i.1

for.body20.i.i.for.cond28.preheader.loopexit.i.i_crit_edge: ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.preheader.loopexit.i.i

for.body20.i.i.1:                                 ; preds = %for.body20.i.i
  %incdec.ptr27.i344.i = getelementptr i8, ptr %p.addr.0150.i.i, i32 1
  %439 = ptrtoint ptr %incdec.ptr27.i344.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %incdec.ptr27.i344.i, align 1
  %conv25.i.i.1 = zext i8 %440 to i32
  %shl.i343.i.1 = shl nuw nsw i32 %conv25.i.i.1, 8
  %add26.i.i.1 = or i32 %shl.i343.i.1, %conv25.i.i
  br i1 %exitcond.not.i345.i.1, label %for.body20.i.i.1.for.cond28.preheader.loopexit.i.i_crit_edge, label %for.body20.i.i.2

for.body20.i.i.1.for.cond28.preheader.loopexit.i.i_crit_edge: ; preds = %for.body20.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.preheader.loopexit.i.i

for.body20.i.i.2:                                 ; preds = %for.body20.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr27.i344.i.1 = getelementptr i8, ptr %p.addr.0150.i.i, i32 2
  %441 = ptrtoint ptr %incdec.ptr27.i344.i.1 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %incdec.ptr27.i344.i.1, align 1
  %conv25.i.i.2 = zext i8 %442 to i32
  %shl.i343.i.2 = shl nuw nsw i32 %conv25.i.i.2, 16
  %add26.i.i.2 = or i32 %shl.i343.i.2, %add26.i.i.1
  br label %for.cond28.preheader.loopexit.i.i

for.body31.i.i:                                   ; preds = %for.body31.preheader.i.i
  %443 = ptrtoint ptr %p.addr.1.lcssa.i341.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %p.addr.1.lcssa.i341.i, align 1
  %conv36.i.i = zext i8 %444 to i32
  br i1 %exitcond161.not.i.i, label %for.body31.i.i.for.end43.i.i_crit_edge, label %for.body31.i.i.1

for.body31.i.i.for.end43.i.i_crit_edge:           ; preds = %for.body31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43.i.i

for.body31.i.i.1:                                 ; preds = %for.body31.i.i
  %incdec.ptr42.i.i = getelementptr i8, ptr %p.addr.1.lcssa.i341.i, i32 1
  %445 = ptrtoint ptr %incdec.ptr42.i.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %incdec.ptr42.i.i, align 1
  %conv36.i.i.1 = zext i8 %446 to i32
  %shl38.i.i.1 = shl nuw nsw i32 %conv36.i.i.1, 8
  %add39.i.i.1 = or i32 %shl38.i.i.1, %conv36.i.i
  br i1 %exitcond161.not.i.i.1, label %for.body31.i.i.1.for.end43.i.i_crit_edge, label %for.body31.i.i.2

for.body31.i.i.1.for.end43.i.i_crit_edge:         ; preds = %for.body31.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43.i.i

for.body31.i.i.2:                                 ; preds = %for.body31.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr42.i.i.1 = getelementptr i8, ptr %p.addr.1.lcssa.i341.i, i32 2
  %447 = ptrtoint ptr %incdec.ptr42.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %incdec.ptr42.i.i.1, align 1
  %conv36.i.i.2 = zext i8 %448 to i32
  %shl38.i.i.2 = shl nuw nsw i32 %conv36.i.i.2, 16
  %add39.i.i.2 = or i32 %shl38.i.i.2, %add39.i.i.1
  br label %for.end43.i.i

for.end43.i.i:                                    ; preds = %for.body31.i.i.2, %for.body31.i.i.1.for.end43.i.i_crit_edge, %for.body31.i.i.for.end43.i.i_crit_edge
  %add39.i.i.lcssa = phi i32 [ %conv36.i.i, %for.body31.i.i.for.end43.i.i_crit_edge ], [ %add39.i.i.1, %for.body31.i.i.1.for.end43.i.i_crit_edge ], [ %add39.i.i.2, %for.body31.i.i.2 ]
  %uglygep373.i = getelementptr i8, ptr %p.addr.1.lcssa.i341.i, i32 %431
  br i1 %brmerge.i.i, label %for.end43.i.i.if.end61.i.i_crit_edge, label %for.body48.preheader.i.i

for.end43.i.i.if.end61.i.i_crit_edge:             ; preds = %for.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i.i

for.body48.preheader.i.i:                         ; preds = %for.end43.i.i
  %.pre165.i.i = ptrtoint ptr %uglygep373.i to i32
  %449 = sub i32 %q157.i.i, %.pre165.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %449, i32 %433)
  %.not167.i.i = icmp ugt i32 %449, %433
  br i1 %.not167.i.i, label %for.body48.i.i, label %for.body48.preheader.i.i.do.body_crit_edge

for.body48.preheader.i.i.do.body_crit_edge:       ; preds = %for.body48.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body48.i.i:                                   ; preds = %for.body48.preheader.i.i
  %450 = ptrtoint ptr %uglygep373.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %uglygep373.i, align 1
  %conv53.i.i = zext i8 %451 to i32
  br i1 %exitcond164.not.i.i, label %for.body48.i.i.if.end61.i.loopexit.i_crit_edge, label %for.body48.i.i.1

for.body48.i.i.if.end61.i.loopexit.i_crit_edge:   ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i.loopexit.i

for.body48.i.i.1:                                 ; preds = %for.body48.i.i
  %incdec.ptr59.i.i = getelementptr i8, ptr %uglygep373.i, i32 1
  %452 = ptrtoint ptr %incdec.ptr59.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %incdec.ptr59.i.i, align 1
  %conv53.i.i.1 = zext i8 %453 to i32
  %shl55.i.i.1 = shl nuw nsw i32 %conv53.i.i.1, 8
  %add56.i.i.1 = or i32 %shl55.i.i.1, %conv53.i.i
  br i1 %exitcond164.not.i.i.1, label %for.body48.i.i.1.if.end61.i.loopexit.i_crit_edge, label %for.body48.i.i.2

for.body48.i.i.1.if.end61.i.loopexit.i_crit_edge: ; preds = %for.body48.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i.loopexit.i

for.body48.i.i.2:                                 ; preds = %for.body48.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr59.i.i.1 = getelementptr i8, ptr %incdec.ptr59.i.i, i32 1
  %454 = ptrtoint ptr %incdec.ptr59.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %incdec.ptr59.i.i.1, align 1
  %conv53.i.i.2 = zext i8 %455 to i32
  %shl55.i.i.2 = shl nuw nsw i32 %conv53.i.i.2, 16
  %add56.i.i.2 = or i32 %shl55.i.i.2, %add56.i.i.1
  br label %if.end61.i.loopexit.i

if.end61.i.loopexit.i:                            ; preds = %for.body48.i.i.2, %for.body48.i.i.1.if.end61.i.loopexit.i_crit_edge, %for.body48.i.i.if.end61.i.loopexit.i_crit_edge
  %add56.i.i.lcssa = phi i32 [ %conv53.i.i, %for.body48.i.i.if.end61.i.loopexit.i_crit_edge ], [ %add56.i.i.1, %for.body48.i.i.1.if.end61.i.loopexit.i_crit_edge ], [ %add56.i.i.2, %for.body48.i.i.2 ]
  %uglygep374.i = getelementptr i8, ptr %p.addr.1.lcssa.i341.i, i32 %434
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end61.i.loopexit.i, %for.end43.i.i.if.end61.i.i_crit_edge, %for.cond28.preheader.i.i.if.end61.i.i_crit_edge
  %ca.0.lcssa172.i.i = phi i32 [ %add39.i.i.lcssa, %for.end43.i.i.if.end61.i.i_crit_edge ], [ 0, %for.cond28.preheader.i.i.if.end61.i.i_crit_edge ], [ %add39.i.i.lcssa, %if.end61.i.loopexit.i ]
  %p.addr.4.i.i = phi ptr [ %uglygep373.i, %for.end43.i.i.if.end61.i.i_crit_edge ], [ %p.addr.1.lcssa.i341.i, %for.cond28.preheader.i.i.if.end61.i.i_crit_edge ], [ %uglygep374.i, %if.end61.i.loopexit.i ]
  %ha.1.i.i = phi i32 [ 0, %for.end43.i.i.if.end61.i.i_crit_edge ], [ 0, %for.cond28.preheader.i.i.if.end61.i.i_crit_edge ], [ %add56.i.i.lcssa, %if.end61.i.loopexit.i ]
  %shl62.i.i = shl i32 %len.0.lcssa.i.i, 8
  %arrayidx.i346.i = getelementptr %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 %i.0151.i.i
  %456 = ptrtoint ptr %arrayidx.i346.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %shl62.i.i, ptr %arrayidx.i346.i, align 4
  %shl64.i.i = shl i32 %ca.0.lcssa172.i.i, 8
  %card_addr.i.i = getelementptr %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 %i.0151.i.i, i32 1
  %457 = ptrtoint ptr %card_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %shl64.i.i, ptr %card_addr.i.i, align 4
  %shl67.i347.i = shl i32 %ha.1.i.i, 8
  %host_addr.i.i = getelementptr %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 9, i32 2, i32 %i.0151.i.i, i32 2
  %458 = ptrtoint ptr %host_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %shl67.i347.i, ptr %host_addr.i.i, align 4
  %inc71.i.i = add nuw nsw i32 %i.0151.i.i, 1
  %459 = ptrtoint ptr %nwin.i337.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %nwin.i337.i, align 1
  %conv14.i.i = zext i8 %460 to i32
  %cmp15.i.i = icmp ult i32 %inc71.i.i, %conv14.i.i
  br i1 %cmp15.i.i, label %if.end61.i.i.for.cond17.preheader.i.i_crit_edge, label %parse_mem.exit.i

if.end61.i.i.for.cond17.preheader.i.i_crit_edge:  ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond17.preheader.i.i

parse_mem.exit.i:                                 ; preds = %if.end61.i.i
  %cmp191.i = icmp eq ptr %p.addr.4.i.i, null
  br i1 %cmp191.i, label %parse_mem.exit.i.do.body_crit_edge, label %parse_mem.exit.i.sw.epilog.i244_crit_edge

parse_mem.exit.i.sw.epilog.i244_crit_edge:        ; preds = %parse_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i244

parse_mem.exit.i.do.body_crit_edge:               ; preds = %parse_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end140.unreachabledefault.i:                   ; preds = %if.end140.i
  unreachable

sw.epilog.i244:                                   ; preds = %parse_mem.exit.i.sw.epilog.i244_crit_edge, %sw.bb161.i.sw.epilog.i244_crit_edge, %sw.bb144.i.sw.epilog.i244_crit_edge, %sw.bb.i
  %p.7.i = phi ptr [ %p.addr.4.i.i, %parse_mem.exit.i.sw.epilog.i244_crit_edge ], [ %add.ptr183.i, %sw.bb161.i.sw.epilog.i244_crit_edge ], [ %add.ptr156.i, %sw.bb144.i.sw.epilog.i244_crit_edge ], [ %p.6.i, %sw.bb.i ]
  %and196.i = and i32 %conv63.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %sw.epilog.i244.if.end218.i_crit_edge, label %if.then198.i

sw.epilog.i244.if.end218.i_crit_edge:             ; preds = %sw.epilog.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218.i

if.then198.i:                                     ; preds = %sw.epilog.i244
  %cmp199.i = icmp eq ptr %p.7.i, %add.ptr.i231
  br i1 %cmp199.i, label %if.then198.i.do.body_crit_edge, label %if.end202.i

if.then198.i.do.body_crit_edge:                   ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end202.i:                                      ; preds = %if.then198.i
  %461 = ptrtoint ptr %p.7.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %p.7.i, align 1
  %conv203.i = zext i8 %462 to i16
  %shl204.i = shl nuw i16 %conv203.i, 8
  %463 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %flags.i, align 2
  %or207.i = or i16 %shl204.i, %464
  store i16 %or207.i, ptr %flags.i, align 2
  br label %while.cond.i245

while.cond.i245:                                  ; preds = %while.body.i246.while.cond.i245_crit_edge, %if.end202.i
  %p.8.i = phi ptr [ %p.7.i, %if.end202.i ], [ %incdec.ptr217.i, %while.body.i246.while.cond.i245_crit_edge ]
  %465 = ptrtoint ptr %p.8.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %p.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %466)
  %tobool211.not.i = icmp sgt i8 %466, -1
  %incdec.ptr217.i = getelementptr i8, ptr %p.8.i, i32 1
  br i1 %tobool211.not.i, label %while.cond.i245.if.end218.i_crit_edge, label %while.body.i246

while.cond.i245.if.end218.i_crit_edge:            ; preds = %while.cond.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218.i

while.body.i246:                                  ; preds = %while.cond.i245
  %cmp213.i = icmp eq ptr %incdec.ptr217.i, %add.ptr.i231
  br i1 %cmp213.i, label %while.body.i246.do.body_crit_edge, label %while.body.i246.while.cond.i245_crit_edge

while.body.i246.while.cond.i245_crit_edge:        ; preds = %while.body.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i245

while.body.i246.do.body_crit_edge:                ; preds = %while.body.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end218.i:                                      ; preds = %while.cond.i245.if.end218.i_crit_edge, %sw.epilog.i244.if.end218.i_crit_edge
  %p.9.i = phi ptr [ %p.7.i, %sw.epilog.i244.if.end218.i_crit_edge ], [ %incdec.ptr217.i, %while.cond.i245.if.end218.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i231 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.9.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv219.i = trunc i32 %sub.ptr.sub.i to i8
  %subtuples.i247 = getelementptr inbounds %struct.cistpl_cftable_entry_t, ptr %parse, i32 0, i32 10
  %467 = ptrtoint ptr %subtuples.i247 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %conv219.i, ptr %subtuples.i247, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end.sw.bb26_crit_edge, %if.end.sw.bb26_crit_edge643
  %TupleData.i249 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %468 = ptrtoint ptr %TupleData.i249 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %TupleData.i249, align 4
  %conv.i251 = zext i8 %1 to i32
  %add.ptr.i252 = getelementptr i8, ptr %469, i32 %conv.i251
  %add.ptr2.i253 = getelementptr i8, ptr %add.ptr.i252, i32 -6
  %cmp31.i254 = icmp ugt ptr %469, %add.ptr2.i253
  br i1 %cmp31.i254, label %sw.bb26.parse_device_geo.exit_crit_edge, label %if.end.i264

sw.bb26.parse_device_geo.exit_crit_edge:          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_device_geo.exit

if.end.i264:                                      ; preds = %sw.bb26
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %469, align 1
  %arrayidx6.i256 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0
  %472 = ptrtoint ptr %arrayidx6.i256 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %arrayidx6.i256, align 4
  %arrayidx7.i257 = getelementptr i8, ptr %469, i32 1
  %473 = ptrtoint ptr %arrayidx7.i257 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx7.i257, align 1
  %conv8.i = zext i8 %474 to i32
  %sub.i258 = add nsw i32 %conv8.i, -1
  %shl.i259 = shl nuw i32 1, %sub.i258
  %erase_block.i = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0, i32 1
  %475 = ptrtoint ptr %erase_block.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %shl.i259, ptr %erase_block.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %469, i32 2
  %476 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %477 to i32
  %sub13.i = add nsw i32 %conv12.i, -1
  %shl14.i = shl nuw i32 1, %sub13.i
  %read_block.i = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0, i32 2
  %478 = ptrtoint ptr %read_block.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %shl14.i, ptr %read_block.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %469, i32 3
  %479 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %480 to i32
  %sub19.i = add nsw i32 %conv18.i, -1
  %shl20.i = shl nuw i32 1, %sub19.i
  %write_block.i = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0, i32 3
  %481 = ptrtoint ptr %write_block.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %shl20.i, ptr %write_block.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %469, i32 4
  %482 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %483 to i32
  %sub25.i = add nsw i32 %conv24.i, -1
  %shl26.i = shl nuw i32 1, %sub25.i
  %partition.i = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0, i32 4
  %484 = ptrtoint ptr %partition.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %shl26.i, ptr %partition.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %469, i32 5
  %485 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %486 to i32
  %sub31.i = add nsw i32 %conv30.i, -1
  %shl32.i = shl nuw i32 1, %sub31.i
  %interleave.i = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 0, i32 5
  %487 = ptrtoint ptr %interleave.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %shl32.i, ptr %interleave.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %469, i32 6
  %cmp3.i262 = icmp ugt ptr %add.ptr35.i, %add.ptr2.i253
  br i1 %cmp3.i262, label %if.end.i264.parse_device_geo.exit_crit_edge, label %if.end.i264.1

if.end.i264.parse_device_geo.exit_crit_edge:      ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_device_geo.exit

if.end.i264.1:                                    ; preds = %if.end.i264
  %488 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %add.ptr35.i, align 1
  %arrayidx6.i256.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1
  %490 = ptrtoint ptr %arrayidx6.i256.1 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %489, ptr %arrayidx6.i256.1, align 4
  %arrayidx7.i257.1 = getelementptr i8, ptr %469, i32 7
  %491 = ptrtoint ptr %arrayidx7.i257.1 to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %arrayidx7.i257.1, align 1
  %conv8.i.1 = zext i8 %492 to i32
  %sub.i258.1 = add nsw i32 %conv8.i.1, -1
  %shl.i259.1 = shl nuw i32 1, %sub.i258.1
  %erase_block.i.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1, i32 1
  %493 = ptrtoint ptr %erase_block.i.1 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %shl.i259.1, ptr %erase_block.i.1, align 4
  %arrayidx11.i.1 = getelementptr i8, ptr %469, i32 8
  %494 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx11.i.1, align 1
  %conv12.i.1 = zext i8 %495 to i32
  %sub13.i.1 = add nsw i32 %conv12.i.1, -1
  %shl14.i.1 = shl nuw i32 1, %sub13.i.1
  %read_block.i.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1, i32 2
  %496 = ptrtoint ptr %read_block.i.1 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %shl14.i.1, ptr %read_block.i.1, align 4
  %arrayidx17.i.1 = getelementptr i8, ptr %469, i32 9
  %497 = ptrtoint ptr %arrayidx17.i.1 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx17.i.1, align 1
  %conv18.i.1 = zext i8 %498 to i32
  %sub19.i.1 = add nsw i32 %conv18.i.1, -1
  %shl20.i.1 = shl nuw i32 1, %sub19.i.1
  %write_block.i.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1, i32 3
  %499 = ptrtoint ptr %write_block.i.1 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %shl20.i.1, ptr %write_block.i.1, align 4
  %arrayidx23.i.1 = getelementptr i8, ptr %469, i32 10
  %500 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx23.i.1, align 1
  %conv24.i.1 = zext i8 %501 to i32
  %sub25.i.1 = add nsw i32 %conv24.i.1, -1
  %shl26.i.1 = shl nuw i32 1, %sub25.i.1
  %partition.i.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1, i32 4
  %502 = ptrtoint ptr %partition.i.1 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 %shl26.i.1, ptr %partition.i.1, align 4
  %arrayidx29.i.1 = getelementptr i8, ptr %469, i32 11
  %503 = ptrtoint ptr %arrayidx29.i.1 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx29.i.1, align 1
  %conv30.i.1 = zext i8 %504 to i32
  %sub31.i.1 = add nsw i32 %conv30.i.1, -1
  %shl32.i.1 = shl nuw i32 1, %sub31.i.1
  %interleave.i.1 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 1, i32 5
  %505 = ptrtoint ptr %interleave.i.1 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %shl32.i.1, ptr %interleave.i.1, align 4
  %add.ptr35.i.1 = getelementptr i8, ptr %469, i32 12
  %cmp3.i262.1 = icmp ugt ptr %add.ptr35.i.1, %add.ptr2.i253
  br i1 %cmp3.i262.1, label %if.end.i264.1.parse_device_geo.exit_crit_edge, label %if.end.i264.2

if.end.i264.1.parse_device_geo.exit_crit_edge:    ; preds = %if.end.i264.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_device_geo.exit

if.end.i264.2:                                    ; preds = %if.end.i264.1
  %506 = ptrtoint ptr %add.ptr35.i.1 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %add.ptr35.i.1, align 1
  %arrayidx6.i256.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2
  %508 = ptrtoint ptr %arrayidx6.i256.2 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %507, ptr %arrayidx6.i256.2, align 4
  %arrayidx7.i257.2 = getelementptr i8, ptr %469, i32 13
  %509 = ptrtoint ptr %arrayidx7.i257.2 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx7.i257.2, align 1
  %conv8.i.2 = zext i8 %510 to i32
  %sub.i258.2 = add nsw i32 %conv8.i.2, -1
  %shl.i259.2 = shl nuw i32 1, %sub.i258.2
  %erase_block.i.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2, i32 1
  %511 = ptrtoint ptr %erase_block.i.2 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %shl.i259.2, ptr %erase_block.i.2, align 4
  %arrayidx11.i.2 = getelementptr i8, ptr %469, i32 14
  %512 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx11.i.2, align 1
  %conv12.i.2 = zext i8 %513 to i32
  %sub13.i.2 = add nsw i32 %conv12.i.2, -1
  %shl14.i.2 = shl nuw i32 1, %sub13.i.2
  %read_block.i.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2, i32 2
  %514 = ptrtoint ptr %read_block.i.2 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %shl14.i.2, ptr %read_block.i.2, align 4
  %arrayidx17.i.2 = getelementptr i8, ptr %469, i32 15
  %515 = ptrtoint ptr %arrayidx17.i.2 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx17.i.2, align 1
  %conv18.i.2 = zext i8 %516 to i32
  %sub19.i.2 = add nsw i32 %conv18.i.2, -1
  %shl20.i.2 = shl nuw i32 1, %sub19.i.2
  %write_block.i.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2, i32 3
  %517 = ptrtoint ptr %write_block.i.2 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %shl20.i.2, ptr %write_block.i.2, align 4
  %arrayidx23.i.2 = getelementptr i8, ptr %469, i32 16
  %518 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx23.i.2, align 1
  %conv24.i.2 = zext i8 %519 to i32
  %sub25.i.2 = add nsw i32 %conv24.i.2, -1
  %shl26.i.2 = shl nuw i32 1, %sub25.i.2
  %partition.i.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2, i32 4
  %520 = ptrtoint ptr %partition.i.2 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %shl26.i.2, ptr %partition.i.2, align 4
  %arrayidx29.i.2 = getelementptr i8, ptr %469, i32 17
  %521 = ptrtoint ptr %arrayidx29.i.2 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx29.i.2, align 1
  %conv30.i.2 = zext i8 %522 to i32
  %sub31.i.2 = add nsw i32 %conv30.i.2, -1
  %shl32.i.2 = shl nuw i32 1, %sub31.i.2
  %interleave.i.2 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 2, i32 5
  %523 = ptrtoint ptr %interleave.i.2 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %shl32.i.2, ptr %interleave.i.2, align 4
  %add.ptr35.i.2 = getelementptr i8, ptr %469, i32 18
  %cmp3.i262.2 = icmp ugt ptr %add.ptr35.i.2, %add.ptr2.i253
  br i1 %cmp3.i262.2, label %if.end.i264.2.parse_device_geo.exit_crit_edge, label %if.end.i264.3

if.end.i264.2.parse_device_geo.exit_crit_edge:    ; preds = %if.end.i264.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_device_geo.exit

if.end.i264.3:                                    ; preds = %if.end.i264.2
  call void @__sanitizer_cov_trace_pc() #11
  %524 = ptrtoint ptr %add.ptr35.i.2 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %add.ptr35.i.2, align 1
  %arrayidx6.i256.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3
  %526 = ptrtoint ptr %arrayidx6.i256.3 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %525, ptr %arrayidx6.i256.3, align 4
  %arrayidx7.i257.3 = getelementptr i8, ptr %469, i32 19
  %527 = ptrtoint ptr %arrayidx7.i257.3 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx7.i257.3, align 1
  %conv8.i.3 = zext i8 %528 to i32
  %sub.i258.3 = add nsw i32 %conv8.i.3, -1
  %shl.i259.3 = shl nuw i32 1, %sub.i258.3
  %erase_block.i.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3, i32 1
  %529 = ptrtoint ptr %erase_block.i.3 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %shl.i259.3, ptr %erase_block.i.3, align 4
  %arrayidx11.i.3 = getelementptr i8, ptr %469, i32 20
  %530 = ptrtoint ptr %arrayidx11.i.3 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %arrayidx11.i.3, align 1
  %conv12.i.3 = zext i8 %531 to i32
  %sub13.i.3 = add nsw i32 %conv12.i.3, -1
  %shl14.i.3 = shl nuw i32 1, %sub13.i.3
  %read_block.i.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3, i32 2
  %532 = ptrtoint ptr %read_block.i.3 to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %shl14.i.3, ptr %read_block.i.3, align 4
  %arrayidx17.i.3 = getelementptr i8, ptr %469, i32 21
  %533 = ptrtoint ptr %arrayidx17.i.3 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %arrayidx17.i.3, align 1
  %conv18.i.3 = zext i8 %534 to i32
  %sub19.i.3 = add nsw i32 %conv18.i.3, -1
  %shl20.i.3 = shl nuw i32 1, %sub19.i.3
  %write_block.i.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3, i32 3
  %535 = ptrtoint ptr %write_block.i.3 to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 %shl20.i.3, ptr %write_block.i.3, align 4
  %arrayidx23.i.3 = getelementptr i8, ptr %469, i32 22
  %536 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %arrayidx23.i.3, align 1
  %conv24.i.3 = zext i8 %537 to i32
  %sub25.i.3 = add nsw i32 %conv24.i.3, -1
  %shl26.i.3 = shl nuw i32 1, %sub25.i.3
  %partition.i.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3, i32 4
  %538 = ptrtoint ptr %partition.i.3 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %shl26.i.3, ptr %partition.i.3, align 4
  %arrayidx29.i.3 = getelementptr i8, ptr %469, i32 23
  %539 = ptrtoint ptr %arrayidx29.i.3 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %arrayidx29.i.3, align 1
  %conv30.i.3 = zext i8 %540 to i32
  %sub31.i.3 = add nsw i32 %conv30.i.3, -1
  %shl32.i.3 = shl nuw i32 1, %sub31.i.3
  %interleave.i.3 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 3, i32 5
  %541 = ptrtoint ptr %interleave.i.3 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %shl32.i.3, ptr %interleave.i.3, align 4
  br label %parse_device_geo.exit

parse_device_geo.exit:                            ; preds = %if.end.i264.3, %if.end.i264.2.parse_device_geo.exit_crit_edge, %if.end.i264.1.parse_device_geo.exit_crit_edge, %if.end.i264.parse_device_geo.exit_crit_edge, %sw.bb26.parse_device_geo.exit_crit_edge
  %n.0.lcssa.i = phi i8 [ 0, %sw.bb26.parse_device_geo.exit_crit_edge ], [ 1, %if.end.i264.parse_device_geo.exit_crit_edge ], [ 2, %if.end.i264.1.parse_device_geo.exit_crit_edge ], [ 3, %if.end.i264.2.parse_device_geo.exit_crit_edge ], [ 4, %if.end.i264.3 ]
  %542 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 %n.0.lcssa.i, ptr %parse, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.i269 = icmp ult i8 %1, 10
  br i1 %cmp.i269, label %sw.bb28.do.body_crit_edge, label %if.end.i279

sw.bb28.do.body_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i279:                                      ; preds = %sw.bb28
  %conv.i270 = zext i8 %1 to i32
  %TupleData.i271 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %543 = ptrtoint ptr %TupleData.i271 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %TupleData.i271, align 4
  %add.ptr.i272 = getelementptr i8, ptr %544, i32 %conv.i270
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %544, align 1
  %547 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 %546, ptr %parse, align 2
  %arrayidx4.i = getelementptr i8, ptr %544, i32 1
  %548 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %arrayidx4.i, align 1
  %comply.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 1
  %550 = ptrtoint ptr %comply.i to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 %549, ptr %comply.i, align 1
  %add.ptr5.i273 = getelementptr i8, ptr %544, i32 2
  %551 = ptrtoint ptr %add.ptr5.i273 to i32
  call void @__asan_loadN_noabort(i32 %551, i32 2)
  %552 = load i16, ptr %add.ptr5.i273, align 1
  %553 = tail call i16 @llvm.bswap.i16(i16 %552) #9
  %dindex.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 2
  %554 = ptrtoint ptr %dindex.i to i32
  call void @__asan_store2_noabort(i32 %554)
  store i16 %553, ptr %dindex.i, align 2
  %arrayidx6.i274 = getelementptr i8, ptr %544, i32 6
  %555 = ptrtoint ptr %arrayidx6.i274 to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %arrayidx6.i274, align 1
  %vspec8.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 3
  %557 = ptrtoint ptr %vspec8.i to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %556, ptr %vspec8.i, align 2
  %arrayidx7.i275 = getelementptr i8, ptr %544, i32 7
  %558 = ptrtoint ptr %arrayidx7.i275 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %arrayidx7.i275, align 1
  %vspec9.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 4
  %560 = ptrtoint ptr %vspec9.i to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %559, ptr %vspec9.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %544, i32 8
  %561 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %arrayidx8.i, align 1
  %nhdr.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 5
  %563 = ptrtoint ptr %nhdr.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %562, ptr %nhdr.i, align 2
  %add.ptr9.i276 = getelementptr i8, ptr %544, i32 9
  %str.i277 = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 8
  %vendor.i = getelementptr inbounds %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 6
  %cmp.i.i278 = icmp eq ptr %add.ptr9.i276, %add.ptr.i272
  br i1 %cmp.i.i278, label %if.end.i279.do.body_crit_edge, label %for.body.i.preheader.i281

if.end.i279.do.body_crit_edge:                    ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.i.preheader.i281:                        ; preds = %if.end.i279
  %564 = ptrtoint ptr %add.ptr9.i276 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %add.ptr9.i276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %565)
  %cmp2.i.i280 = icmp eq i8 %565, -1
  br i1 %cmp2.i.i280, label %for.body.i.preheader.i281.do.body_crit_edge, label %if.end5.i.i297

for.body.i.preheader.i281.do.body_crit_edge:      ; preds = %for.body.i.preheader.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.i.i283:                                  ; preds = %lor.lhs.false30.i.i310
  %566 = ptrtoint ptr %incdec.ptr31.i.i308 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %incdec.ptr31.i.i308, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %567)
  %cmp2.i.1.i282 = icmp eq i8 %567, -1
  br i1 %cmp2.i.1.i282, label %for.cond.i.i283.do.body_crit_edge, label %if.end5.i.1.i286

for.cond.i.i283.do.body_crit_edge:                ; preds = %for.cond.i.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.1.i286:                                 ; preds = %for.cond.i.i283
  %conv6.i.1.i284 = trunc i32 %inc13.i.i302 to i8
  %arrayidx.i.1.i285 = getelementptr %struct.cistpl_vers_2_t, ptr %parse, i32 0, i32 7
  %568 = ptrtoint ptr %arrayidx.i.1.i285 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 %conv6.i.1.i284, ptr %arrayidx.i.1.i285, align 1
  br label %for.cond7.i.1.i292

for.cond7.i.1.i292:                               ; preds = %if.end22.i.1.i296.for.cond7.i.1.i292_crit_edge, %if.end5.i.1.i286
  %p.addr.1.i.1.i287 = phi ptr [ %incdec.ptr31.i.i308, %if.end5.i.1.i286 ], [ %incdec.ptr.i.1.i294, %if.end22.i.1.i296.for.cond7.i.1.i292_crit_edge ]
  %j.1.i.1.i288 = phi i32 [ %inc13.i.i302, %if.end5.i.1.i286 ], [ %inc13.i.1.i293, %if.end22.i.1.i296.for.cond7.i.1.i292_crit_edge ]
  %569 = ptrtoint ptr %p.addr.1.i.1.i287 to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %p.addr.1.i.1.i287, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %570)
  %cmp9.i.1.i289 = icmp eq i8 %570, -1
  %spec.select.i.1.i290 = select i1 %cmp9.i.1.i289, i8 0, i8 %570
  %arrayidx14.i.1.i291 = getelementptr i8, ptr %str.i277, i32 %j.1.i.1.i288
  %571 = ptrtoint ptr %arrayidx14.i.1.i291 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %spec.select.i.1.i290, ptr %arrayidx14.i.1.i291, align 1
  %572 = ptrtoint ptr %p.addr.1.i.1.i287 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %p.addr.1.i.1.i287, align 1
  %574 = zext i8 %573 to i64
  call void @__sanitizer_cov_trace_switch(i64 %574, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %573, label %if.end22.i.1.i296 [
    i8 -1, label %for.cond7.i.1.i292.cleanup_crit_edge
    i8 0, label %for.cond7.i.1.i292.cleanup_crit_edge648
  ]

for.cond7.i.1.i292.cleanup_crit_edge648:          ; preds = %for.cond7.i.1.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond7.i.1.i292.cleanup_crit_edge:             ; preds = %for.cond7.i.1.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.i.1.i296:                                ; preds = %for.cond7.i.1.i292
  %inc13.i.1.i293 = add i32 %j.1.i.1.i288, 1
  %incdec.ptr.i.1.i294 = getelementptr i8, ptr %p.addr.1.i.1.i287, i32 1
  %cmp23.i.1.i295 = icmp eq ptr %incdec.ptr.i.1.i294, %add.ptr.i272
  br i1 %cmp23.i.1.i295, label %if.end22.i.1.i296.do.body_crit_edge, label %if.end22.i.1.i296.for.cond7.i.1.i292_crit_edge

if.end22.i.1.i296.for.cond7.i.1.i292_crit_edge:   ; preds = %if.end22.i.1.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.1.i292

if.end22.i.1.i296.do.body_crit_edge:              ; preds = %if.end22.i.1.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i.i297:                                   ; preds = %for.body.i.preheader.i281
  %575 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 0, ptr %vendor.i, align 1
  br label %for.cond7.i.i304

for.cond7.i.i304:                                 ; preds = %if.end22.i.i307.for.cond7.i.i304_crit_edge, %if.end5.i.i297
  %p.addr.1.i.i298 = phi ptr [ %add.ptr9.i276, %if.end5.i.i297 ], [ %incdec.ptr.i.i305, %if.end22.i.i307.for.cond7.i.i304_crit_edge ]
  %j.1.i.i299 = phi i32 [ 0, %if.end5.i.i297 ], [ %inc13.i.i302, %if.end22.i.i307.for.cond7.i.i304_crit_edge ]
  %576 = ptrtoint ptr %p.addr.1.i.i298 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %p.addr.1.i.i298, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %577)
  %cmp9.i.i300 = icmp eq i8 %577, -1
  %spec.select.i.i301 = select i1 %cmp9.i.i300, i8 0, i8 %577
  %inc13.i.i302 = add nuw nsw i32 %j.1.i.i299, 1
  %arrayidx14.i.i303 = getelementptr i8, ptr %str.i277, i32 %j.1.i.i299
  %578 = ptrtoint ptr %arrayidx14.i.i303 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %spec.select.i.i301, ptr %arrayidx14.i.i303, align 1
  %579 = ptrtoint ptr %p.addr.1.i.i298 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %p.addr.1.i.i298, align 1
  %581 = zext i8 %580 to i64
  call void @__sanitizer_cov_trace_switch(i64 %581, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %580, label %if.end22.i.i307 [
    i8 -1, label %for.cond7.i.i304.do.body_crit_edge
    i8 0, label %lor.lhs.false30.i.i310
  ]

for.cond7.i.i304.do.body_crit_edge:               ; preds = %for.cond7.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22.i.i307:                                  ; preds = %for.cond7.i.i304
  %incdec.ptr.i.i305 = getelementptr i8, ptr %p.addr.1.i.i298, i32 1
  %cmp23.i.i306 = icmp eq ptr %incdec.ptr.i.i305, %add.ptr.i272
  br i1 %cmp23.i.i306, label %if.end22.i.i307.do.body_crit_edge, label %if.end22.i.i307.for.cond7.i.i304_crit_edge

if.end22.i.i307.for.cond7.i.i304_crit_edge:       ; preds = %if.end22.i.i307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i.i304

if.end22.i.i307.do.body_crit_edge:                ; preds = %if.end22.i.i307
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false30.i.i310:                           ; preds = %for.cond7.i.i304
  %incdec.ptr31.i.i308 = getelementptr i8, ptr %p.addr.1.i.i298, i32 1
  %cmp32.i.i309 = icmp eq ptr %incdec.ptr31.i.i308, %add.ptr.i272
  br i1 %cmp32.i.i309, label %lor.lhs.false30.i.i310.do.body_crit_edge, label %for.cond.i.i283

lor.lhs.false30.i.i310.do.body_crit_edge:         ; preds = %lor.lhs.false30.i.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb30:                                          ; preds = %if.end
  %TupleData.i312 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %582 = ptrtoint ptr %TupleData.i312 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %TupleData.i312, align 4
  %conv.i314 = zext i8 %1 to i32
  %add.ptr.i315 = getelementptr i8, ptr %583, i32 %conv.i314
  %cmp.i316 = icmp eq ptr %583, %add.ptr.i315
  br i1 %cmp.i316, label %sw.bb30.do.body_crit_edge, label %if.end.i318

sw.bb30.do.body_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i318:                                      ; preds = %sw.bb30
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %583, align 1
  %586 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %585, ptr %parse, align 1
  %incdec.ptr.i317 = getelementptr i8, ptr %583, i32 1
  %cmp2.i = icmp eq ptr %incdec.ptr.i317, %add.ptr.i315
  br i1 %cmp2.i, label %if.end.i318.do.body_crit_edge, label %if.end.i318.for.body.i322_crit_edge

if.end.i318.for.body.i322_crit_edge:              ; preds = %if.end.i318
  br label %for.body.i322

if.end.i318.do.body_crit_edge:                    ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.i:                                       ; preds = %if.end12.i
  %inc.i319 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i320 = icmp eq i32 %inc.i319, 30
  br i1 %exitcond.not.i320, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i322_crit_edge

for.cond.i.for.body.i322_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i322

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i322:                                    ; preds = %for.cond.i.for.body.i322_crit_edge, %if.end.i318.for.body.i322_crit_edge
  %i.033.i = phi i32 [ %inc.i319, %for.cond.i.for.body.i322_crit_edge ], [ 0, %if.end.i318.for.body.i322_crit_edge ]
  %p.032.i = phi ptr [ %incdec.ptr13.i, %for.cond.i.for.body.i322_crit_edge ], [ %incdec.ptr.i317, %if.end.i318.for.body.i322_crit_edge ]
  %587 = ptrtoint ptr %p.032.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %p.032.i, align 1
  %arrayidx.i321 = getelementptr %struct.cistpl_org_t, ptr %parse, i32 0, i32 1, i32 %i.033.i
  %589 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %588, ptr %arrayidx.i321, align 1
  %590 = load i8, ptr %p.032.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %590)
  %cmp9.i = icmp eq i8 %590, 0
  br i1 %cmp9.i, label %for.body.i322.cleanup_crit_edge, label %if.end12.i

for.body.i322.cleanup_crit_edge:                  ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %for.body.i322
  %incdec.ptr13.i = getelementptr i8, ptr %p.032.i, i32 1
  %cmp14.i = icmp eq ptr %incdec.ptr13.i, %add.ptr.i315
  br i1 %cmp14.i, label %if.end12.i.do.body_crit_edge, label %for.cond.i

if.end12.i.do.body_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge644
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.i325 = icmp ult i8 %1, 10
  br i1 %cmp.i325, label %sw.bb32.do.body_crit_edge, label %if.end.i329

sw.bb32.do.body_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i329:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %TupleData.i326 = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %591 = ptrtoint ptr %TupleData.i326 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %TupleData.i326, align 4
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %592, align 1
  %595 = ptrtoint ptr %parse to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 %594, ptr %parse, align 4
  %arrayidx2.i327 = getelementptr i8, ptr %592, i32 1
  %596 = ptrtoint ptr %arrayidx2.i327 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx2.i327, align 1
  %edc.i = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 1
  %598 = ptrtoint ptr %edc.i to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %597, ptr %edc.i, align 1
  %add.ptr.i328 = getelementptr i8, ptr %592, i32 2
  %599 = ptrtoint ptr %add.ptr.i328 to i32
  call void @__asan_loadN_noabort(i32 %599, i32 4)
  %600 = load i32, ptr %add.ptr.i328, align 1
  %601 = tail call i32 @llvm.bswap.i32(i32 %600) #9
  %offset.i = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 2
  %602 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 %601, ptr %offset.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %592, i32 6
  %603 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %603, i32 4)
  %604 = load i32, ptr %add.ptr3.i, align 1
  %605 = tail call i32 @llvm.bswap.i32(i32 %604) #9
  %length.i = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 3
  %606 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 %605, ptr %length.i, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %for.end37.i.i181
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %sw.bb32.do.body_crit_edge, %if.end12.i.do.body_crit_edge, %if.end.i318.do.body_crit_edge, %sw.bb30.do.body_crit_edge, %lor.lhs.false30.i.i310.do.body_crit_edge, %if.end22.i.i307.do.body_crit_edge, %for.cond7.i.i304.do.body_crit_edge, %if.end22.i.1.i296.do.body_crit_edge, %for.cond.i.i283.do.body_crit_edge, %for.body.i.preheader.i281.do.body_crit_edge, %if.end.i279.do.body_crit_edge, %sw.bb28.do.body_crit_edge, %while.body.i246.do.body_crit_edge, %if.then198.i.do.body_crit_edge, %parse_mem.exit.i.do.body_crit_edge, %for.body48.preheader.i.i.do.body_crit_edge, %for.body31.preheader.i.i.do.body_crit_edge, %for.body20.preheader.i.i.do.body_crit_edge, %if.end.i339.i.do.body_crit_edge, %sw.bb188.i.do.body_crit_edge, %sw.bb161.i.do.body_crit_edge, %sw.bb144.i.do.body_crit_edge, %parse_irq.exit.i.do.body_crit_edge, %if.then2.i.i.do.body_crit_edge, %if.then132.i.do.body_crit_edge, %parse_io.exit.i.do.body_crit_edge, %for.body60.i.i.4.do.body_crit_edge, %if.end64.i.i.2.do.body_crit_edge, %for.body60.i.i.2.do.body_crit_edge, %for.body60.i.i.1.do.body_crit_edge, %for.body60.i.i.do.body_crit_edge, %for.body44.i.i.4.do.body_crit_edge, %if.end48.i323.i.2.do.body_crit_edge, %for.body44.i.i.2.do.body_crit_edge, %for.body44.i.i.1.do.body_crit_edge, %for.body44.i.i.do.body_crit_edge, %if.end7.i319.i.do.body_crit_edge, %if.then120.i.do.body_crit_edge, %parse_timing.exit.i.do.body_crit_edge, %if.then55.i.i.do.body_crit_edge, %if.then26.i.i.do.body_crit_edge, %if.then3.i.i.do.body_crit_edge, %if.then106.i.do.body_crit_edge, %if.then93.i.do.body_crit_edge, %if.then79.i.do.body_crit_edge, %if.then67.i.do.body_crit_edge, %if.end56.i.do.body_crit_edge, %if.then12.i.do.body_crit_edge, %sw.bb22.do.body_crit_edge, %sw.bb20.do.body_crit_edge, %sw.bb18.do.body_crit_edge, %sw.bb16.do.body_crit_edge, %if.end22.i.i175.do.body_crit_edge, %if.end22.i.3.i164.do.body_crit_edge, %if.end22.i.2.i151.do.body_crit_edge, %if.end22.i.1.i133.do.body_crit_edge, %sw.bb12.do.body_crit_edge, %if.end22.i.i.do.body_crit_edge, %if.end22.i.3.i.do.body_crit_edge, %if.end22.i.2.i.do.body_crit_edge, %if.end22.i.1.i.do.body_crit_edge, %sw.bb10.do.body_crit_edge, %sw.bb8.do.body_crit_edge, %sw.bb6.do.body_crit_edge, %sw.bb4.do.body_crit_edge, %if.end64.i.do.body_crit_edge, %sw.epilog.i.do.body_crit_edge, %while.body.i.do.body_crit_edge, %sw.bb31.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %ret.0333 = phi i32 [ %cmp41.i.i179, %sw.epilog.do.body_crit_edge ], [ -22, %sw.bb4.do.body_crit_edge ], [ -22, %sw.bb6.do.body_crit_edge ], [ -22, %sw.bb8.do.body_crit_edge ], [ -22, %sw.bb10.do.body_crit_edge ], [ -22, %sw.bb12.do.body_crit_edge ], [ -22, %sw.bb16.do.body_crit_edge ], [ -22, %sw.bb18.do.body_crit_edge ], [ -22, %sw.bb20.do.body_crit_edge ], [ -22, %sw.bb22.do.body_crit_edge ], [ -22, %if.then12.i.do.body_crit_edge ], [ -22, %if.end56.i.do.body_crit_edge ], [ -22, %if.then67.i.do.body_crit_edge ], [ -22, %if.then79.i.do.body_crit_edge ], [ -22, %if.then93.i.do.body_crit_edge ], [ -22, %parse_timing.exit.i.do.body_crit_edge ], [ -22, %parse_io.exit.i.do.body_crit_edge ], [ -22, %parse_irq.exit.i.do.body_crit_edge ], [ -22, %sw.bb144.i.do.body_crit_edge ], [ -22, %sw.bb161.i.do.body_crit_edge ], [ -22, %parse_mem.exit.i.do.body_crit_edge ], [ -22, %if.then198.i.do.body_crit_edge ], [ -22, %if.then106.i.do.body_crit_edge ], [ -22, %if.then3.i.i.do.body_crit_edge ], [ -22, %if.then26.i.i.do.body_crit_edge ], [ -22, %if.then55.i.i.do.body_crit_edge ], [ -22, %if.then120.i.do.body_crit_edge ], [ -22, %if.end7.i319.i.do.body_crit_edge ], [ -22, %if.then132.i.do.body_crit_edge ], [ -22, %if.then2.i.i.do.body_crit_edge ], [ -22, %sw.bb188.i.do.body_crit_edge ], [ -22, %if.end.i339.i.do.body_crit_edge ], [ -22, %sw.bb28.do.body_crit_edge ], [ -22, %if.end.i279.do.body_crit_edge ], [ -22, %lor.lhs.false30.i.i310.do.body_crit_edge ], [ -22, %for.cond.i.i283.do.body_crit_edge ], [ -22, %for.body.i.preheader.i281.do.body_crit_edge ], [ -22, %sw.bb30.do.body_crit_edge ], [ -22, %if.end.i318.do.body_crit_edge ], [ -22, %sw.bb32.do.body_crit_edge ], [ -22, %if.end.do.body_crit_edge ], [ -22, %while.body.i.do.body_crit_edge ], [ -22, %if.end64.i.do.body_crit_edge ], [ -22, %sw.epilog.i.do.body_crit_edge ], [ -22, %if.end.i.do.body_crit_edge ], [ -22, %sw.bb31.i.do.body_crit_edge ], [ -22, %if.end22.i.3.i.do.body_crit_edge ], [ -22, %if.end22.i.2.i.do.body_crit_edge ], [ -22, %if.end22.i.1.i.do.body_crit_edge ], [ -22, %if.end22.i.i.do.body_crit_edge ], [ -22, %if.end22.i.3.i164.do.body_crit_edge ], [ -22, %if.end22.i.2.i151.do.body_crit_edge ], [ -22, %if.end22.i.1.i133.do.body_crit_edge ], [ -22, %if.end22.i.i175.do.body_crit_edge ], [ -22, %while.body.i246.do.body_crit_edge ], [ -22, %for.body48.preheader.i.i.do.body_crit_edge ], [ -22, %for.body31.preheader.i.i.do.body_crit_edge ], [ -22, %for.body20.preheader.i.i.do.body_crit_edge ], [ -22, %for.body60.i.i.4.do.body_crit_edge ], [ -22, %if.end64.i.i.2.do.body_crit_edge ], [ -22, %for.body60.i.i.2.do.body_crit_edge ], [ -22, %for.body60.i.i.1.do.body_crit_edge ], [ -22, %for.body60.i.i.do.body_crit_edge ], [ -22, %for.body44.i.i.4.do.body_crit_edge ], [ -22, %if.end48.i323.i.2.do.body_crit_edge ], [ -22, %for.body44.i.i.2.do.body_crit_edge ], [ -22, %for.body44.i.i.1.do.body_crit_edge ], [ -22, %for.body44.i.i.do.body_crit_edge ], [ -22, %if.end22.i.1.i296.do.body_crit_edge ], [ -22, %for.cond7.i.i304.do.body_crit_edge ], [ -22, %if.end22.i.i307.do.body_crit_edge ], [ -22, %if.end12.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_parse_tuple.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_parse_tuple, %if.then40)) #9
          to label %cleanup [label %if.then40], !srcloc !95

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_parse_tuple.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.25, i32 noundef %ret.0333) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body, %sw.epilog.cleanup_crit_edge, %if.end.i329, %for.body.i322.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond7.i.1.i292.cleanup_crit_edge, %for.cond7.i.1.i292.cleanup_crit_edge648, %parse_device_geo.exit, %if.end218.i, %for.end35.i, %for.body.i210.cleanup_crit_edge, %if.end.i205.cleanup_crit_edge, %if.end.i200, %if.end.i195, %parse_jedec.exit, %if.then38.i.i, %for.end37.i.i, %for.body.i98.cleanup_crit_edge, %if.end.i93.cleanup_crit_edge, %if.end.i87, %if.end.i82, %if.end72.i.cleanup_crit_edge, %if.end59.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge645, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0333, %if.then40 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %ret.0333, %do.body ], [ 0, %parse_device_geo.exit ], [ 0, %parse_jedec.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge645 ], [ 0, %if.end.i82 ], [ 0, %if.end.i87 ], [ 0, %if.end.i93.cleanup_crit_edge ], [ 0, %for.end37.i.i ], [ 0, %if.then38.i.i ], [ 0, %if.end.i195 ], [ 0, %if.end.i200 ], [ 0, %if.end.i205.cleanup_crit_edge ], [ 0, %for.end35.i ], [ 0, %if.end218.i ], [ 0, %if.end.i329 ], [ 0, %for.body.i.cleanup_crit_edge ], [ 0, %if.end59.i.cleanup_crit_edge ], [ 0, %if.end72.i.cleanup_crit_edge ], [ 0, %for.body.i98.cleanup_crit_edge ], [ 0, %for.body.i210.cleanup_crit_edge ], [ 0, %for.cond7.i.1.i292.cleanup_crit_edge ], [ 0, %for.cond7.i.1.i292.cleanup_crit_edge648 ], [ 0, %for.cond.i.cleanup_crit_edge ], [ 0, %for.body.i322.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pccard_validate_cis(ptr noundef %s, ptr noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end21

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1387, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %cis_cache.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 10
  %4 = ptrtoint ptr %cis_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cis_cache.i, align 8
  %cmp.i.not10.i = icmp eq ptr %5, %cis_cache.i
  br i1 %cmp.i.not10.i, label %if.end21.destroy_cis_cache.exit_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.destroy_cis_cache.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_cis_cache.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %l.011.i = phi ptr [ %n.013.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.end21.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %l.011.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.013.i = load ptr, ptr %l.011.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.011.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %l.011.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %l.011.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l.011.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %l.011.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %l.011.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.011.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %l.011.i) #9
  %cmp.i.not.i = icmp eq ptr %n.013.i, %cis_cache.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.destroy_cis_cache.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.destroy_cis_cache.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_cis_cache.exit

destroy_cis_cache.exit:                           ; preds = %list_del.exit.i.destroy_cis_cache.exit_crit_edge, %if.end21.destroy_cis_cache.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 32) #13
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end27, label %if.end28

do.end27:                                         ; preds = %destroy_cis_cache.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end28:                                         ; preds = %destroy_cis_cache.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i211 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 372) #13
  %cmp30 = icmp eq ptr %call7.i211, null
  br i1 %cmp30, label %if.then32, label %if.end.i

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  %dev36 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end28
  %DesiredTuple = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %DesiredTuple to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %DesiredTuple, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %call7.i, align 8
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 8
  %21 = and i32 %20, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %if.end6.i, label %if.end.i.done.thread_crit_edge

if.end.i.done.thread_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

if.end6.i:                                        ; preds = %if.end.i
  %Flags.i = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 2
  %23 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 135266304, ptr %Flags.i, align 8
  %TupleLink.i = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 6
  %24 = ptrtoint ptr %TupleLink.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %TupleLink.i, align 1
  %LinkOffset.i = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 3
  %25 = ptrtoint ptr %LinkOffset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %LinkOffset.i, align 4
  %CISOffset.i = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 4
  %26 = ptrtoint ptr %CISOffset.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %CISOffset.i, align 8
  %call31.i = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %s, i32 noundef 255, ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp39.not = icmp eq i32 %call31.i, 0
  br i1 %cmp39.not, label %if.end42, label %if.end6.i.done.thread_crit_edge

if.end6.i.done.thread_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

if.end42:                                         ; preds = %if.end6.i
  %TupleCode = getelementptr inbounds %struct.tuple_t, ptr %call7.i, i32 0, i32 5
  %27 = ptrtoint ptr %TupleCode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TupleCode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp44 = icmp eq i8 %28, 1
  br i1 %cmp44, label %if.end42.if.then52_crit_edge, label %lor.lhs.false46

if.end42.if.then52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

lor.lhs.false46:                                  ; preds = %if.end42
  %call47 = tail call i32 @pccard_read_tuple(ptr noundef nonnull %s, i32 noundef 255, i8 noundef zeroext 27, ptr noundef nonnull %call7.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false46.if.then52_crit_edge, label %lor.lhs.false49

lor.lhs.false46.if.then52_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call i32 @pccard_read_tuple(ptr noundef nonnull %s, i32 noundef 255, i8 noundef zeroext 5, ptr noundef nonnull %call7.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false49.if.then52_crit_edge, label %lor.lhs.false49.if.end53_crit_edge

lor.lhs.false49.if.end53_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %lor.lhs.false46.if.then52_crit_edge, %if.end42.if.then52_crit_edge
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false49.if.end53_crit_edge
  %tobool68.not = phi i1 [ false, %if.then52 ], [ true, %lor.lhs.false49.if.end53_crit_edge ]
  %dev_ok.0 = phi i32 [ 1, %if.then52 ], [ 0, %lor.lhs.false49.if.end53_crit_edge ]
  %call54 = tail call i32 @pccard_read_tuple(ptr noundef nonnull %s, i32 noundef 255, i8 noundef zeroext 32, ptr noundef nonnull %call7.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.end53.for.body.preheader_crit_edge, label %lor.lhs.false57

if.end53.for.body.preheader_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

lor.lhs.false57:                                  ; preds = %if.end53
  %call58 = tail call i32 @pccard_read_tuple(ptr noundef nonnull %s, i32 noundef 255, i8 noundef zeroext 21, ptr noundef nonnull %call7.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %lor.lhs.false57.for.body.preheader_crit_edge, label %lor.lhs.false61

lor.lhs.false57.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %call62 = tail call i32 @pccard_read_tuple(ptr noundef nonnull %s, i32 noundef 255, i8 noundef zeroext 64, ptr noundef nonnull %call7.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call62)
  %cmp63.not = icmp ne i32 %call62, -28
  %tobool68.not.not = xor i1 %tobool68.not, true
  %brmerge = or i1 %cmp63.not, %tobool68.not.not
  %.mux = zext i1 %cmp63.not to i32
  %not.cmp63.not = xor i1 %cmp63.not, true
  br i1 %brmerge, label %lor.lhs.false61.for.body.preheader_crit_edge, label %lor.lhs.false61.done.thread_crit_edge

lor.lhs.false61.done.thread_crit_edge:            ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

lor.lhs.false61.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false61.for.body.preheader_crit_edge, %lor.lhs.false57.for.body.preheader_crit_edge, %if.end53.for.body.preheader_crit_edge
  %ident_ok.0247 = phi i32 [ 1, %if.end53.for.body.preheader_crit_edge ], [ 1, %lor.lhs.false57.for.body.preheader_crit_edge ], [ %.mux, %lor.lhs.false61.for.body.preheader_crit_edge ]
  %tobool69.not246 = phi i1 [ false, %if.end53.for.body.preheader_crit_edge ], [ false, %lor.lhs.false57.for.body.preheader_crit_edge ], [ %not.cmp63.not, %lor.lhs.false61.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end78.for.body_crit_edge, %for.body.preheader
  %reserved.0242 = phi i32 [ %reserved.1, %if.end78.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %count.0241 = phi i32 [ %inc111, %if.end78.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %call74 = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %s, i32 noundef 255, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end78, label %for.end

if.end78:                                         ; preds = %for.body
  %29 = ptrtoint ptr %TupleCode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %TupleCode, align 4
  %31 = add i8 %30, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %31)
  %32 = icmp ult i8 %31, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %30)
  %33 = icmp slt i8 %30, 72
  %or.cond.not = and i1 %33, %32
  %34 = add i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -110, i8 %34)
  %35 = icmp ult i8 %34, -110
  %or.cond240 = and i1 %or.cond.not, %35
  %not.or.cond240 = xor i1 %or.cond240, true
  %inc109 = zext i1 %not.or.cond240 to i32
  %reserved.1 = add i32 %reserved.0242, %inc109
  %inc111 = add nuw nsw i32 %count.0241, 1
  %exitcond.not = icmp eq i32 %inc111, 200
  br i1 %exitcond.not, label %if.end78.done.thread_crit_edge, label %if.end78.for.body_crit_edge

if.end78.for.body_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end78.done.thread_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %count.0241)
  %cmp112 = icmp eq i32 %count.0241, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reserved.0242)
  %cmp115 = icmp sgt i32 %reserved.0242, 5
  %or.cond205 = select i1 %cmp112, i1 true, i1 %cmp115
  br i1 %or.cond205, label %for.end.done.thread_crit_edge, label %lor.lhs.false117

for.end.done.thread_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

lor.lhs.false117:                                 ; preds = %for.end
  %brmerge206 = or i1 %tobool68.not, %tobool69.not246
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count.0241)
  %cmp122 = icmp ugt i32 %count.0241, 10
  %or.cond207 = select i1 %brmerge206, i1 %cmp122, i1 false
  br i1 %or.cond207, label %lor.lhs.false117.done.thread_crit_edge, label %done

lor.lhs.false117.done.thread_crit_edge:           ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

done.thread:                                      ; preds = %lor.lhs.false117.done.thread_crit_edge, %for.end.done.thread_crit_edge, %if.end78.done.thread_crit_edge, %lor.lhs.false61.done.thread_crit_edge, %if.end6.i.done.thread_crit_edge, %if.end.i.done.thread_crit_edge
  %dev_ok.1.ph = phi i32 [ 0, %if.end6.i.done.thread_crit_edge ], [ 0, %if.end.i.done.thread_crit_edge ], [ %dev_ok.0, %lor.lhs.false117.done.thread_crit_edge ], [ %dev_ok.0, %for.end.done.thread_crit_edge ], [ 0, %lor.lhs.false61.done.thread_crit_edge ], [ %dev_ok.0, %if.end78.done.thread_crit_edge ]
  %ident_ok.1.ph = phi i32 [ 0, %if.end6.i.done.thread_crit_edge ], [ 0, %if.end.i.done.thread_crit_edge ], [ %ident_ok.0247, %lor.lhs.false117.done.thread_crit_edge ], [ %ident_ok.0247, %for.end.done.thread_crit_edge ], [ 0, %lor.lhs.false61.done.thread_crit_edge ], [ %ident_ok.0247, %if.end78.done.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_ok.1.ph)
  %tobool126.not231 = icmp eq i32 %dev_ok.1.ph, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ident_ok.1.ph)
  %tobool128.not232 = icmp eq i32 %ident_ok.1.ph, 0
  %or.cond208233 = or i1 %tobool126.not231, %tobool128.not232
  %phi.sel = select i1 %or.cond208233, i32 -5, i32 -14
  br label %if.then131

done:                                             ; preds = %lor.lhs.false117
  br i1 %brmerge206, label %done.if.then131_crit_edge, label %done.if.end139_crit_edge

done.if.end139_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

done.if.then131_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

if.then131:                                       ; preds = %done.if.then131_crit_edge, %done.thread
  %or.cond208238 = phi i32 [ %phi.sel, %done.thread ], [ -5, %done.if.then131_crit_edge ]
  %count.2237 = phi i32 [ 0, %done.thread ], [ %count.0241, %done.if.then131_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %36 = ptrtoint ptr %cis_cache.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cis_cache.i, align 8
  %cmp.i.not10.i213 = icmp eq ptr %37, %cis_cache.i
  br i1 %cmp.i.not10.i213, label %if.then131.destroy_cis_cache.exit224_crit_edge, label %if.then131.for.body.i217_crit_edge

if.then131.for.body.i217_crit_edge:               ; preds = %if.then131
  br label %for.body.i217

if.then131.destroy_cis_cache.exit224_crit_edge:   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_cis_cache.exit224

for.body.i217:                                    ; preds = %list_del.exit.i223.for.body.i217_crit_edge, %if.then131.for.body.i217_crit_edge
  %l.011.i214 = phi ptr [ %n.013.i215, %list_del.exit.i223.for.body.i217_crit_edge ], [ %37, %if.then131.for.body.i217_crit_edge ]
  %38 = ptrtoint ptr %l.011.i214 to i32
  call void @__asan_load4_noabort(i32 %38)
  %n.013.i215 = load ptr, ptr %l.011.i214, align 4
  %call.i.i.i216 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.011.i214) #9
  br i1 %call.i.i.i216, label %if.end.i.i.i220, label %for.body.i217.list_del.exit.i223_crit_edge

for.body.i217.list_del.exit.i223_crit_edge:       ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i223

if.end.i.i.i220:                                  ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i218 = getelementptr inbounds %struct.list_head, ptr %l.011.i214, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i218, align 4
  %41 = ptrtoint ptr %l.011.i214 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %l.011.i214, align 4
  %prev1.i.i.i.i219 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i219 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i219, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i223

list_del.exit.i223:                               ; preds = %if.end.i.i.i220, %for.body.i217.list_del.exit.i223_crit_edge
  %45 = ptrtoint ptr %l.011.i214 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %l.011.i214, align 4
  %prev.i.i221 = getelementptr inbounds %struct.list_head, ptr %l.011.i214, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i221 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i221, align 4
  tail call void @kfree(ptr noundef %l.011.i214) #9
  %cmp.i.not.i222 = icmp eq ptr %n.013.i215, %cis_cache.i
  br i1 %cmp.i.not.i222, label %list_del.exit.i223.destroy_cis_cache.exit224_crit_edge, label %list_del.exit.i223.for.body.i217_crit_edge

list_del.exit.i223.for.body.i217_crit_edge:       ; preds = %list_del.exit.i223
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i217

list_del.exit.i223.destroy_cis_cache.exit224_crit_edge: ; preds = %list_del.exit.i223
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_cis_cache.exit224

destroy_cis_cache.exit224:                        ; preds = %list_del.exit.i223.destroy_cis_cache.exit224_crit_edge, %if.then131.destroy_cis_cache.exit224_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  br label %if.end139

if.end139:                                        ; preds = %destroy_cis_cache.exit224, %done.if.end139_crit_edge
  %count.2236 = phi i32 [ %count.0241, %done.if.end139_crit_edge ], [ %count.2237, %destroy_cis_cache.exit224 ]
  %ret.1 = phi i32 [ 0, %done.if.end139_crit_edge ], [ %or.cond208238, %destroy_cis_cache.exit224 ]
  %tobool140.not = icmp eq ptr %info, null
  br i1 %tobool140.not, label %if.end139.if.end142_crit_edge, label %if.then141

if.end139.if.end142_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then141:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %count.2236, ptr %info, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end139.if.end142_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i211) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then32, %do.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end27 ], [ -12, %if.then32 ], [ %ret.1, %if.end142 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_read_tuple(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pccard_show_cis(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %tuple.i = alloca %struct.tuple_t, align 4
  %chains = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %off)
  %cmp = icmp sgt i64 %off, 511
  br i1 %cmp, label %entry.cleanup22_crit_edge, label %if.else

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chains) #9
  %0 = ptrtoint ptr %chains to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %chains, align 4
  %conv2 = zext i32 %count to i64
  %add = add nsw i64 %conv2, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %add)
  %cmp4 = icmp sgt i64 %add, 512
  %1 = trunc i64 %off to i32
  %conv8 = sub i32 512, %1
  %count.addr.0 = select i1 %cmp4, i32 %conv8, i32 %count
  %add.ptr = getelementptr i8, ptr %kobj, i32 -592
  %state = getelementptr i8, ptr %kobj, i32 -576
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup.thread_crit_edge, label %if.end10

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end10:                                         ; preds = %if.else
  %functions = getelementptr i8, ptr %kobj, i32 -568
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %call12 = call i32 @pccard_validate_cis(ptr noundef %add.ptr, ptr noundef nonnull %chains)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %6 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %if.end15.cleanup.thread_crit_edge, label %if.end18

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tuple.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i110.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 258) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i110.i, null
  br i1 %tobool2.not.i, label %if.end.i.free_tuple.i_crit_edge, label %if.end4.i

if.end.i.free_tuple.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tuple.i

if.end4.i:                                        ; preds = %if.end.i
  %10 = getelementptr inbounds i8, ptr %tuple.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %12 = ptrtoint ptr %tuple.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %tuple.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %10, align 4
  %TupleOffset.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 7
  %call5.i = call i32 @pccard_get_first_tuple(ptr noundef %add.ptr, i32 noundef 255, ptr noundef nonnull %tuple.i) #9
  %TupleData.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 10
  %TupleLink.i.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 6
  %TupleCode67.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not121.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not121.i, label %while.body.lr.ph.i, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4.i
  %TupleDataMax.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 8
  %tobool.not.i.i = icmp eq ptr %add.ptr, null
  %TupleDataLen.i.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 9
  %Flags.i.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 2
  %CISOffset.i.i = getelementptr inbounds %struct.tuple_t, ptr %tuple.i, i32 0, i32 4
  %arrayidx19.i = getelementptr i8, ptr %call7.i.i110.i, i32 1
  %conv43.i = zext i32 %count.addr.0 to i64
  %add44.i = add nsw i64 %conv43.i, %off
  %uglygep.i = getelementptr i8, ptr %call7.i.i110.i, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end72.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ret.0123.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %ret.3.i, %if.end72.i.while.body.i_crit_edge ]
  %pointer.0122.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %add60.i, %if.end72.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %TupleData.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %TupleData.i, align 4
  %15 = ptrtoint ptr %TupleDataMax.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %TupleDataMax.i, align 1
  %16 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 255)
  br i1 %tobool.not.i.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i.i:                                       ; preds = %while.body.i
  %17 = ptrtoint ptr %TupleLink.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %TupleLink.i.i, align 1
  %19 = ptrtoint ptr %TupleOffset.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %TupleOffset.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i.i = icmp ult i8 %18, %20
  br i1 %cmp.i.i, label %if.end.i.i.while.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.while.end.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %TupleDataLen.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %TupleDataLen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp10.i.i = icmp eq i8 %18, %20
  br i1 %cmp10.i.i, label %if.end4.i.i.if.end10.i_crit_edge, label %pccard_get_tuple_data.exit.i

if.end4.i.i.if.end10.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

pccard_get_tuple_data.exit.i:                     ; preds = %if.end4.i.i
  %conv1.i.i = zext i8 %20 to i32
  %conv.i.i = zext i8 %18 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %22 = ptrtoint ptr %Flags.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i = load i16, ptr %Flags.i.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 4
  %bf.clear.i.i = and i16 %bf.lshr.i.i, 15
  %bf.cast.i.i = zext i16 %bf.clear.i.i to i32
  %23 = ptrtoint ptr %CISOffset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %CISOffset.i.i, align 4
  %add.i.i = add i32 %24, %conv1.i.i
  %25 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 255) #9
  %call.i.i = call fastcc i32 @read_cis_cache(ptr noundef nonnull %add.ptr, i32 noundef %bf.cast.i.i, i32 noundef %add.i.i, i32 noundef %25, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not.i.not.i, label %pccard_get_tuple_data.exit.i.if.end10.i_crit_edge, label %pccard_get_tuple_data.exit.i.while.end.i_crit_edge

pccard_get_tuple_data.exit.i.while.end.i_crit_edge: ; preds = %pccard_get_tuple_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

pccard_get_tuple_data.exit.i.if.end10.i_crit_edge: ; preds = %pccard_get_tuple_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %pccard_get_tuple_data.exit.i.if.end10.i_crit_edge, %if.end4.i.i.if.end10.i_crit_edge
  %add.i = add i64 %pointer.0122.i, 2
  %conv.i = zext i8 %18 to i64
  %add11.i = add i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add11.i, i64 %off)
  %cmp.i = icmp sgt i64 %add11.i, %off
  br i1 %cmp.i, label %if.then13.i, label %if.end10.if.end55_crit_edge.i

if.end10.if.end55_crit_edge.i:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i = zext i8 %18 to i32
  %.pre130.i = add nuw nsw i32 %.pre.i, 2
  br label %if.end55.i

if.then13.i:                                      ; preds = %if.end10.i
  %26 = ptrtoint ptr %TupleCode67.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %TupleCode67.i, align 4
  %28 = ptrtoint ptr %call7.i.i110.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %call7.i.i110.i, align 8
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %18, ptr %arrayidx19.i, align 1
  %conv21.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp22116.not.i = icmp eq i8 %18, 0
  br i1 %cmp22116.not.i, label %if.then13.i.for.cond30.preheader.i_crit_edge, label %for.body.preheader.i

if.then13.i.for.cond30.preheader.i_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader.i

for.body.preheader.i:                             ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = call ptr @memcpy(ptr %uglygep.i, ptr %call7.i.i.i, i32 %conv21.i)
  br label %for.cond30.preheader.i

for.cond30.preheader.i:                           ; preds = %for.body.preheader.i, %if.then13.i.for.cond30.preheader.i_crit_edge
  %add33.i = add nuw nsw i32 %conv21.i, 2
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.inc52.i.for.body36.i_crit_edge, %for.cond30.preheader.i
  %ret.1120.i = phi i32 [ %ret.0123.i, %for.cond30.preheader.i ], [ %ret.2.i, %for.inc52.i.for.body36.i_crit_edge ]
  %i.1118.i = phi i32 [ 0, %for.cond30.preheader.i ], [ %inc53.i, %for.inc52.i.for.body36.i_crit_edge ]
  %conv37.i = zext i32 %i.1118.i to i64
  %add38.i = add i64 %pointer.0122.i, %conv37.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i, i64 %off)
  %cmp39.not.i = icmp sge i64 %add38.i, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i, i64 %add44.i)
  %cmp45.i = icmp slt i64 %add38.i, %add44.i
  %or.cond.i = and i1 %cmp39.not.i, %cmp45.i
  br i1 %or.cond.i, label %if.then47.i, label %for.body36.i.for.inc52.i_crit_edge

for.body36.i.for.inc52.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

if.then47.i:                                      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48.i = getelementptr i8, ptr %call7.i.i110.i, i32 %i.1118.i
  %31 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx48.i, align 1
  %arrayidx49.i = getelementptr i8, ptr %buf, i32 %ret.1120.i
  %33 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx49.i, align 1
  %inc50.i = add i32 %ret.1120.i, 1
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %if.then47.i, %for.body36.i.for.inc52.i_crit_edge
  %ret.2.i = phi i32 [ %inc50.i, %if.then47.i ], [ %ret.1120.i, %for.body36.i.for.inc52.i_crit_edge ]
  %inc53.i = add nuw nsw i32 %i.1118.i, 1
  %exitcond.not.i = icmp eq i32 %inc53.i, %add33.i
  br i1 %exitcond.not.i, label %for.inc52.i.if.end55.i_crit_edge, label %for.inc52.i.for.body36.i_crit_edge

for.inc52.i.for.body36.i_crit_edge:               ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

for.inc52.i.if.end55.i_crit_edge:                 ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %for.inc52.i.if.end55.i_crit_edge, %if.end10.if.end55_crit_edge.i
  %add58.pre-phi.i = phi i32 [ %.pre130.i, %if.end10.if.end55_crit_edge.i ], [ %add33.i, %for.inc52.i.if.end55.i_crit_edge ]
  %ret.3.i = phi i32 [ %ret.0123.i, %if.end10.if.end55_crit_edge.i ], [ %ret.2.i, %for.inc52.i.if.end55.i_crit_edge ]
  %34 = zext i32 %add58.pre-phi.i to i64
  %add60.i = add i64 %pointer.0122.i, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add60.i, i64 %add44.i)
  %cmp63.not.i = icmp slt i64 %add60.i, %add44.i
  br i1 %cmp63.not.i, label %if.end66.i, label %if.end55.i.while.end.i_crit_edge

if.end55.i.while.end.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end66.i:                                       ; preds = %if.end55.i
  %35 = ptrtoint ptr %TupleCode67.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %TupleCode67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp69.i = icmp eq i8 %36, -1
  br i1 %cmp69.i, label %if.end66.i.while.end.i_crit_edge, label %if.end72.i

if.end66.i.while.end.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end72.i:                                       ; preds = %if.end66.i
  %call73.i = call i32 @pccard_get_next_tuple(ptr noundef nonnull %add.ptr, i32 noundef 255, ptr noundef nonnull %tuple.i) #9
  %tobool6.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool6.not.i, label %if.end72.i.while.body.i_crit_edge, label %if.end72.i.while.end.i_crit_edge

if.end72.i.while.end.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end72.i.while.end.i_crit_edge, %if.end66.i.while.end.i_crit_edge, %if.end55.i.while.end.i_crit_edge, %pccard_get_tuple_data.exit.i.while.end.i_crit_edge, %if.end.i.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %ret.4.i = phi i32 [ 0, %if.end4.i.while.end.i_crit_edge ], [ %ret.3.i, %if.end72.i.while.end.i_crit_edge ], [ %ret.0123.i, %pccard_get_tuple_data.exit.i.while.end.i_crit_edge ], [ %ret.3.i, %if.end55.i.while.end.i_crit_edge ], [ %ret.3.i, %if.end66.i.while.end.i_crit_edge ], [ 0, %while.body.i.while.end.i_crit_edge ], [ %ret.0123.i, %if.end.i.i.while.end.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i110.i) #9
  br label %free_tuple.i

free_tuple.i:                                     ; preds = %while.end.i, %if.end.i.free_tuple.i_crit_edge
  %ret.5.i = phi i32 [ %ret.4.i, %while.end.i ], [ -12, %if.end.i.free_tuple.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end15.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -61, %if.end15.cleanup.thread_crit_edge ], [ -5, %land.lhs.true.cleanup.thread_crit_edge ], [ -19, %if.else.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chains) #9
  br label %cleanup22

cleanup:                                          ; preds = %free_tuple.i, %if.end18.cleanup_crit_edge
  %retval.0.i = phi i32 [ %ret.5.i, %free_tuple.i ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tuple.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chains) #9
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup, %cleanup.thread, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ %retval.0.ph, %cleanup.thread ], [ %retval.0.i, %cleanup ], [ 0, %entry.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pccard_store_cis(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_locked_down(i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kobj, i32 -592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %tobool2.not = icmp ne i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %count)
  %cmp = icmp ugt i32 %count, 511
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %kobj, i32 -576
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @pcmcia_replace_cis(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcmcia_parse_uevents(ptr noundef %add.ptr, i32 noundef 16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_find_mem_region(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @parse_power(ptr noundef readonly %p, ptr noundef readnone %q, ptr nocapture noundef %pwr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %p, %q
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %2 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %pwr, align 4
  %flags = getelementptr inbounds %struct.cistpl_power_t, ptr %pwr, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flags, align 1
  %incdec.ptr = getelementptr i8, ptr %p, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0102 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.addr.0101 = phi ptr [ %incdec.ptr, %if.end ], [ %p.addr.2, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwr, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %i.0102
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %cmp4 = icmp eq ptr %p.addr.0101, %q
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %6 = ptrtoint ptr %p.addr.0101 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p.addr.0101, align 1
  %conv8 = zext i8 %7 to i32
  %8 = lshr i32 %conv8, 3
  %and9 = and i32 %8, 15
  %arrayidx = getelementptr [16 x i8], ptr @mantissa, i32 0, i32 %and9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %10 to i32
  %and12 = and i32 %conv8, 7
  %arrayidx13 = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and12
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13, align 4
  %mul = mul i32 %12, %conv10
  %div = udiv i32 %mul, 10
  %arrayidx14 = getelementptr %struct.cistpl_power_t, ptr %pwr, i32 0, i32 2, i32 %i.0102
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %arrayidx14, align 4
  %14 = load i8, ptr %p.addr.0101, align 1
  %15 = and i8 %14, 7
  %and16 = zext i8 %15 to i32
  %arrayidx17 = getelementptr [8 x i32], ptr @exponent, i32 0, i32 %and16
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool20.not99 = icmp sgt i8 %14, -1
  br i1 %tobool20.not99, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %if.end7.while.body_crit_edge
  %p.addr.1100 = phi ptr [ %incdec.ptr21, %if.end64.while.body_crit_edge ], [ %p.addr.0101, %if.end7.while.body_crit_edge ]
  %incdec.ptr21 = getelementptr i8, ptr %p.addr.1100, i32 1
  %cmp22 = icmp eq ptr %incdec.ptr21, %q
  br i1 %cmp22, label %while.body.cleanup_crit_edge, label %if.end25

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %while.body
  %18 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr21, align 1
  %20 = and i8 %19, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %20)
  %cmp28 = icmp ult i8 %20, 100
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %and27 = zext i8 %20 to i32
  %mul33 = mul i32 %17, %and27
  %div34 = udiv i32 %mul33, 100
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %22, %div34
  store i32 %add, ptr %arrayidx14, align 4
  br label %if.end64

if.else:                                          ; preds = %if.end25
  %23 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %19, label %if.else.cleanup_crit_edge [
    i8 125, label %if.then40
    i8 126, label %if.then48
    i8 127, label %if.then55
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  %26 = or i8 %25, 1
  store i8 %26, ptr %flags, align 1
  br label %if.end64

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx14, align 4
  br label %if.end64

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 1
  %30 = or i8 %29, 2
  store i8 %30, ptr %flags, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.then48, %if.then40, %if.then30
  %31 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr = load i8, ptr %incdec.ptr21, align 1
  %tobool20.not = icmp sgt i8 %.pr, -1
  br i1 %tobool20.not, label %if.end64.while.end_crit_edge, label %if.end64.while.body_crit_edge

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end64.while.end_crit_edge, %if.end7.while.end_crit_edge
  %p.addr.1.lcssa = phi ptr [ %p.addr.0101, %if.end7.while.end_crit_edge ], [ %incdec.ptr21, %if.end64.while.end_crit_edge ]
  %incdec.ptr65 = getelementptr i8, ptr %p.addr.1.lcssa, i32 1
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %p.addr.2 = phi ptr [ %incdec.ptr65, %while.end ], [ %p.addr.0101, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ %p.addr.2, %for.inc.cleanup_crit_edge ], [ null, %if.then3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_uevents(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !69, !71, !73, !74, !76, !77, !78, !79, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__param_cis_width, !1, !"__param_cis_width", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/cistpl.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_cis_widthtype236, !1, !"__UNIQUE_ID_cis_widthtype236", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/cistpl.c", i32 140, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug237, !4, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pcmcia/cistpl.c", i32 154, i32 4}
!11 = !{ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug238, !10, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pcmcia/cistpl.c", i32 170, i32 4}
!14 = !{ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug239, !13, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!15 = !{ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug240, !16, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!16 = !{!"../drivers/pcmcia/cistpl.c", i32 187, i32 5}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pcmcia/cistpl.c", i32 202, i32 2}
!19 = !{ptr @pcmcia_read_cis_mem.__UNIQUE_ID_ddebug241, !18, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pcmcia/cistpl.c", i32 221, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug242, !21, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!24 = !{ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug243, !25, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!25 = !{!"../drivers/pcmcia/cistpl.c", i32 236, i32 4}
!26 = !{ptr @pcmcia_write_cis_mem.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!27 = !{!"../drivers/pcmcia/cistpl.c", i32 261, i32 5}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/cistpl.c", i32 382, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @verify_cis_cache._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @verify_cis_cache._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pcmcia/cistpl.c", i32 414, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pcmcia_replace_cis._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pcmcia_replace_cis._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pcmcia/cistpl.c", i32 421, i32 3}
!42 = !{ptr @pcmcia_replace_cis._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pcmcia_replace_cis._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pcmcia/cistpl.c", i32 427, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pcmcia_replace_cis._entry.18, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @pcmcia_replace_cis._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pcmcia/cistpl.c", i32 623, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pccard_get_next_tuple.__UNIQUE_ID_ddebug245, !50, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pcmcia/cistpl.c", i32 1357, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pcmcia_parse_tuple.__UNIQUE_ID_ddebug248, !54, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!57 = !{ptr @__ksymtab_pcmcia_parse_tuple, !58, !"__ksymtab_pcmcia_parse_tuple", i1 false, i1 false}
!58 = !{!"../drivers/pcmcia/cistpl.c", i32 1360, i32 1}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pcmcia/cistpl.c", i32 1398, i32 3}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @pccard_validate_cis._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @pccard_validate_cis._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @pccard_validate_cis._entry.28, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/pcmcia/cistpl.c", i32 1404, i32 3}
!66 = !{ptr @pccard_validate_cis._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pcmcia/cistpl.c", i32 1606, i32 20}
!69 = !{ptr @pccard_cis_attr, !70, !"pccard_cis_attr", i1 false, i1 false}
!70 = !{!"../drivers/pcmcia/cistpl.c", i32 1605, i32 28}
!71 = !{ptr @cis_width, !72, !"cis_width", i1 false, i1 false}
!72 = !{!"../drivers/pcmcia/cistpl.c", i32 58, i32 12}
!73 = !{ptr @__param_str_cis_width, !1, !"__param_str_cis_width", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pcmcia/cistpl.c", i32 96, i32 4}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @set_cis_map._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @set_cis_map._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pcmcia/cistpl.c", i32 505, i32 21}
!82 = !{ptr @mantissa, !83, !"mantissa", i1 false, i1 false}
!83 = !{!"../drivers/pcmcia/cistpl.c", i32 34, i32 21}
!84 = !{ptr @exponent, !85, !"exponent", i1 false, i1 false}
!85 = !{!"../drivers/pcmcia/cistpl.c", i32 39, i32 20}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148987389, i64 2148987394, i64 2148987407, i64 2148987451, i64 2148987485, i64 2148987506}
!96 = !{i64 2154575277}
!97 = !{i64 6466629}
!98 = !{i64 2154575543}
!99 = !{i64 2154575820}
!100 = !{i64 2154576103}
!101 = !{i64 2154576387}
!102 = !{i64 6467024}
!103 = !{i64 2154576667}
!104 = !{i64 2154581471}
!105 = !{i64 2154589008}
!106 = !{i64 2154589274}
!107 = !{i64 2154589551}
!108 = !{i64 2154589834}
!109 = !{i64 2154590118}
!110 = !{i64 2154590389}
!111 = !{i64 2154592875}
!112 = !{!"auto-init"}

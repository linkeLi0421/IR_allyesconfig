; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/rsrc_nonstatic.c_pt.bc'
source_filename = "../drivers/pcmcia/rsrc_nonstatic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pccard_nonstatic_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pccard_nonstatic_ops\09\09\09\09"
module asm "\09.long\09__crc_pccard_nonstatic_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pccard_nonstatic_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pccard_nonstatic_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pccard_nonstatic_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pccard_resource_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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
%struct.resource_map = type { i32, i32, ptr }
%struct.socket_data = type { %struct.resource_map, %struct.resource_map, %struct.resource_map }
%struct.pcmcia_align_data = type { i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pcmcia_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_probe_mem = internal constant [22 x i8] c"pcmcia_rsrc.probe_mem\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@probe_mem = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_probe_mem = internal constant %struct.kernel_param { ptr @__param_str_probe_mem, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @probe_mem } }, section "__param", align 4
@__UNIQUE_ID_probe_memtype236 = internal constant [35 x i8] c"pcmcia_rsrc.parmtype=probe_mem:int\00", section ".modinfo", align 1
@pccard_nonstatic_ops = dso_local global { %struct.pccard_resource_ops, [44 x i8] } { %struct.pccard_resource_ops { ptr @pcmcia_nonstatic_validate_mem, ptr @nonstatic_find_io, ptr @nonstatic_find_mem_region, ptr @nonstatic_init, ptr @nonstatic_release_resource_db }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_pccard_nonstatic_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pccard_nonstatic_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pccard_nonstatic_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pccard_nonstatic_ops to i32), ptr @__kstrtab_pccard_nonstatic_ops, ptr @__kstrtabns_pccard_nonstatic_ops }, section "___ksymtab+pccard_nonstatic_ops", align 4
@pccard_rsrc_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @pcmcia_socket_class, ptr @pccard_sysfs_add_rsrc, ptr @pccard_sysfs_remove_rsrc }, section ".ref.data", align 4
@__initcall__kmod_pcmcia_rsrc__241_1239_nonstatic_sysfs_init6 = internal global ptr @nonstatic_sysfs_init, section ".initcall6.init", align 4
@__exitcall_nonstatic_sysfs_exit = internal global ptr @nonstatic_sysfs_exit, section ".exitcall.exit", align 4
@do_mem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cs: memory probe 0x%06lx-0x%06lx:\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_mem_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pcmcia/rsrc_nonstatic.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_mem_probe._entry_ptr = internal global ptr @do_mem_probe._entry, section ".printk_index", align 4
@do_mem_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c excluding\00", [19 x i8] zeroinitializer }, align 32
@do_mem_probe._entry_ptr.7 = internal global ptr @do_mem_probe._entry.5, section ".printk_index", align 4
@do_mem_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c %#05lx-%#05lx\00", [47 x i8] zeroinitializer }, align 32
@do_mem_probe._entry_ptr.10 = internal global ptr @do_mem_probe._entry.8, section ".printk_index", align 4
@do_mem_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s\0A\00", [26 x i8] zeroinitializer }, align 32
@do_mem_probe._entry_ptr.13 = internal global ptr @do_mem_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" clean\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCMCIA memprobe\00", [16 x i8] zeroinitializer }, align 32
@do_validate_mem.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcmcia_rsrc\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_validate_mem\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cs: memory probe 0x%06lx-0x%06lx: %pr %pr %u %u %u\00", [45 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@add_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014out of memory to update resources\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_interval\00", [19 x i8] zeroinitializer }, align 32
@add_interval._entry_ptr = internal global ptr @add_interval._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sub_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sub_interval\00", [19 x i8] zeroinitializer }, align 32
@sub_interval._entry_ptr = internal global ptr @sub_interval._entry, section ".printk_index", align 4
@readable.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"readable\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fake CIS is being used: can't validate mem\0A\00", [52 x i8] zeroinitializer }, align 32
@nonstatic_autoadd_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pcmcia: parent PCI bridge window: %pR\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nonstatic_autoadd_resources\00", [36 x i8] zeroinitializer }, align 32
@nonstatic_autoadd_resources._entry_ptr = internal global ptr @nonstatic_autoadd_resources._entry, section ".printk_index", align 4
@nonstatic_autoadd_resources._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 996, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nonstatic_autoadd_resources._entry_ptr.28 = internal global ptr @nonstatic_autoadd_resources._entry.27, section ".printk_index", align 4
@pcmcia_socket_class = external dso_local global %struct.class, align 4
@rsrc_attributes = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pccard_rsrc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@pccard_rsrc_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_available_resources_io, ptr @dev_attr_available_resources_mem, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_available_resources_io = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_io_db, ptr @store_io_db }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_resources_mem = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_mem_db, ptr @store_mem_db }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"available_resources_io\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08lx - 0x%08lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"+ 0x%lx - 0x%lx\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"- 0x%lx - 0x%lx\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x%lx - 0x%lx\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"available_resources_mem\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"probe_mem\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 41, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"pccard_nonstatic_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1059, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 411, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 436, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 437, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 442, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 355, i32 55 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 367, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 122, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 161, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 269, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 979, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 994, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"rsrc_attributes\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1199, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"pccard_rsrc_attributes\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1193, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"dev_attr_available_resources_io\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [33 x i8] c"dev_attr_available_resources_mem\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1125, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1086, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1104, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1106, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1109, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [35 x i8] c"../drivers/pcmcia/rsrc_nonstatic.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1191, i32 8 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_probe_memtype236, ptr @__exitcall_nonstatic_sysfs_exit, ptr @__initcall__kmod_pcmcia_rsrc__241_1239_nonstatic_sysfs_init6, ptr @__ksymtab_pccard_nonstatic_ops, ptr @__param_probe_mem, ptr @add_interval._entry, ptr @add_interval._entry_ptr, ptr @do_mem_probe._entry, ptr @do_mem_probe._entry.11, ptr @do_mem_probe._entry.5, ptr @do_mem_probe._entry.8, ptr @do_mem_probe._entry_ptr, ptr @do_mem_probe._entry_ptr.10, ptr @do_mem_probe._entry_ptr.13, ptr @do_mem_probe._entry_ptr.7, ptr @nonstatic_autoadd_resources._entry, ptr @nonstatic_autoadd_resources._entry.27, ptr @nonstatic_autoadd_resources._entry_ptr, ptr @nonstatic_autoadd_resources._entry_ptr.28, ptr @nonstatic_sysfs_exit, ptr @sub_interval._entry, ptr @sub_interval._entry_ptr, ptr @probe_mem, ptr @pccard_nonstatic_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rsrc_attributes, ptr @pccard_rsrc_attributes, ptr @dev_attr_available_resources_io, ptr @dev_attr_available_resources_mem, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_nonstatic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mem_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mem_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mem_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sub_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nonstatic_autoadd_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nonstatic_autoadd_resources._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsrc_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pccard_rsrc_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_resources_io to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_resources_mem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_nonstatic_validate_mem(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  %2 = load i32, ptr @probe_mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %next.i = getelementptr inbounds %struct.resource_map, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 4
  %cmp.not1.i = icmp eq ptr %6, %1
  br i1 %cmp.not1.i, label %if.end.validate_mem.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.validate_mem.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_mem.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %ok.03.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %m.02.i = phi ptr [ %mm.sroa.7.0.copyload.i, %for.body.i.for.body.i_crit_edge ], [ %6, %if.end.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %m.02.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %mm.sroa.0.0.copyload.i = load i32, ptr %m.02.i, align 4
  %mm.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %m.02.i, i32 4
  %8 = ptrtoint ptr %mm.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %mm.sroa.5.0.copyload.i = load i32, ptr %mm.sroa.5.0..sroa_idx.i, align 4
  %mm.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %m.02.i, i32 8
  %9 = ptrtoint ptr %mm.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %mm.sroa.7.0.copyload.i = load ptr, ptr %mm.sroa.7.0..sroa_idx.i, align 4
  %call.i = tail call fastcc i32 @do_mem_probe(ptr noundef %s, i32 noundef %mm.sroa.0.0.copyload.i, i32 noundef %mm.sroa.5.0.copyload.i, ptr noundef nonnull @readable, ptr noundef nonnull @checksum) #9
  %add.i = add i32 %call.i, %ok.03.i
  %cmp.not.i = icmp eq ptr %mm.sroa.7.0.copyload.i, %1
  br i1 %cmp.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %phi.cmp.i = icmp eq i32 %add.i, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 -19, i32 0
  br label %validate_mem.exit

validate_mem.exit:                                ; preds = %for.end.loopexit.i, %if.end.validate_mem.exit_crit_edge
  %ok.0.lcssa.i = phi i32 [ -19, %if.end.validate_mem.exit_crit_edge ], [ %phi.sel.i, %for.end.loopexit.i ]
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 1
  %next = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %11, %mem_db_valid
  %spec.select = select i1 %cmp.not, i32 %ok.0.lcssa.i, i32 0
  br label %cleanup

cleanup:                                          ; preds = %validate_mem.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %validate_mem.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nonstatic_find_io(ptr nocapture noundef %s, i32 noundef %attr, ptr nocapture noundef %base, i32 noundef %num, i32 noundef %align, ptr nocapture noundef writeonly %parent) #0 align 64 {
entry:
  %data.i = alloca %struct.pcmcia_align_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  %res = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp7 = icmp eq i32 %and, %3
  br i1 %cmp7, label %if.end3.cleanup103_crit_edge, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3.cleanup103_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %res.1 = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 1, i32 2
  %6 = ptrtoint ptr %res.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.1 = icmp eq i32 %9, 0
  br i1 %tobool1.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end3.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end3.1:                                        ; preds = %if.end.1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %and.1 = and i32 %11, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %9)
  %cmp7.1 = icmp eq i32 %and.1, %9
  br i1 %cmp7.1, label %if.end3.1.cleanup103_crit_edge, label %if.end3.1.for.inc.1_crit_edge

if.end3.1.for.inc.1_crit_edge:                    ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end3.1.cleanup103_crit_edge:                   ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

for.inc.1:                                        ; preds = %if.end3.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %resource_data.i182 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  br label %for.body12

for.body12:                                       ; preds = %for.inc100.for.body12_crit_edge, %for.inc.1
  %i.1238 = phi i32 [ 0, %for.inc.1 ], [ %inc101, %for.inc100.for.body12_crit_edge ]
  %res16 = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 %i.1238, i32 2
  %12 = ptrtoint ptr %res16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res16, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.then24.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %flags = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %16 = xor i32 %15, %attr
  %17 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.not = icmp eq i32 %17, 0
  br i1 %cmp20.not, label %if.end44, label %land.lhs.true.for.inc100_crit_edge

land.lhs.true.for.inc100_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.then24.critedge:                               ; preds = %for.body12
  %arrayidx15.le236 = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 %i.1238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %cmp25 = icmp eq i32 %align, 0
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %init_name.i.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then24.critedge.dev_name.exit.i_crit_edge

if.then24.critedge.dev_name.exit.i_crit_edge:     ; preds = %if.then24.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then24.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then24.critedge.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then24.critedge.dev_name.exit.i_crit_edge ]
  %call1.i = tail call ptr @pcmcia_make_resource(i32 noundef 0, i32 noundef %num, i32 noundef 256, ptr noundef %retval.0.i.i) #9
  %24 = ptrtoint ptr %resource_data.i182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource_data.i182, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %dev_name.exit.i.__nonstatic_find_io_region.exit.thread_crit_edge, label %if.end.i

dev_name.exit.i.__nonstatic_find_io_region.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__nonstatic_find_io_region.exit.thread

if.end.i:                                         ; preds = %dev_name.exit.i
  %26 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data.i, i32 0, i32 1
  %sub.i = select i1 %cmp25, i32 65535, i32 %sub
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %data.i, align 4
  %and.i = and i32 %19, %sub.i
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %27, align 4
  %io_db.i = getelementptr inbounds %struct.socket_data, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %io_db.i, ptr %26, align 4
  %cb_dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %31 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb_dev.i, align 8
  %tobool3.not.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %call6.i = call i32 @pci_bus_alloc_resource(ptr noundef %34, ptr noundef nonnull %call1.i, i32 noundef %num, i32 noundef 1, i32 noundef %19, i32 noundef 0, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data.i) #9
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 @allocate_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull %call1.i, i32 noundef %num, i32 noundef %19, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data.i) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then4.i
  %ret.0.i = phi i32 [ %call6.i, %if.then4.i ], [ %call7.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp.not.i, label %if.end33, label %if.then9.i

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call1.i) #9
  br label %__nonstatic_find_io_region.exit.thread

__nonstatic_find_io_region.exit.thread:           ; preds = %if.then9.i, %dev_name.exit.i.__nonstatic_find_io_region.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #9
  %35 = ptrtoint ptr %res16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %res16, align 4
  br label %cleanup103

if.end33:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #9
  %36 = ptrtoint ptr %res16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call1.i, ptr %res16, align 4
  %37 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call1.i, align 4
  %39 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %base, align 4
  %flags35 = getelementptr inbounds %struct.resource, ptr %call1.i, i32 0, i32 3
  %40 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags35, align 4
  %and36 = and i32 %41, -256
  %and37 = and i32 %attr, 255
  %or = or i32 %and36, %and37
  %42 = load ptr, ptr %res16, align 4
  %flags41 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %flags41, align 4
  %44 = ptrtoint ptr %arrayidx15.le236 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %num, ptr %arrayidx15.le236, align 4
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i, ptr %parent, align 4
  br label %cleanup103

if.end44:                                         ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end, align 4
  %add = add i32 %47, 1
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp45 = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add)
  %cmp46 = icmp eq i32 %49, %add
  %or.cond = select i1 %cmp45, i1 true, i1 %cmp46
  br i1 %or.cond, label %if.then47, label %if.end44.if.end69_crit_edge

if.end44.if.end69_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then47:                                        ; preds = %if.end44
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %13, align 4
  %add50 = add i32 %47, %num
  %52 = ptrtoint ptr %resource_data.i182 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resource_data.i182, align 8
  %io_db.i183 = getelementptr inbounds %struct.socket_data, ptr %53, i32 0, i32 2
  %next.i = getelementptr inbounds %struct.socket_data, ptr %53, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %m.015.i = load ptr, ptr %next.i, align 4
  %cmp.not16.i = icmp eq ptr %m.015.i, %io_db.i183
  br i1 %cmp.not16.i, label %if.then47.if.end69_crit_edge, label %if.then47.for.body.i_crit_edge

if.then47.for.body.i_crit_edge:                   ; preds = %if.then47
  br label %for.body.i

if.then47.if.end69_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then47.for.body.i_crit_edge
  %m.018.i = phi ptr [ %m.0.i, %cleanup.i.for.body.i_crit_edge ], [ %m.015.i, %if.then47.for.body.i_crit_edge ]
  %ret.017.i = phi i32 [ %ret.1.i, %cleanup.i.for.body.i_crit_edge ], [ -12, %if.then47.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %m.018.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %m.018.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %51)
  %cmp3.i = icmp ugt i32 %56, %51
  br i1 %cmp3.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %num.i = getelementptr inbounds %struct.resource_map, ptr %m.018.i, i32 0, i32 1
  %57 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num.i, align 4
  %add.i = add i32 %56, -1
  %sub.i184 = add i32 %add.i, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i184, i32 %add50)
  %cmp4.i = icmp ult i32 %sub.i184, %add50
  %spec.select.i = select i1 %cmp4.i, i32 %ret.017.i, i32 0
  br label %cleanup.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i.cleanup.i_crit_edge
  %ret.1.i = phi i32 [ %ret.017.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %next6.i = getelementptr inbounds %struct.resource_map, ptr %m.018.i, i32 0, i32 2
  %59 = ptrtoint ptr %next6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %m.0.i = load ptr, ptr %next6.i, align 4
  %cmp.not.i185 = icmp eq ptr %m.0.i, %io_db.i183
  br i1 %cmp.not.i185, label %__nonstatic_adjust_io_region.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__nonstatic_adjust_io_region.exit:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool52.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool52.not, label %if.then53, label %__nonstatic_adjust_io_region.exit.if.end69_crit_edge

__nonstatic_adjust_io_region.exit.if.end69_crit_edge: ; preds = %__nonstatic_adjust_io_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then53:                                        ; preds = %__nonstatic_adjust_io_region.exit
  %add.i187 = add i32 %add, %num
  %add59 = sub i32 %add.i187, %51
  %call60 = tail call i32 @adjust_resource(ptr noundef nonnull %13, i32 noundef %51, i32 noundef %add59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then53.for.inc100_crit_edge

if.then53.for.inc100_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end63:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.le234 = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 %i.1238
  %60 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %base, align 4
  %61 = ptrtoint ptr %arrayidx15.le234 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx15.le234, align 4
  %add67 = add i32 %62, %num
  store i32 %add67, ptr %arrayidx15.le234, align 4
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %13, ptr %parent, align 4
  br label %cleanup103

if.end69:                                         ; preds = %__nonstatic_adjust_io_region.exit.if.end69_crit_edge, %if.then47.if.end69_crit_edge, %if.end44.if.end69_crit_edge
  %64 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %13, align 4
  %sub71 = sub i32 %65, %num
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub71)
  %cmp74 = icmp eq i32 %49, %sub71
  %or.cond181 = select i1 %cmp45, i1 true, i1 %cmp74
  br i1 %or.cond181, label %if.then75, label %if.end69.for.inc100_crit_edge

if.end69.for.inc100_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.then75:                                        ; preds = %if.end69
  %66 = ptrtoint ptr %resource_data.i182 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resource_data.i182, align 8
  %io_db.i189 = getelementptr inbounds %struct.socket_data, ptr %67, i32 0, i32 2
  %next.i190 = getelementptr inbounds %struct.socket_data, ptr %67, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %next.i190 to i32
  call void @__asan_load4_noabort(i32 %68)
  %m.015.i191 = load ptr, ptr %next.i190, align 4
  %cmp.not16.i192 = icmp eq ptr %m.015.i191, %io_db.i189
  br i1 %cmp.not16.i192, label %if.then75.for.inc100_crit_edge, label %if.then75.for.body.i196_crit_edge

if.then75.for.body.i196_crit_edge:                ; preds = %if.then75
  br label %for.body.i196

if.then75.for.inc100_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

for.body.i196:                                    ; preds = %cleanup.i207.for.body.i196_crit_edge, %if.then75.for.body.i196_crit_edge
  %m.018.i193 = phi ptr [ %m.0.i205, %cleanup.i207.for.body.i196_crit_edge ], [ %m.015.i191, %if.then75.for.body.i196_crit_edge ]
  %ret.017.i194 = phi i32 [ %ret.1.i203, %cleanup.i207.for.body.i196_crit_edge ], [ -12, %if.then75.for.body.i196_crit_edge ]
  %69 = ptrtoint ptr %m.018.i193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %m.018.i193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %sub71)
  %cmp3.i195 = icmp ugt i32 %70, %sub71
  br i1 %cmp3.i195, label %for.body.i196.cleanup.i207_crit_edge, label %lor.lhs.false.i202

for.body.i196.cleanup.i207_crit_edge:             ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i207

lor.lhs.false.i202:                               ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #11
  %num.i197 = getelementptr inbounds %struct.resource_map, ptr %m.018.i193, i32 0, i32 1
  %71 = ptrtoint ptr %num.i197 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num.i197, align 4
  %add.i198 = add i32 %70, -1
  %sub.i199 = add i32 %add.i198, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199, i32 %47)
  %cmp4.i200 = icmp ult i32 %sub.i199, %47
  %spec.select.i201 = select i1 %cmp4.i200, i32 %ret.017.i194, i32 0
  br label %cleanup.i207

cleanup.i207:                                     ; preds = %lor.lhs.false.i202, %for.body.i196.cleanup.i207_crit_edge
  %ret.1.i203 = phi i32 [ %ret.017.i194, %for.body.i196.cleanup.i207_crit_edge ], [ %spec.select.i201, %lor.lhs.false.i202 ]
  %next6.i204 = getelementptr inbounds %struct.resource_map, ptr %m.018.i193, i32 0, i32 2
  %73 = ptrtoint ptr %next6.i204 to i32
  call void @__asan_load4_noabort(i32 %73)
  %m.0.i205 = load ptr, ptr %next6.i204, align 4
  %cmp.not.i206 = icmp eq ptr %m.0.i205, %io_db.i189
  br i1 %cmp.not.i206, label %__nonstatic_adjust_io_region.exit209, label %cleanup.i207.for.body.i196_crit_edge

cleanup.i207.for.body.i196_crit_edge:             ; preds = %cleanup.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i196

__nonstatic_adjust_io_region.exit209:             ; preds = %cleanup.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i203)
  %tobool80.not = icmp eq i32 %ret.1.i203, 0
  br i1 %tobool80.not, label %if.then81, label %__nonstatic_adjust_io_region.exit209.for.inc100_crit_edge

__nonstatic_adjust_io_region.exit209.for.inc100_crit_edge: ; preds = %__nonstatic_adjust_io_region.exit209
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.then81:                                        ; preds = %__nonstatic_adjust_io_region.exit209
  %add.i212 = add i32 %add, %num
  %add88 = sub i32 %add.i212, %65
  %call89 = tail call i32 @adjust_resource(ptr noundef nonnull %13, i32 noundef %sub71, i32 noundef %add88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.then81.for.inc100_crit_edge

if.then81.for.inc100_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end92:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.le = getelementptr %struct.pcmcia_socket, ptr %s, i32 0, i32 8, i32 %i.1238
  %74 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub71, ptr %base, align 4
  %75 = ptrtoint ptr %arrayidx15.le to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx15.le, align 4
  %add96 = add i32 %76, %num
  store i32 %add96, ptr %arrayidx15.le, align 4
  %77 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %13, ptr %parent, align 4
  br label %cleanup103

for.inc100:                                       ; preds = %if.then81.for.inc100_crit_edge, %__nonstatic_adjust_io_region.exit209.for.inc100_crit_edge, %if.then75.for.inc100_crit_edge, %if.end69.for.inc100_crit_edge, %if.then53.for.inc100_crit_edge, %land.lhs.true.for.inc100_crit_edge
  %inc101 = add nuw nsw i32 %i.1238, 1
  %exitcond.not = icmp eq i32 %inc101, 2
  br i1 %exitcond.not, label %for.inc100.cleanup103_crit_edge, label %for.inc100.for.body12_crit_edge

for.inc100.for.body12_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.inc100.cleanup103_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

cleanup103:                                       ; preds = %for.inc100.cleanup103_crit_edge, %if.end92, %if.end63, %if.end33, %__nonstatic_find_io_region.exit.thread, %if.end3.1.cleanup103_crit_edge, %if.end3.cleanup103_crit_edge
  %retval.2 = phi i32 [ 0, %if.end92 ], [ 0, %if.end63 ], [ 0, %if.end33 ], [ -22, %__nonstatic_find_io_region.exit.thread ], [ -16, %if.end3.1.cleanup103_crit_edge ], [ -16, %if.end3.cleanup103_crit_edge ], [ -22, %for.inc100.cleanup103_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nonstatic_find_mem_region(i32 noundef %base, i32 noundef %num, i32 noundef %align, i32 noundef %low, ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  %data = alloca %struct.pcmcia_align_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @pcmcia_make_resource(i32 noundef 0, i32 noundef %num, i32 noundef 512, ptr noundef %retval.0.i) #9
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %4 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource_data, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #9
  %6 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 1
  %7 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 2
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low)
  %tobool2.not = icmp eq i32 %low, 0
  br i1 %tobool2.not, label %lor.rhs, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 16
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %10 = phi i1 [ false, %if.end.lor.end_crit_edge ], [ %phi.cmp, %lor.rhs ]
  %sub = add i32 %align, -1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %data, align 4
  %and5 = and i32 %sub, %base
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and5, ptr %6, align 4
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %base)
  %cmp8 = icmp ult i32 %base, 1048576
  %spec.select = select i1 %cmp8, i32 %base, i32 0
  %add = add i32 %base, 1048576
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mem_db_valid, ptr %7, align 4
  %spec.select82 = select i1 %10, i32 %add, i32 %spec.select
  %max.0 = select i1 %10, i32 -1, i32 1048576
  %14 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_dev, align 8
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.else17, label %if.then14

for.cond:                                         ; preds = %if.end22.1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mem_db_valid, ptr %7, align 4
  %17 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb_dev, align 8
  %tobool13.not.172 = icmp eq ptr %18, null
  br i1 %tobool13.not.172, label %if.else17.177, label %if.then14.175

if.then14.175:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %bus.173 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus.173 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.173, align 8
  %call16.174 = call i32 @pci_bus_alloc_resource(ptr noundef %20, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef 1, i32 noundef %spec.select, i32 noundef 0, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.180

if.else17.177:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call18.176 = call i32 @allocate_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef %spec.select, i32 noundef 1048576, i32 noundef 1, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.180

if.end19.180:                                     ; preds = %if.else17.177, %if.then14.175
  %ret.2.178 = phi i32 [ %call16.174, %if.then14.175 ], [ %call18.176, %if.else17.177 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.178)
  %cmp20.179 = icmp eq i32 %ret.2.178, 0
  br i1 %cmp20.179, label %if.end19.180.cleanup_crit_edge, label %if.end22.181

if.end19.180.cleanup_crit_edge:                   ; preds = %if.end19.180
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.181:                                     ; preds = %if.end19.180
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %7, align 4
  %22 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb_dev, align 8
  %tobool13.not.1.1 = icmp eq ptr %23, null
  br i1 %tobool13.not.1.1, label %if.else17.1.1, label %if.then14.1.1

if.then14.1.1:                                    ; preds = %if.end22.181
  call void @__sanitizer_cov_trace_pc() #11
  %bus.1.1 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bus.1.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.1.1, align 8
  %call16.1.1 = call i32 @pci_bus_alloc_resource(ptr noundef %25, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef 1, i32 noundef %spec.select, i32 noundef 0, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.1.1

if.else17.1.1:                                    ; preds = %if.end22.181
  call void @__sanitizer_cov_trace_pc() #11
  %call18.1.1 = call i32 @allocate_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef %spec.select, i32 noundef 1048576, i32 noundef 1, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.1.1

if.end19.1.1:                                     ; preds = %if.else17.1.1, %if.then14.1.1
  %ret.2.1.1 = phi i32 [ %call16.1.1, %if.then14.1.1 ], [ %call18.1.1, %if.else17.1.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.1.1)
  %cmp20.1.1 = icmp eq i32 %ret.2.1.1, 0
  br i1 %cmp20.1.1, label %if.end19.1.1.cleanup_crit_edge, label %if.end22.1.1

if.end19.1.1.cleanup_crit_edge:                   ; preds = %if.end19.1.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.1.1:                                     ; preds = %if.end19.1.1
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %5, ptr %7, align 4
  br label %if.then32

if.then14:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %bus = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 8
  %call16 = call i32 @pci_bus_alloc_resource(ptr noundef %28, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef 1, i32 noundef %spec.select82, i32 noundef 0, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19

if.else17:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 @allocate_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef %spec.select82, i32 noundef %max.0, i32 noundef 1, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then14
  %ret.2 = phi i32 [ %call16, %if.then14 ], [ %call18, %if.else17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp20 = icmp eq i32 %ret.2, 0
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %5, ptr %7, align 4
  %30 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb_dev, align 8
  %tobool13.not.1 = icmp eq ptr %31, null
  br i1 %tobool13.not.1, label %if.else17.1, label %if.then14.1

if.then14.1:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %bus.1 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bus.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.1, align 8
  %call16.1 = call i32 @pci_bus_alloc_resource(ptr noundef %33, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef 1, i32 noundef %spec.select82, i32 noundef 0, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.1

if.else17.1:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call18.1 = call i32 @allocate_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call1, i32 noundef %num, i32 noundef %spec.select82, i32 noundef %max.0, i32 noundef 1, ptr noundef nonnull @pcmcia_align, ptr noundef nonnull %data) #9
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.else17.1, %if.then14.1
  %ret.2.1 = phi i32 [ %call16.1, %if.then14.1 ], [ %call18.1, %if.else17.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.1)
  %cmp20.1 = icmp eq i32 %ret.2.1, 0
  br i1 %cmp20.1, label %if.end19.1.cleanup_crit_edge, label %if.end22.1

if.end19.1.cleanup_crit_edge:                     ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.1:                                       ; preds = %if.end19.1
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %7, align 4
  br i1 %10, label %for.cond, label %if.end22.1.if.then32_crit_edge

if.end22.1.if.then32_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %if.end22.1.if.then32_crit_edge, %if.end22.1.1
  call void @kfree(ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end19.1.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end19.1.1.cleanup_crit_edge, %if.end19.180.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dev_name.exit.cleanup_crit_edge ], [ null, %if.then32 ], [ %call1, %if.end19.1.1.cleanup_crit_edge ], [ %call1, %if.end19.180.cleanup_crit_edge ], [ %call1, %if.end19.1.cleanup_crit_edge ], [ %call1, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nonstatic_init(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %next, align 8
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %call7.i.i, i32 0, i32 1
  %next3 = getelementptr inbounds %struct.socket_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %next3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mem_db_valid, ptr %next3, align 4
  %io_db = getelementptr inbounds %struct.socket_data, ptr %call7.i.i, i32 0, i32 2
  %next5 = getelementptr inbounds %struct.socket_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %io_db, ptr %next5, align 8
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %4 = ptrtoint ptr %resource_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %resource_data, align 8
  %cb_dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %5 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_dev.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %call11.i = tail call ptr @pci_bus_resource_n(ptr noundef nonnull %8, i32 noundef 0) #9
  %tobool5.not12.i = icmp eq ptr %call11.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %tobool5.not17.i = phi i1 [ %tobool5.not12.i, %for.cond.preheader.i ], [ %tobool5.not.i, %for.inc.i.for.body.i_crit_edge ]
  %call16.i = phi ptr [ %call11.i, %for.cond.preheader.i ], [ %call.i, %for.inc.i.for.body.i_crit_edge ]
  %done.014.i = phi i32 [ 0, %for.cond.preheader.i ], [ %done.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool5.not17.i, label %for.body.i.for.inc.i_crit_edge, label %if.end8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.resource, ptr %call16.i, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end19.i_crit_edge, label %if.then10.i

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end8.i
  %cmp11.i = icmp eq ptr %call16.i, @ioport_resource
  br i1 %cmp11.i, label %if.then10.i.for.inc.i_crit_edge, label %do.end.i

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then10.i
  %11 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %call16.i) #13
  %13 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call16.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call16.i, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %sub.i.i = sub i32 1, %14
  %add.i.i = add i32 %sub.i.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i.i = icmp ult i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %16)
  %cmp1.i.i = icmp ugt i32 %16, 1048575
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %do.end.i.if.end19.i_crit_edge, label %if.end3.i.i

do.end.i.if.end19.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end3.i.i:                                      ; preds = %do.end.i
  %17 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource_data, align 8
  %io_db.i.i = getelementptr inbounds %struct.socket_data, ptr %18, i32 0, i32 2
  %add12.i.i.i = add nuw nsw i32 %16, 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.for.cond.i.i.i_crit_edge, %if.end3.i.i
  %p.0.i.i.i = phi ptr [ %io_db.i.i, %if.end3.i.i ], [ %26, %lor.lhs.false.i.i.i.for.cond.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %p.0.i.i.i, %io_db.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.cond.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.cond.i.i.i
  %19 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p.0.i.i.i, align 4
  %num2.i.i.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %num2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num2.i.i.i, align 4
  %add.i.i.i = add i32 %22, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %14)
  %cmp3.not.i.i.i = icmp ult i32 %add.i.i.i, %14
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %num2.i.i.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i.i.i, i32 0, i32 1
  %sub.i.i.i = sub i32 %add12.i.i.i, %20
  %23 = tail call i32 @llvm.umax.i32(i32 %sub.i.i.i, i32 %22) #9
  %24 = ptrtoint ptr %num2.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %num2.i.i.i.le, align 4
  br label %35

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %for.cond.i.i.i.if.end.i.i.i_crit_edge
  %next.i.i.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next.i.i.i, align 4
  %cmp9.i.i.i = icmp eq ptr %26, %io_db.i.i
  br i1 %cmp9.i.i.i, label %if.end.i.i.i.for.end.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %cmp14.i.i.i = icmp ugt i32 %28, %16
  br i1 %cmp14.i.i.i, label %lor.lhs.false.i.i.i.for.end.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.for.cond.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.cond.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

lor.lhs.false.i.i.i.for.end.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.i.for.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %add_interval.exit.i.i, label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %next.i.i.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %14, ptr %call7.i.i.i.i, align 8
  %num23.i.i.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %num23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i, ptr %num23.i.i.i, align 4
  %32 = ptrtoint ptr %next.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next.i.i.i.le, align 4
  %next25.i.i.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %next25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %next25.i.i.i, align 8
  store ptr %call7.i.i.i.i, ptr %next.i.i.i.le, align 4
  br label %35

add_interval.exit.i.i:                            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %if.end19.i

35:                                               ; preds = %if.end21.i.i.i, %if.then.i.i.i
  %or5.i = or i32 %done.014.i, 256
  br label %if.end19.i

if.end19.i:                                       ; preds = %35, %add_interval.exit.i.i, %do.end.i.if.end19.i_crit_edge, %if.end8.i.if.end19.i_crit_edge
  %done.1.i = phi i32 [ %done.014.i, %if.end8.i.if.end19.i_crit_edge ], [ %or5.i, %35 ], [ %done.014.i, %do.end.i.if.end19.i_crit_edge ], [ %done.014.i, %add_interval.exit.i.i ]
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and21.i = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cmp24.i = icmp eq ptr %call16.i, @iomem_resource
  %or.cond1.i = select i1 %tobool22.not.i, i1 true, i1 %cmp24.i
  br i1 %or.cond1.i, label %if.end19.i.for.inc.i_crit_edge, label %do.end29.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end29.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb_dev.i, align 8
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %call16.i) #13
  %40 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call16.i, align 4
  %end33.i = getelementptr inbounds %struct.resource, ptr %call16.i, i32 0, i32 1
  %42 = ptrtoint ptr %end33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end33.i, align 4
  %call34.i = tail call fastcc i32 @adjust_memory(ptr noundef %s, i32 noundef 2, i32 noundef %41, i32 noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  %or37.i = or i32 %done.1.i, 512
  %spec.select2.i = select i1 %tobool35.not.i, i32 %or37.i, i32 %done.1.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end29.i, %if.end19.i.for.inc.i_crit_edge, %if.then10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %done.2.i = phi i32 [ %done.014.i, %if.then10.i.for.inc.i_crit_edge ], [ %done.1.i, %if.end19.i.for.inc.i_crit_edge ], [ %done.014.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select2.i, %do.end29.i ]
  %inc.i = add i32 %i.013.i, 1
  %44 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cb_dev.i, align 8
  %bus4.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bus4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus4.i, align 8
  %call.i = tail call ptr @pci_bus_resource_n(ptr noundef %47, i32 noundef %inc.i) #9
  %tobool5.not.i = icmp eq ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 3
  %48 = and i1 %cmp.i, %tobool5.not.i
  br i1 %48, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %done.2.i)
  %cmp40.i = icmp eq i32 %done.2.i, 768
  br i1 %cmp40.i, label %if.then41.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then41.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %resource_setup_done.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 22
  %49 = ptrtoint ptr %resource_setup_done.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %resource_setup_done.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41.i, %for.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.then41.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nonstatic_release_resource_db(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 1
  %next = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %cmp.not34 = icmp eq ptr %3, %mem_db_valid
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.035 = phi ptr [ %5, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %next2 = getelementptr inbounds %struct.resource_map, ptr %p.035, i32 0, i32 2
  %4 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next2, align 4
  tail call void @kfree(ptr noundef %p.035) #9
  %cmp.not = icmp eq ptr %5, %mem_db_valid
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %next3 = getelementptr inbounds %struct.resource_map, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %next3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next3, align 4
  %cmp6.not36 = icmp eq ptr %7, %1
  br i1 %cmp6.not36, label %for.end.for.end10_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %p.137 = phi ptr [ %9, %for.body7.for.body7_crit_edge ], [ %7, %for.end.for.body7_crit_edge ]
  %next8 = getelementptr inbounds %struct.resource_map, ptr %p.137, i32 0, i32 2
  %8 = ptrtoint ptr %next8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next8, align 4
  tail call void @kfree(ptr noundef %p.137) #9
  %cmp6.not = icmp eq ptr %9, %1
  br i1 %cmp6.not, label %for.body7.for.end10_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.for.end10_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.end10:                                        ; preds = %for.body7.for.end10_crit_edge, %for.end.for.end10_crit_edge
  %io_db = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 2
  %next11 = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %next11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next11, align 4
  %cmp14.not38 = icmp eq ptr %11, %io_db
  br i1 %cmp14.not38, label %for.end10.for.end18_crit_edge, label %for.end10.for.body15_crit_edge

for.end10.for.body15_crit_edge:                   ; preds = %for.end10
  br label %for.body15

for.end10.for.end18_crit_edge:                    ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.end10.for.body15_crit_edge
  %p.239 = phi ptr [ %13, %for.body15.for.body15_crit_edge ], [ %11, %for.end10.for.body15_crit_edge ]
  %next16 = getelementptr inbounds %struct.resource_map, ptr %p.239, i32 0, i32 2
  %12 = ptrtoint ptr %next16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next16, align 4
  tail call void @kfree(ptr noundef %p.239) #9
  %cmp14.not = icmp eq ptr %13, %io_db
  br i1 %cmp14.not, label %for.body15.for.end18_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body15.for.end18_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

for.end18:                                        ; preds = %for.body15.for.end18_crit_edge, %for.end10.for.end18_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nonstatic_sysfs_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @class_interface_unregister(ptr noundef nonnull @pccard_rsrc_interface) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nonstatic_sysfs_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @class_interface_register(ptr noundef nonnull @pccard_rsrc_interface) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mem_probe(ptr noundef %s, i32 noundef %base, i32 noundef %num, ptr noundef %validate, ptr noundef %fallback) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %add = add i32 %num, %base
  %sub = add i32 %add, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %base, i32 noundef %sub) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %num)
  %cmp = icmp ult i32 %num, 131072
  %shr = lshr i32 %num, 4
  %and = and i32 %shr, 268427264
  %2 = tail call i32 @llvm.umin.i32(i32 %and, i32 8388608)
  %3 = select i1 %cmp, i32 8192, i32 %2
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %4 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_size, align 4
  %mul = shl i32 %5, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %mul)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %base)
  %cmp8124 = icmp ugt i32 %add, %base
  br i1 %cmp8124, label %for.body.lr.ph, label %entry.do.end62.thread_crit_edge

entry.do.end62.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62.thread

for.body.lr.ph:                                   ; preds = %entry
  %tobool23.not = icmp eq ptr %fallback, null
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ %base, %for.body.lr.ph ], [ %add58, %for.inc57.for.body_crit_edge ]
  %j.0127 = phi i32 [ %base, %for.body.lr.ph ], [ %j.4134, %for.inc57.for.body_crit_edge ]
  %fail.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %fail.1, %for.inc57.for.body_crit_edge ]
  %bad.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %bad.1, %for.inc57.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail.0126)
  %tobool.not = icmp eq i32 %fail.0126, 0
  br i1 %tobool.not, label %for.cond10.preheader, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.cond10.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0128, i32 %add)
  %cmp12117 = icmp ult i32 %i.0128, %add
  br i1 %cmp12117, label %for.cond10.preheader.for.body13_crit_edge, label %for.cond10.preheader.for.end_crit_edge

for.cond10.preheader.for.end_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond10.preheader.for.body13_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.cond10.preheader.for.body13_crit_edge
  %j.1118 = phi i32 [ %add17, %for.inc.for.body13_crit_edge ], [ %i.0128, %for.cond10.preheader.for.body13_crit_edge ]
  %call = tail call fastcc i32 @do_validate_mem(ptr noundef %s, i32 noundef %j.1118, i32 noundef %6, ptr noundef %validate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %for.body13.for.end_crit_edge, label %for.inc

for.body13.for.end_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body13
  %add17 = add i32 %j.1118, %6
  %cmp12 = icmp ult i32 %add17, %add
  br i1 %cmp12, label %for.inc.for.body13_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body13.for.end_crit_edge, %for.cond10.preheader.for.end_crit_edge
  %j.1.lcssa = phi i32 [ %i.0128, %for.cond10.preheader.for.end_crit_edge ], [ %j.1118, %for.body13.for.end_crit_edge ], [ %add17, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0128, i32 %base)
  %cmp18 = icmp eq i32 %i.0128, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.lcssa, i32 %add)
  %cmp20 = icmp eq i32 %j.1.lcssa, %add
  %spec.select = select i1 %cmp18, i1 %cmp20, i1 false
  %land.ext = zext i1 %spec.select to i32
  br label %if.end21

if.end21:                                         ; preds = %for.end, %for.body.if.end21_crit_edge
  %fail.1 = phi i32 [ 1, %for.body.if.end21_crit_edge ], [ %land.ext, %for.end ]
  %j.2 = phi i32 [ %j.0127, %for.body.if.end21_crit_edge ], [ %j.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail.1)
  %tobool22.not = icmp eq i32 %fail.1, 0
  %or.cond = or i1 %tobool23.not, %tobool22.not
  br i1 %or.cond, label %if.end21.if.end36_crit_edge, label %for.cond25.preheader

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.cond25.preheader:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0128, i32 %add)
  %cmp27120 = icmp ult i32 %i.0128, %add
  br i1 %cmp27120, label %for.cond25.preheader.for.body28_crit_edge, label %for.cond25.preheader.for.inc57_crit_edge

for.cond25.preheader.for.inc57_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

for.body28:                                       ; preds = %for.inc33.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %j.3121 = phi i32 [ %add34, %for.inc33.for.body28_crit_edge ], [ %i.0128, %for.cond25.preheader.for.body28_crit_edge ]
  %call29 = tail call fastcc i32 @do_validate_mem(ptr noundef %s, i32 noundef %j.3121, i32 noundef %6, ptr noundef nonnull %fallback)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.body28.if.end36_crit_edge, label %for.inc33

for.body28.if.end36_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.inc33:                                        ; preds = %for.body28
  %add34 = add i32 %j.3121, %6
  %cmp27 = icmp ult i32 %add34, %add
  br i1 %cmp27, label %for.inc33.for.body28_crit_edge, label %for.inc33.if.end36_crit_edge

for.inc33.if.end36_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.inc33.for.body28_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

if.end36:                                         ; preds = %for.inc33.if.end36_crit_edge, %for.body28.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %j.4 = phi i32 [ %j.2, %if.end21.if.end36_crit_edge ], [ %j.3121, %for.body28.if.end36_crit_edge ], [ %add34, %for.inc33.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.4, i32 %i.0128)
  %cmp37.not = icmp eq i32 %j.4, %i.0128
  br i1 %cmp37.not, label %if.end36.for.inc57_crit_edge, label %if.then38

if.end36.for.inc57_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bad.0125)
  %tobool39.not = icmp eq i32 %bad.0125, 0
  br i1 %tobool39.not, label %do.end43, label %if.then38.do.end48_crit_edge

if.then38.do.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %if.then38.do.end48_crit_edge
  %sub50 = add i32 %j.4, -1
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %i.0128, i32 noundef %sub50) #13
  %sub52 = sub i32 %j.4, %i.0128
  %call53 = tail call fastcc i32 @sub_interval(ptr noundef %1, i32 noundef %i.0128, i32 noundef %sub52)
  %add55 = add i32 %sub52, %bad.0125
  br label %for.inc57

for.inc57:                                        ; preds = %do.end48, %if.end36.for.inc57_crit_edge, %for.cond25.preheader.for.inc57_crit_edge
  %j.4134 = phi i32 [ %j.4, %do.end48 ], [ %j.4, %if.end36.for.inc57_crit_edge ], [ %i.0128, %for.cond25.preheader.for.inc57_crit_edge ]
  %bad.1 = phi i32 [ %add55, %do.end48 ], [ %bad.0125, %if.end36.for.inc57_crit_edge ], [ %bad.0125, %for.cond25.preheader.for.inc57_crit_edge ]
  %add58 = add i32 %j.4134, %6
  %cmp8 = icmp ult i32 %add58, %add
  br i1 %cmp8, label %for.inc57.for.body_crit_edge, label %do.end62

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end62:                                         ; preds = %for.inc57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bad.1)
  %tobool64.not = icmp eq i32 %bad.1, 0
  br i1 %tobool64.not, label %do.end62.do.end62.thread_crit_edge, label %do.end62._crit_edge

do.end62._crit_edge:                              ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

do.end62.do.end62.thread_crit_edge:               ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62.thread

do.end62.thread:                                  ; preds = %do.end62.do.end62.thread_crit_edge, %entry.do.end62.thread_crit_edge
  br label %7

7:                                                ; preds = %do.end62.thread, %do.end62._crit_edge
  %bad.0.lcssa137 = phi i32 [ 0, %do.end62.thread ], [ %bad.1, %do.end62._crit_edge ]
  %8 = phi ptr [ @.str.14, %do.end62.thread ], [ @.str.15, %do.end62._crit_edge ]
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %8) #13
  %sub67 = sub i32 %num, %bad.0.lcssa137
  ret i32 %sub67
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @readable(ptr noundef %s, ptr noundef %res, ptr noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fake_cis, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @readable.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@readable, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !92

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @readable.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %res6 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %res6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %res, ptr %res6, align 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %5 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_size, align 4
  %call7 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %6) #9
  %cis_virt = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 7
  %7 = ptrtoint ptr %cis_virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %cis_virt, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end20.thread, label %if.then10

if.end20.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %res6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %res6, align 4
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 36
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %callback, align 8
  %validate = getelementptr inbounds %struct.pcmcia_callback, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %validate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %validate, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %cleanup.critedge, label %if.then12

if.then12:                                        ; preds = %if.then10
  %call15 = tail call i32 %12(ptr noundef %s, ptr noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %phi.cmp = icmp eq i32 %call15, 0
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %13 = ptrtoint ptr %cis_virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cis_virt, align 4
  tail call void @iounmap(ptr noundef %14) #9
  %15 = ptrtoint ptr %cis_virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cis_virt, align 4
  %16 = ptrtoint ptr %res6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %res6, align 4
  br i1 %phi.cmp, label %lor.lhs.false, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %spec.select = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %19 = ptrtoint ptr %cis_virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cis_virt, align 4
  tail call void @iounmap(ptr noundef %20) #9
  %21 = ptrtoint ptr %cis_virt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cis_virt, align 4
  %22 = ptrtoint ptr %res6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %res6, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %lor.lhs.false, %if.then12.cleanup_crit_edge, %if.end20.thread, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -22, %if.then12.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ 0, %do.body ], [ -22, %if.end20.thread ], [ -22, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @checksum(ptr noundef %s, ptr noundef %res, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  %map = alloca %struct.pccard_mem_map, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #9
  %0 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %map, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 18
  %5 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_size, align 4
  %call = tail call ptr @ioremap(i32 noundef %4, i32 noundef %6) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 5
  %8 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 4
  %9 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %map, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %0, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %9, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %res, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %8, align 4
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 23
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 8
  %set_mem_map = getelementptr inbounds %struct.pccard_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_mem_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_mem_map, align 4
  %call3 = call i32 %18(ptr noundef %s, ptr noundef nonnull %map) #9
  %19 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp36.not = icmp eq i32 %20, 0
  br i1 %cmp36.not, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.039 = phi i32 [ %add7, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %a.038 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %b.037 = phi i32 [ %and, %for.body.for.body_crit_edge ], [ -1, %if.then.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call, i32 %i.039
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %add = add i32 %22, %a.038
  %and = and i32 %22, %b.037
  %add7 = add i32 %i.039, 44
  %23 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %map_size, align 4
  %cmp = icmp ult i32 %add7, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %if.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.loopexit:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %phi.cmp = icmp eq i32 %and, -1
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.then.if.end_crit_edge
  %b.0.lcssa = phi i1 [ true, %if.then.if.end_crit_edge ], [ %phi.cmp, %if.end.loopexit ]
  %a.0.lcssa = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %add, %if.end.loopexit ]
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %0, align 1
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 8
  %set_mem_map10 = getelementptr inbounds %struct.pccard_operations, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %set_mem_map10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_mem_map10, align 4
  %call11 = call i32 %29(ptr noundef %s, ptr noundef nonnull %map) #9
  call void @iounmap(ptr noundef nonnull %call) #9
  br i1 %b.0.lcssa, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %a.0.lcssa, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_validate_mem(ptr noundef %s, i32 noundef %base, i32 noundef %size, ptr noundef readonly %validate) unnamed_addr #0 align 64 {
entry:
  %info1 = alloca i32, align 4
  %info2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info1) #9
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info2) #9
  %3 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %info2, align 4
  %div63 = lshr i32 %size, 1
  %call.i = tail call ptr @pcmcia_make_resource(i32 noundef %base, i32 noundef %div63, i32 noundef -2147483136, ptr noundef nonnull @.str.16) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.claim_region.exit_crit_edge, label %if.then.i

entry.claim_region.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %claim_region.exit

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %s, null
  br i1 %tobool2.not.i, label %if.then.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.then.i.lor.lhs.false.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %cb_dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %4 = ptrtoint ptr %cb_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_dev.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %if.end.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %call6.i = tail call ptr @pci_find_parent_resource(ptr noundef nonnull %5, ptr noundef nonnull %call.i) #9
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end.i.if.then10.i_crit_edge, label %if.end.i.lor.lhs.false.i_crit_edge

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.end.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.then.i.lor.lhs.false.i_crit_edge
  %parent.03.i = phi ptr [ %call6.i, %if.end.i.lor.lhs.false.i_crit_edge ], [ @iomem_resource, %land.lhs.true.i.lor.lhs.false.i_crit_edge ], [ @iomem_resource, %if.then.i.lor.lhs.false.i_crit_edge ]
  %call8.i = tail call i32 @request_resource(ptr noundef nonnull %parent.03.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.claim_region.exit_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i.claim_region.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %claim_region.exit

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %claim_region.exit

claim_region.exit:                                ; preds = %if.then10.i, %lor.lhs.false.i.claim_region.exit_crit_edge, %entry.claim_region.exit_crit_edge
  %res.0.i = phi ptr [ null, %if.then10.i ], [ %call.i, %lor.lhs.false.i.claim_region.exit_crit_edge ], [ null, %entry.claim_region.exit_crit_edge ]
  %add = add i32 %div63, %base
  %call.i65 = tail call ptr @pcmcia_make_resource(i32 noundef %add, i32 noundef %div63, i32 noundef -2147483136, ptr noundef nonnull @.str.16) #9
  %tobool1.not.i66 = icmp eq ptr %call.i65, null
  br i1 %tobool1.not.i66, label %claim_region.exit.claim_region.exit81.thread_crit_edge, label %if.then.i68

claim_region.exit.claim_region.exit81.thread_crit_edge: ; preds = %claim_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %claim_region.exit81.thread

if.then.i68:                                      ; preds = %claim_region.exit
  %tobool2.not.i67 = icmp eq ptr %s, null
  br i1 %tobool2.not.i67, label %if.then.i68.lor.lhs.false.i78_crit_edge, label %land.lhs.true.i71

if.then.i68.lor.lhs.false.i78_crit_edge:          ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i78

land.lhs.true.i71:                                ; preds = %if.then.i68
  %cb_dev.i69 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %6 = ptrtoint ptr %cb_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_dev.i69, align 8
  %tobool3.not.i70 = icmp eq ptr %7, null
  br i1 %tobool3.not.i70, label %land.lhs.true.i71.lor.lhs.false.i78_crit_edge, label %if.end.i74

land.lhs.true.i71.lor.lhs.false.i78_crit_edge:    ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i78

if.end.i74:                                       ; preds = %land.lhs.true.i71
  %call6.i72 = tail call ptr @pci_find_parent_resource(ptr noundef nonnull %7, ptr noundef nonnull %call.i65) #9
  %tobool7.not.i73 = icmp eq ptr %call6.i72, null
  br i1 %tobool7.not.i73, label %if.end.i74.if.then10.i79_crit_edge, label %if.end.i74.lor.lhs.false.i78_crit_edge

if.end.i74.lor.lhs.false.i78_crit_edge:           ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i78

if.end.i74.if.then10.i79_crit_edge:               ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i79

lor.lhs.false.i78:                                ; preds = %if.end.i74.lor.lhs.false.i78_crit_edge, %land.lhs.true.i71.lor.lhs.false.i78_crit_edge, %if.then.i68.lor.lhs.false.i78_crit_edge
  %parent.03.i75 = phi ptr [ %call6.i72, %if.end.i74.lor.lhs.false.i78_crit_edge ], [ @iomem_resource, %land.lhs.true.i71.lor.lhs.false.i78_crit_edge ], [ @iomem_resource, %if.then.i68.lor.lhs.false.i78_crit_edge ]
  %call8.i76 = tail call i32 @request_resource(ptr noundef nonnull %parent.03.i75, ptr noundef nonnull %call.i65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i76)
  %tobool9.not.i77 = icmp eq i32 %call8.i76, 0
  br i1 %tobool9.not.i77, label %claim_region.exit81, label %lor.lhs.false.i78.if.then10.i79_crit_edge

lor.lhs.false.i78.if.then10.i79_crit_edge:        ; preds = %lor.lhs.false.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i79

if.then10.i79:                                    ; preds = %lor.lhs.false.i78.if.then10.i79_crit_edge, %if.end.i74.if.then10.i79_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i65) #9
  br label %claim_region.exit81.thread

claim_region.exit81.thread:                       ; preds = %if.then10.i79, %claim_region.exit.claim_region.exit81.thread_crit_edge
  %tobool.not97 = icmp eq ptr %res.0.i, null
  br label %do.body

claim_region.exit81:                              ; preds = %lor.lhs.false.i78
  %tobool.not = icmp eq ptr %res.0.i, null
  br i1 %tobool.not, label %claim_region.exit81.do.body_crit_edge, label %if.then

claim_region.exit81.do.body_crit_edge:            ; preds = %claim_region.exit81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %claim_region.exit81
  %tobool5.not = icmp eq ptr %validate, null
  br i1 %tobool5.not, label %if.then.do.body_crit_edge, label %if.then6

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 %validate(ptr noundef %s, ptr noundef nonnull %res.0.i, ptr noundef nonnull %info1) #9, !callees !95
  %call8 = call i32 %validate(ptr noundef %s, ptr noundef nonnull %call.i65, ptr noundef nonnull %info2) #9, !callees !95
  %add9 = add i32 %call8, %call7
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.then.do.body_crit_edge, %claim_region.exit81.do.body_crit_edge, %claim_region.exit81.thread
  %tobool4.not103 = phi i1 [ false, %if.then6 ], [ false, %if.then.do.body_crit_edge ], [ false, %claim_region.exit81.do.body_crit_edge ], [ true, %claim_region.exit81.thread ]
  %tobool.not102 = phi i1 [ false, %if.then6 ], [ false, %if.then.do.body_crit_edge ], [ true, %claim_region.exit81.do.body_crit_edge ], [ %tobool.not97, %claim_region.exit81.thread ]
  %res.0.i80100 = phi ptr [ %call.i65, %if.then6 ], [ %call.i65, %if.then.do.body_crit_edge ], [ %call.i65, %claim_region.exit81.do.body_crit_edge ], [ null, %claim_region.exit81.thread ]
  %ret.0 = phi i32 [ %add9, %if.then6 ], [ 0, %if.then.do.body_crit_edge ], [ -22, %claim_region.exit81.do.body_crit_edge ], [ -22, %claim_region.exit81.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_validate_mem.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_validate_mem, %if.then15)) #9
          to label %do.end [label %if.then15], !srcloc !92

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %add16 = add i32 %size, %base
  %sub = add i32 %add16, -1
  %8 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info1, align 4
  %10 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_validate_mem.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %base, i32 noundef %sub, ptr noundef %res.0.i, ptr noundef %res.0.i80100, i32 noundef %ret.0, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  br i1 %tobool4.not103, label %do.end.free_region.exit_crit_edge, label %if.then.i83

do.end.free_region.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_region.exit

if.then.i83:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i82 = call i32 @release_resource(ptr noundef nonnull %res.0.i80100) #9
  call void @kfree(ptr noundef nonnull %res.0.i80100) #9
  br label %free_region.exit

free_region.exit:                                 ; preds = %if.then.i83, %do.end.free_region.exit_crit_edge
  br i1 %tobool.not102, label %free_region.exit.free_region.exit89_crit_edge, label %if.then.i87

free_region.exit.free_region.exit89_crit_edge:    ; preds = %free_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_region.exit89

if.then.i87:                                      ; preds = %free_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i86 = call i32 @release_resource(ptr noundef nonnull %res.0.i) #9
  call void @kfree(ptr noundef nonnull %res.0.i) #9
  br label %free_region.exit89

free_region.exit89:                               ; preds = %if.then.i87, %free_region.exit.free_region.exit89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool18.not = icmp eq i32 %ret.0, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %free_region.exit89.cleanup_crit_edge

free_region.exit89.cleanup_crit_edge:             ; preds = %free_region.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %free_region.exit89
  %12 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %info1, align 4
  %14 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp ne i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20 = icmp eq i32 %13, 0
  %or.cond64 = or i1 %cmp20, %cmp.not
  br i1 %or.cond64, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %tobool23.not = icmp eq ptr %validate, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %land.lhs.true24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.end22
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 12
  %16 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fake_cis, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true24
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 1
  %add12.i = add i32 %size, %base
  %sub13.i = add i32 %add12.i, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i93.for.cond.i_crit_edge, %if.then26
  %p.0.i = phi ptr [ %mem_db_valid, %if.then26 ], [ %25, %lor.lhs.false.i93.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %p.0.i, %mem_db_valid
  br i1 %cmp.not.i, label %for.cond.i.if.end.i92_crit_edge, label %land.lhs.true.i90

for.cond.i.if.end.i92_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i92

land.lhs.true.i90:                                ; preds = %for.cond.i
  %18 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p.0.i, align 4
  %num2.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %num2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num2.i, align 4
  %add.i = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %base)
  %cmp3.not.i = icmp ult i32 %add.i, %base
  br i1 %cmp3.not.i, label %land.lhs.true.i90.if.end.i92_crit_edge, label %if.then.i91

land.lhs.true.i90.if.end.i92_crit_edge:           ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i92

if.then.i91:                                      ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  %num2.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %sub.i = sub i32 %add12.i, %19
  %22 = call i32 @llvm.umax.i32(i32 %sub.i, i32 %21) #9
  %23 = ptrtoint ptr %num2.i.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num2.i.le, align 4
  br label %add_interval.exit

if.end.i92:                                       ; preds = %land.lhs.true.i90.if.end.i92_crit_edge, %for.cond.i.if.end.i92_crit_edge
  %next.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next.i, align 4
  %cmp9.i = icmp eq ptr %25, %mem_db_valid
  br i1 %cmp9.i, label %if.end.i92.for.end.i_crit_edge, label %lor.lhs.false.i93

if.end.i92.for.end.i_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

lor.lhs.false.i93:                                ; preds = %if.end.i92
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %cmp14.i = icmp ugt i32 %27, %sub13.i
  br i1 %cmp14.i, label %lor.lhs.false.i93.for.end.i_crit_edge, label %lor.lhs.false.i93.for.cond.i_crit_edge

lor.lhs.false.i93.for.cond.i_crit_edge:           ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

lor.lhs.false.i93.for.end.i_crit_edge:            ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %lor.lhs.false.i93.for.end.i_crit_edge, %if.end.i92.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not.i94 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i94, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %add_interval.exit

if.end21.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %next.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %base, ptr %call7.i.i, align 8
  %num23.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %num23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size, ptr %num23.i, align 4
  %31 = ptrtoint ptr %next.i.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next.i.le, align 4
  %next25.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %next25.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %next25.i, align 8
  store ptr %call7.i.i, ptr %next.i.le, align 4
  br label %add_interval.exit

add_interval.exit:                                ; preds = %if.end21.i, %do.end.i, %if.then.i91
  %call28 = call fastcc i32 @sub_interval(ptr noundef %1, i32 noundef %base, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %add_interval.exit, %land.lhs.true24.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %free_region.exit89.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %free_region.exit89.cleanup_crit_edge ], [ 0, %add_interval.exit ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info1) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sub_interval(ptr noundef %map, i32 noundef %base, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next106 = getelementptr inbounds %struct.resource_map, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %next106 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next106, align 4
  %cmp107 = icmp eq ptr %1, %map
  br i1 %cmp107, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %add4 = add i32 %num, %base
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %25, %for.inc.if.end_crit_edge ]
  %next109 = phi ptr [ %next106, %if.end.lr.ph ], [ %next, %for.inc.if.end_crit_edge ]
  %p.0108 = phi ptr [ %map, %if.end.lr.ph ], [ %q.0, %for.inc.if.end_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %num2 = getelementptr inbounds %struct.resource_map, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %num2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num2, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %base)
  %cmp3 = icmp ugt i32 %add, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %4)
  %cmp6 = icmp ugt i32 %add4, %4
  %or.cond = and i1 %cmp3, %cmp6
  br i1 %or.cond, label %if.then7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %base)
  %cmp9.not = icmp ult i32 %4, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add4)
  %cmp32.not = icmp ugt i32 %add, %add4
  br i1 %cmp9.not, label %if.else27, label %if.then10

if.then10:                                        ; preds = %if.then7
  br i1 %cmp32.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %next17 = getelementptr inbounds %struct.resource_map, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next17, align 4
  %9 = ptrtoint ptr %next109 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %next109, align 4
  tail call void @kfree(ptr noundef %2) #9
  br label %for.inc

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %sub22 = sub i32 %add, %add4
  %10 = ptrtoint ptr %num2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub22, ptr %num2, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add4, ptr %2, align 4
  br label %for.inc

if.else27:                                        ; preds = %if.then7
  br i1 %cmp32.not, label %if.else37, label %if.then33

if.then33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %sub35 = sub i32 %base, %4
  %12 = ptrtoint ptr %num2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub35, ptr %num2, align 4
  br label %for.inc

if.else37:                                        ; preds = %if.else27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end40

do.end:                                           ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end40:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add4, ptr %call7.i, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %17 = ptrtoint ptr %num2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num2, align 4
  %add45 = sub i32 %16, %add4
  %sub47 = add i32 %add45, %18
  %num48 = getelementptr inbounds %struct.resource_map, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %num48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub47, ptr %num48, align 4
  %20 = load i32, ptr %2, align 4
  %sub50 = sub i32 %base, %20
  store i32 %sub50, ptr %num2, align 4
  %next52 = getelementptr inbounds %struct.resource_map, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %next52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next52, align 4
  %next53 = getelementptr inbounds %struct.resource_map, ptr %call7.i, i32 0, i32 2
  %23 = ptrtoint ptr %next53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %next53, align 8
  store ptr %call7.i, ptr %next52, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %if.then33, %if.else, %if.then16, %if.end.for.inc_crit_edge
  %q.0 = phi ptr [ %p.0108, %if.then16 ], [ %2, %if.else ], [ %2, %if.then33 ], [ %2, %if.end40 ], [ %2, %if.end.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.resource_map, ptr %q.0, i32 0, i32 2
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %cmp = icmp eq ptr %25, %map
  br i1 %cmp, label %for.inc.cleanup_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_make_resource(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_parent_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_align(ptr nocapture noundef readonly %align_data, ptr nocapture noundef readonly %res, i32 noundef %size, i32 noundef %align) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %2 = ptrtoint ptr %align_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_data, align 4
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %1, %neg.i
  %offset.i = getelementptr inbounds %struct.pcmcia_align_data, ptr %align_data, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %and.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %1)
  %cmp.i = icmp ult i32 %add.i, %1
  %add2.i = add i32 %3, 1
  %add3.i = select i1 %cmp.i, i32 %add2.i, i32 0
  %ret.0.i = add i32 %add3.i, %add.i
  %map = getelementptr inbounds %struct.pcmcia_align_data, ptr %align_data, i32 0, i32 2
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %add9 = add i32 %size, -1
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %.pn = phi ptr [ %7, %entry ], [ %m.0, %if.end.for.cond_crit_edge ]
  %start.0 = phi i32 [ %ret.0.i, %entry ], [ %start.1, %if.end.for.cond_crit_edge ]
  %m.0.in = getelementptr inbounds %struct.resource_map, ptr %.pn, i32 0, i32 2
  %8 = ptrtoint ptr %m.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %m.0 = load ptr, ptr %m.0.in, align 4
  %cmp.not = icmp eq ptr %m.0, %7
  br i1 %cmp.not, label %if.then18, label %for.body

for.body:                                         ; preds = %for.cond
  %9 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m.0, align 4
  %num = getelementptr inbounds %struct.resource_map, ptr %m.0, i32 0, i32 1
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %add = add i32 %10, -1
  %sub = add i32 %add, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0, i32 %10)
  %cmp4 = icmp ult i32 %start.0, %10
  br i1 %cmp4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and.i40 = and i32 %10, %neg.i
  %add.i42 = add i32 %and.i40, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i42, i32 %10)
  %cmp.i43 = icmp ult i32 %add.i42, %10
  %add3.i45 = select i1 %cmp.i43, i32 %add2.i, i32 0
  %ret.0.i46 = add i32 %add3.i45, %add.i42
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %start.1 = phi i32 [ %ret.0.i46, %if.then ], [ %start.0, %for.body.if.end_crit_edge ]
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.1, i32 %14)
  %cmp6.not = icmp ult i32 %start.1, %14
  %sub10 = add i32 %add9, %start.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10, i32 %sub)
  %cmp11.not = icmp ugt i32 %sub10, %sub
  %15 = select i1 %cmp6.not, i1 %cmp11.not, i1 false
  br i1 %15, label %if.end.for.cond_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then18:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %start.3 = phi i32 [ %17, %if.then18 ], [ %start.1, %if.end.if.end20_crit_edge ]
  ret i32 %start.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjust_io(ptr nocapture noundef readonly %s, i32 noundef %action, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  %sub = sub i32 %end, %start
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp = icmp ult i32 %end, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %end)
  %cmp1 = icmp ugt i32 %end, 1048575
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %if.end3.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %io_db = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 2
  %add12.i = add nuw nsw i32 %end, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %sw.bb
  %p.0.i = phi ptr [ %io_db, %sw.bb ], [ %10, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %p.0.i, %io_db
  br i1 %cmp.not.i, label %for.cond.i.if.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.if.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %3 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p.0.i, align 4
  %num2.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %num2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num2.i, align 4
  %add.i = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %start)
  %cmp3.not.i = icmp ult i32 %add.i, %start
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %num2.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %sub.i = sub i32 %add12.i, %4
  %7 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %6) #9
  %8 = ptrtoint ptr %num2.i.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num2.i.le, align 4
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.cond.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %cmp9.i = icmp eq ptr %10, %io_db
  br i1 %cmp9.i, label %if.end.i.for.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %cmp14.i = icmp ugt i32 %12, %end
  br i1 %cmp14.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %lor.lhs.false.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %add_interval.exit, label %if.end21.i

if.end21.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %next.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %start, ptr %call7.i.i, align 8
  %num23.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %num23.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %num23.i, align 4
  %16 = ptrtoint ptr %next.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i.le, align 4
  %next25.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %next25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %next25.i, align 8
  store ptr %call7.i.i, ptr %next.i.le, align 4
  br label %cleanup

add_interval.exit:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %io_db8 = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 2
  %call9 = tail call fastcc i32 @sub_interval(ptr noundef %io_db8, i32 noundef %start, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %add_interval.exit, %if.end21.i, %if.then.i, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ -22, %if.end3.cleanup_crit_edge ], [ -16, %add_interval.exit ], [ 0, %if.then.i ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjust_memory(ptr noundef %s, i32 noundef %action, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_data, align 8
  %sub = sub i32 %end, %start
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp = icmp ult i32 %end, %start
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %action, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %add12.i = add i32 %end, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %sw.bb
  %p.0.i = phi ptr [ %1, %sw.bb ], [ %10, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %p.0.i, %1
  br i1 %cmp.not.i, label %for.cond.i.if.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.if.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %3 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p.0.i, align 4
  %num2.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %num2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num2.i, align 4
  %add.i = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %start)
  %cmp3.not.i = icmp ult i32 %add.i, %start
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %num2.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 1
  %sub.i = sub i32 %add12.i, %4
  %7 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %6) #9
  %8 = ptrtoint ptr %num2.i.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num2.i.le, align 4
  br label %if.then1

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.cond.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %cmp9.i = icmp eq ptr %10, %1
  br i1 %cmp9.i, label %if.end.i.for.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %cmp14.i = icmp ugt i32 %12, %end
  br i1 %cmp14.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %lor.lhs.false.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %add_interval.exit, label %if.end21.i

if.end21.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %next.i.le = getelementptr inbounds %struct.resource_map, ptr %p.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %start, ptr %call7.i.i, align 8
  %num23.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %num23.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %num23.i, align 4
  %16 = ptrtoint ptr %next.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i.le, align 4
  %next25.i = getelementptr inbounds %struct.resource_map, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %next25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %next25.i, align 8
  store ptr %call7.i.i, ptr %next.i.le, align 4
  br label %if.then1

add_interval.exit:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.then1:                                         ; preds = %if.end21.i, %if.then.i
  %call2 = tail call fastcc i32 @do_mem_probe(ptr noundef %s, i32 noundef %start, i32 noundef %add, ptr noundef null, ptr noundef null)
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @sub_interval(ptr noundef %1, i32 noundef %start, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %if.then1, %add_interval.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call6, %sw.bb4 ], [ -12, %add_interval.exit ], [ 0, %if.then1 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pccard_sysfs_add_rsrc(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %resource_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource_ops, align 4
  %cmp.not = icmp eq ptr %3, @pccard_nonstatic_ops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @rsrc_attributes) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pccard_sysfs_remove_rsrc(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %resource_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource_ops, align 4
  %cmp.not = icmp eq ptr %3, @pccard_nonstatic_ops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @rsrc_attributes) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_io_db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource_data, align 8
  %io_db = getelementptr inbounds %struct.socket_data, ptr %3, i32 0, i32 2
  %next = getelementptr inbounds %struct.socket_data, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.018 = load ptr, ptr %next, align 4
  %cmp.not19 = icmp eq ptr %p.018, %io_db
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.021 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.018, %entry.for.body_crit_edge ]
  %ret.020 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %ret.020)
  %cmp2 = icmp ugt i32 %ret.020, 4086
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %p.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p.021, align 4
  %num = getelementptr inbounds %struct.resource_map, ptr %p.021, i32 0, i32 1
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 4
  %add = add i32 %6, -1
  %sub = add i32 %add, %8
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %ret.020, ptr noundef nonnull @.str.30, i32 noundef %6, i32 noundef %sub) #9
  %add5 = add i32 %call4, %ret.020
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.020, %for.body.for.inc_crit_edge ], [ %add5, %if.end ]
  %next6 = getelementptr inbounds %struct.resource_map, ptr %p.021, i32 0, i32 2
  %9 = ptrtoint ptr %next6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0 = load ptr, ptr %next6, align 4
  %cmp.not = icmp eq ptr %p.0, %io_db
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_io_db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %start_addr = alloca i32, align 4
  %end_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_addr) #9
  %2 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start_addr, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_addr) #9
  %3 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %end_addr, align 4, !annotation !96
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 2
  br i1 %cmp6.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %add.0 = phi i32 [ 2, %if.then4.if.end9_crit_edge ], [ 1, %if.then.if.end9_crit_edge ], [ 2, %entry.if.end9_crit_edge ]
  %4 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_addr, align 4
  %6 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp10 = icmp ult i32 %5, %7
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %8 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_addr, align 4
  %10 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_addr, align 4
  %call13 = call fastcc i32 @adjust_io(ptr noundef %1, i32 noundef %add.0, i32 noundef %9, i32 noundef %11)
  call void @mutex_unlock(ptr noundef %ops_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  %count.call13 = select i1 %tobool.not, i32 %count, i32 %call13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call13, %if.end12 ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mem_db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource_data, align 8
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %3, i32 0, i32 1
  %next = getelementptr inbounds %struct.socket_data, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.047 = load ptr, ptr %next, align 4
  %cmp.not48 = icmp eq ptr %p.047, %mem_db_valid
  br i1 %cmp.not48, label %entry.for.cond8.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.cond8.preheader_crit_edge ], [ %ret.1, %for.inc.for.cond8.preheader_crit_edge ]
  %p.1.in52 = getelementptr inbounds %struct.resource_map, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %p.1.in52 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.153 = load ptr, ptr %p.1.in52, align 4
  %cmp10.not54 = icmp eq ptr %p.153, %3
  br i1 %cmp10.not54, label %for.cond8.preheader.for.end24_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.for.end24_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.050 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.047, %entry.for.body_crit_edge ]
  %ret.049 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %ret.049)
  %cmp2 = icmp ugt i32 %ret.049, 4086
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %p.050 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p.050, align 4
  %num = getelementptr inbounds %struct.resource_map, ptr %p.050, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %ret.049, ptr noundef nonnull @.str.30, i32 noundef %7, i32 noundef %sub) #9
  %add5 = add i32 %call4, %ret.049
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.049, %for.body.for.inc_crit_edge ], [ %add5, %if.end ]
  %next6 = getelementptr inbounds %struct.resource_map, ptr %p.050, i32 0, i32 2
  %10 = ptrtoint ptr %next6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0 = load ptr, ptr %next6, align 4
  %cmp.not = icmp eq ptr %p.0, %mem_db_valid
  br i1 %cmp.not, label %for.inc.for.cond8.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond8.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.body11:                                       ; preds = %for.inc22.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %p.156 = phi ptr [ %p.1, %for.inc22.for.body11_crit_edge ], [ %p.153, %for.cond8.preheader.for.body11_crit_edge ]
  %ret.255 = phi i32 [ %ret.3, %for.inc22.for.body11_crit_edge ], [ %ret.0.lcssa, %for.cond8.preheader.for.body11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %ret.255)
  %cmp12 = icmp ugt i32 %ret.255, 4086
  br i1 %cmp12, label %for.body11.for.inc22_crit_edge, label %if.end14

for.body11.for.inc22_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

if.end14:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %p.156 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p.156, align 4
  %num17 = getelementptr inbounds %struct.resource_map, ptr %p.156, i32 0, i32 1
  %13 = ptrtoint ptr %num17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num17, align 4
  %add18 = add i32 %12, -1
  %sub19 = add i32 %add18, %14
  %call20 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %ret.255, ptr noundef nonnull @.str.30, i32 noundef %12, i32 noundef %sub19) #9
  %add21 = add i32 %call20, %ret.255
  br label %for.inc22

for.inc22:                                        ; preds = %if.end14, %for.body11.for.inc22_crit_edge
  %ret.3 = phi i32 [ %ret.255, %for.body11.for.inc22_crit_edge ], [ %add21, %if.end14 ]
  %p.1.in = getelementptr inbounds %struct.resource_map, ptr %p.156, i32 0, i32 2
  %15 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.1 = load ptr, ptr %p.1.in, align 4
  %cmp10.not = icmp eq ptr %p.1, %3
  br i1 %cmp10.not, label %for.inc22.for.end24_crit_edge, label %for.inc22.for.body11_crit_edge

for.inc22.for.body11_crit_edge:                   ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.inc22.for.end24_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.end24:                                        ; preds = %for.inc22.for.end24_crit_edge, %for.cond8.preheader.for.end24_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.0.lcssa, %for.cond8.preheader.for.end24_crit_edge ], [ %ret.3, %for.inc22.for.end24_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #9
  ret i32 %ret.2.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_mem_db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %start_addr = alloca i32, align 4
  %end_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_addr) #9
  %2 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start_addr, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_addr) #9
  %3 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %end_addr, align 4, !annotation !96
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %start_addr, ptr noundef nonnull %end_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 2
  br i1 %cmp6.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %add.0 = phi i32 [ 2, %if.then4.if.end9_crit_edge ], [ 1, %if.then.if.end9_crit_edge ], [ 2, %entry.if.end9_crit_edge ]
  %4 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_addr, align 4
  %6 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp10 = icmp ult i32 %5, %7
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #9
  %8 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_addr, align 4
  %10 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_addr, align 4
  %call13 = call fastcc i32 @adjust_memory(ptr noundef %1, i32 noundef %add.0, i32 noundef %9, i32 noundef %11)
  call void @mutex_unlock(ptr noundef %ops_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  %count.call13 = select i1 %tobool.not, i32 %count, i32 %call13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call13, %if.end12 ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_probe_mem, !1, !"__param_probe_mem", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_probe_memtype236, !1, !"__UNIQUE_ID_probe_memtype236", i1 false, i1 false}
!3 = !{ptr @pccard_nonstatic_ops, !4, !"pccard_nonstatic_ops", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1059, i32 28}
!5 = !{ptr @__ksymtab_pccard_nonstatic_ops, !6, !"__ksymtab_pccard_nonstatic_ops", i1 false, i1 false}
!6 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1066, i32 1}
!7 = !{ptr @__initcall__kmod_pcmcia_rsrc__241_1239_nonstatic_sysfs_init6, !8, !"__initcall__kmod_pcmcia_rsrc__241_1239_nonstatic_sysfs_init6", i1 false, i1 false}
!8 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1239, i32 1}
!9 = !{ptr @__exitcall_nonstatic_sysfs_exit, !10, !"__exitcall_nonstatic_sysfs_exit", i1 false, i1 false}
!10 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1240, i32 1}
!11 = !{ptr @__param_str_probe_mem, !1, !"__param_str_probe_mem", i1 false, i1 false}
!12 = !{ptr @probe_mem, !1, !"probe_mem", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 411, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @do_mem_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @do_mem_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 436, i32 5}
!23 = !{ptr @do_mem_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @do_mem_probe._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 437, i32 4}
!27 = !{ptr @do_mem_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @do_mem_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 442, i32 2}
!31 = !{ptr @do_mem_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @do_mem_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 355, i32 55}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 367, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @do_validate_mem.__UNIQUE_ID_ddebug240, !38, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 122, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @add_interval._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @add_interval._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 161, i32 6}
!49 = !{ptr @sub_interval._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sub_interval._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 269, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @readable.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 979, i32 4}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nonstatic_autoadd_resources._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @nonstatic_autoadd_resources._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @nonstatic_autoadd_resources._entry.27, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 994, i32 4}
!62 = !{ptr @nonstatic_autoadd_resources._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @pccard_rsrc_interface, !64, !"pccard_rsrc_interface", i1 false, i1 false}
!64 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1223, i32 31}
!65 = !{ptr @rsrc_attributes, !66, !"rsrc_attributes", i1 false, i1 false}
!66 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1199, i32 37}
!67 = !{ptr @pccard_rsrc_attributes, !68, !"pccard_rsrc_attributes", i1 false, i1 false}
!68 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1193, i32 26}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1125, i32 8}
!71 = !{ptr @dev_attr_available_resources_io, !70, !"dev_attr_available_resources_io", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1086, i32 5}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1104, i32 20}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1106, i32 21}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1109, i32 22}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pcmcia/rsrc_nonstatic.c", i32 1191, i32 8}
!82 = !{ptr @dev_attr_available_resources_mem, !81, !"dev_attr_available_resources_mem", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148981644, i64 2148981649, i64 2148981662, i64 2148981706, i64 2148981740, i64 2148981761}
!93 = !{i64 4644567}
!94 = !{i64 2154480757}
!95 = !{ptr @checksum, ptr @readable}
!96 = !{!"auto-init"}

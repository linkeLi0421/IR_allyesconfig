; ModuleID = '/llk/IR_all_yes/drivers/bus/arm-cci.c_pt.bc'
source_filename = "../drivers/bus/arm-cci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cci_ace_get_port\22, \22a\22\09"
module asm "\09.weak\09__crc_cci_ace_get_port\09\09\09\09"
module asm "\09.long\09__crc_cci_ace_get_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_ace_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_ace_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_cci_ace_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cci_disable_port_by_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_cci_disable_port_by_cpu\09\09\09\09"
module asm "\09.long\09__crc_cci_disable_port_by_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_disable_port_by_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_disable_port_by_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_cci_disable_port_by_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cci_control_port_by_device\22, \22a\22\09"
module asm "\09.weak\09__crc___cci_control_port_by_device\09\09\09\09"
module asm "\09.long\09__crc___cci_control_port_by_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cci_control_port_by_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__cci_control_port_by_device\22\09\09\09\09\09"
module asm "__kstrtabns___cci_control_port_by_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cci_control_port_by_index\22, \22a\22\09"
module asm "\09.weak\09__crc___cci_control_port_by_index\09\09\09\09"
module asm "\09.long\09__crc___cci_control_port_by_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cci_control_port_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22__cci_control_port_by_index\22\09\09\09\09\09"
module asm "__kstrtabns___cci_control_port_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cci_probed\22, \22a\22\09"
module asm "\09.weak\09__crc_cci_probed\09\09\09\09"
module asm "\09.long\09__crc_cci_probed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_probed:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_probed\22\09\09\09\09\09"
module asm "__kstrtabns_cci_probed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_port = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cci_nb_ports = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cci_ace_port = type { ptr, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_cci_ace_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_ace_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_ace_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_ace_get_port to i32), ptr @__kstrtab_cci_ace_get_port, ptr @__kstrtabns_cci_ace_get_port }, section "___ksymtab_gpl+cci_ace_get_port", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_port = internal global { [4 x %struct.cpu_port], [32 x i8] } zeroinitializer, align 32
@__kstrtab_cci_disable_port_by_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_disable_port_by_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_disable_port_by_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_disable_port_by_cpu to i32), ptr @__kstrtab_cci_disable_port_by_cpu, ptr @__kstrtabns_cci_disable_port_by_cpu }, section "___ksymtab_gpl+cci_disable_port_by_cpu", align 4
@__cci_control_port_by_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/bus/arm-cci.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"node %pOF ACE lite port look-up failure\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab___cci_control_port_by_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___cci_control_port_by_device = external dso_local constant [0 x i8], align 1
@__ksymtab___cci_control_port_by_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cci_control_port_by_device to i32), ptr @__kstrtab___cci_control_port_by_device, ptr @__kstrtabns___cci_control_port_by_device }, section "___ksymtab_gpl+__cci_control_port_by_device", align 4
@nb_cci_ports = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ports = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab___cci_control_port_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns___cci_control_port_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab___cci_control_port_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cci_control_port_by_index to i32), ptr @__kstrtab___cci_control_port_by_index, ptr @__kstrtabns___cci_control_port_by_index }, section "___ksymtab_gpl+__cci_control_port_by_index", align 4
@__kstrtab_cci_probed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_probed = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_probed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_probed to i32), ptr @__kstrtab_cci_probed, ptr @__kstrtabns_cci_probed }, section "___ksymtab_gpl+cci_probed", align 4
@__initcall__kmod_arm_cci__228_584_cci_initearly = internal global ptr @cci_init, section ".initcallearly.init", align 4
@__initcall__kmod_arm_cci__229_585_cci_platform_init1 = internal global ptr @cci_platform_init, section ".initcall1.init", align 4
@__UNIQUE_ID_file230 = internal constant [33 x i8] c"arm_cci.file=drivers/bus/arm-cci\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [20 x i8] c"arm_cci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [36 x i8] c"arm_cci.description=ARM CCI support\00", section ".modinfo", align 1
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cci-control-port\00", [47 x i8] zeroinitializer }, align 32
@cci_ctrl_base = internal global ptr null, section ".data..ro_after_init", align 4
@cci_init_status = internal global { i32, [28 x i8] } { i32 -11, [28 x i8] zeroinitializer }, align 32
@cci_probing = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cci_probing, i64 52), ptr getelementptr (i8, ptr @cci_probing, i64 52) }, ptr @cci_probing, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cci_probing.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cci_probing\00", [20 x i8] zeroinitializer }, align 32
@arm_cci_matches = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci400_ports }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@cci_ctrl_phys = internal global i32 0, section ".data..ro_after_init", align 4
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to ioremap CCI ctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@cci400_ports = internal constant { %struct.cci_nb_ports, [24 x i8] } { %struct.cci_nb_ports { i32 2, i32 3 }, [24 x i8] zeroinitializer }, align 32
@arm_cci_ctrl_if_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400-ctrl-if\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"interface-type\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"node %pOF missing interface-type property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ace\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ace-lite\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"node %pOF containing invalid interface-type property, skipping it\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to ioremap CCI port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cci_probe_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016ARM CCI driver probed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cci_probe_ports\00", [16 x i8] zeroinitializer }, align 32
@cci_probe_ports._entry_ptr = internal global ptr @cci_probe_ports._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing cpu device node\0A\00", [39 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CPU %u does not have an associated CCI port\0A\00", [51 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@cci_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cci_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arm_cci_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARM-CCI\00", [24 x i8] zeroinitializer }, align 32
@arm_cci_auxdata = internal constant { [6 x %struct.of_dev_auxdata], [32 x i8] } { [6 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.17, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.18, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.19, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.20, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.21, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,cci-400-pmu\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,cci-400-pmu,r0\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,cci-400-pmu,r1\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,cci-500-pmu,r0\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,cci-550-pmu,r0\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"cpu_port\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 148, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 396, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"nb_cci_ports\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 114, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 113, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 167, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"cci_init_status\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 557, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"cci_probing\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 558, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"arm_cci_matches\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 47, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 550, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"cci400_ports\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 37, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"arm_cci_ctrl_if_matches\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 433, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 467, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 469, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 473, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 474, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 475, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 486, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 523, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 198, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 209, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"cci_platform_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 78, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 80, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"arm_cci_auxdata\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 58, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 59, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 60, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 61, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 62, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [25 x i8] c"../drivers/bus/arm-cci.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__initcall__kmod_arm_cci__228_584_cci_initearly, ptr @__initcall__kmod_arm_cci__229_585_cci_platform_init1, ptr @__ksymtab___cci_control_port_by_device, ptr @__ksymtab___cci_control_port_by_index, ptr @__ksymtab_cci_ace_get_port, ptr @__ksymtab_cci_disable_port_by_cpu, ptr @__ksymtab_cci_probed, ptr @cci_probe_ports._entry, ptr @cci_probe_ports._entry_ptr, ptr @cpu_port, ptr @.str, ptr @.str.1, ptr @nb_cci_ports, ptr @ports, ptr @.str.2, ptr @cci_init_status, ptr @cci_probing, ptr @.str.3, ptr @.str.4, ptr @arm_cci_matches, ptr @.str.5, ptr @cci400_ports, ptr @arm_cci_ctrl_if_matches, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cci_platform_driver, ptr @.str.16, ptr @arm_cci_auxdata, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_port to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb_cci_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_init_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probing to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cci_matches to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci400_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cci_ctrl_if_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cci_auxdata to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cci_ace_get_port(ptr noundef %dn) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %0 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %dn, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.of_parse_phandle.exit.i_crit_edge

entry.of_parse_phandle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %entry.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %2, %if.end.i.i ], [ null, %entry.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  %3 = load i32, ptr @nb_cci_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %of_parse_phandle.exit.i.__cci_ace_get_port.exit_crit_edge, label %for.body.lr.ph.i

of_parse_phandle.exit.i.__cci_ace_get_port.exit_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cci_ace_get_port.exit

for.body.lr.ph.i:                                 ; preds = %of_parse_phandle.exit.i
  %4 = load ptr, ptr @ports, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %type1.i = getelementptr %struct.cci_ace_port, ptr %4, i32 %i.013.i, i32 2
  %5 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2.i = icmp eq i32 %6, 2
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dn4.i = getelementptr %struct.cci_ace_port, ptr %4, i32 %i.013.i, i32 3
  %7 = ptrtoint ptr %dn4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dn4.i, align 4
  %cmp5.i = icmp eq ptr %retval.0.i.i, %8
  br i1 %cmp5.i, label %land.lhs.true.i.__cci_ace_get_port.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.__cci_ace_get_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cci_ace_get_port.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.__cci_ace_get_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.__cci_ace_get_port.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cci_ace_get_port.exit

__cci_ace_get_port.exit:                          ; preds = %for.inc.i.__cci_ace_get_port.exit_crit_edge, %land.lhs.true.i.__cci_ace_get_port.exit_crit_edge, %of_parse_phandle.exit.i.__cci_ace_get_port.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %of_parse_phandle.exit.i.__cci_ace_get_port.exit_crit_edge ], [ %i.013.i, %land.lhs.true.i.__cci_ace_get_port.exit_crit_edge ], [ -19, %for.inc.i.__cci_ace_get_port.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cci_disable_port_by_cpu(i64 noundef %mpidr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp11.not = icmp eq i32 %0, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %and.i = and i64 %mpidr, 16777215
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cpu.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %port1.i = getelementptr [4 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %cpu.012, i32 1
  %1 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i = icmp slt i32 %2, 0
  br i1 %tobool.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [4 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %cpu.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %and.i)
  %cmp.i = icmp eq i64 %4, %and.i
  br i1 %cmp.i, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port1.i, align 8
  %7 = load ptr, ptr @ports, align 4
  %arrayidx.i = getelementptr %struct.cci_ace_port, ptr %7, i32 %6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #10, !srcloc !95
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %10 = load ptr, ptr @cci_ctrl_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !96
  %12 = and i32 %11, 16777216
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %while.cond.i.cleanup_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cpu.012, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %while.cond.i.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cci_enable_port_for_self() #2 align 64 {
entry:
  tail call void asm sideeffect "\0A\09.arch armv7-a\0A\09mrc\09p15, 0, r0, c0, c0, 5\09@ get MPIDR value \0A\09and\09r0, r0, #0xFFFFFF \0A\09adr\09r1, 5f \0A\09ldr\09r2, [r1] \0A\09add\09r1, r1, r2\09\09@ &cpu_port \0A\09add\09ip, r1, $0 \0A1:\09ldr\09r2, [r1, $3] \0A\09cmp\09r2, r0 \09\09\09@ compare MPIDR \0A\09bne\092f \0A\09ldr\09r3, [r1, $4] \0A\09tst\09r3, #(0x1 << 31) \0A\09bne\093f \0A2:\09add\09r1, r1, $5 \0A\09cmp\09r1, ip\09\09\09@ done? \0A\09blo\091b \0Acci_port_not_found: \0A\09wfi \0A\09wfe \0A\09b\09cci_port_not_found \0A3:\09bic\09r3, r3, #(0x1 << 31) \0A\09adr\09r0, 6f \0A\09ldmia\09r0, {r1, r2} \0A\09sub\09r1, r1, r0 \09\09@ virt - phys \0A\09ldr\09r0, [r0, r2] \09\09@ *(&ports) \0A\09mov\09r2, $6 \0A\09mla\09r0, r2, r3, r0\09\09@ &ports[index] \0A\09sub\09r0, r0, r1\09\09@ virt_to_phys() \0A\09ldr\09r0, [r0, $7] \0A\09mov\09r3, $1\0A\09str\09r3, [r0, #0x0] \0A\09adr\09r1, 7f \0A\09ldr\09r0, [r1] \0A\09ldr\09r0, [r0, r1]\09\09@ cci_ctrl_base \0A4:\09ldr\09r1, [r0, #0xc] \0A\09tst\09r1, $2 \0A\09bne\094b \0A\09mov\09r0, #0 \0A\09bx\09lr \0A\09.align\092 \0A5:\09.word\09cpu_port - . \0A6:\09.word\09. \0A\09.word\09ports - 6b \0A7:\09.word\09cci_ctrl_phys - . \0A", "i,i,i,i,i,i,i,i"(i32 64, i32 50331648, i32 16777216, i32 4, i32 8, i32 16, i32 16, i32 4) #10, !srcloc !97
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cci_control_port_by_device(ptr noundef %dn, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %dn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %0 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %dn, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.of_parse_phandle.exit.i_crit_edge

if.end.of_parse_phandle.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.end.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %2, %if.end.i.i ], [ null, %if.end.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  %3 = load i32, ptr @nb_cci_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %of_parse_phandle.exit.i.land.rhs_crit_edge, label %for.body.lr.ph.i

of_parse_phandle.exit.i.land.rhs_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.lr.ph.i:                                 ; preds = %of_parse_phandle.exit.i
  %4 = load ptr, ptr @ports, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %type1.i = getelementptr %struct.cci_ace_port, ptr %4, i32 %i.013.i, i32 2
  %5 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2.i = icmp eq i32 %6, 2
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dn4.i = getelementptr %struct.cci_ace_port, ptr %4, i32 %i.013.i, i32 3
  %7 = ptrtoint ptr %dn4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dn4.i, align 4
  %cmp5.i = icmp eq ptr %retval.0.i.i, %8
  br i1 %cmp5.i, label %__cci_ace_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.land.rhs_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.rhs_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

__cci_ace_get_port.exit:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i)
  %cmp = icmp slt i32 %i.013.i, 0
  br i1 %cmp, label %__cci_ace_get_port.exit.land.rhs_crit_edge, label %if.end41

__cci_ace_get_port.exit.land.rhs_crit_edge:       ; preds = %__cci_ace_get_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %__cci_ace_get_port.exit.land.rhs_crit_edge, %for.inc.i.land.rhs_crit_edge, %of_parse_phandle.exit.i.land.rhs_crit_edge
  %.b48 = load i1, ptr @__cci_control_port_by_device.__already_done, align 1
  br i1 %.b48, label %land.rhs.cleanup_crit_edge, label %if.then9, !prof !98

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__cci_control_port_by_device.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %dn) #10
  br label %cleanup

if.end41:                                         ; preds = %__cci_ace_get_port.exit
  %9 = load ptr, ptr @ports, align 4
  %arrayidx.i = getelementptr %struct.cci_ace_port, ptr %9, i32 %i.013.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cond.i = select i1 %enable, i32 50331648, i32 0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %cond.i) #10, !srcloc !95
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end41
  %12 = load ptr, ptr @cci_ctrl_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 12
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !96
  %14 = and i32 %13, 16777216
  %tobool3.not.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i, label %while.cond.i.cleanup_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.cond.i.cleanup_crit_edge, %if.then9, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then9 ], [ -19, %land.rhs.cleanup_crit_edge ], [ 0, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cci_control_port_by_index(i32 noundef %port, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @nb_cci_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %port)
  %cmp.not = icmp ugt i32 %0, %port
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @ports, align 4
  %type = getelementptr %struct.cci_ace_port, ptr %1, i32 %port, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end6 [
    i32 0, label %lor.lhs.false.return_crit_edge
    i32 1, label %if.then5
  ]

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then5:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr %struct.cci_ace_port, ptr %1, i32 %port
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cond.i = select i1 %enable, i32 50331648, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %cond.i) #10, !srcloc !95
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end6
  %7 = load ptr, ptr @cci_ctrl_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !96
  %9 = and i32 %8, 16777216
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %while.cond.i.return_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.cond.i.return_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %while.cond.i.return_crit_edge, %if.then5, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ], [ 0, %while.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cci_probed() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cci_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_init() #0 align 64 {
entry:
  %args.i.i.i.i.i = alloca %struct.of_phandle_args, align 4
  %res.i.i = alloca %struct.resource, align 4
  %match_str.i.i = alloca ptr, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cci_init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %0)
  %cmp.not = icmp eq i32 %0, -11
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cci_probing, i32 noundef 0) #10
  %1 = load i32, ptr @cci_init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %1)
  %cmp1 = icmp eq i32 %1, -11
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #10
  %2 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %3 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @arm_cci_matches, ptr noundef null) #10
  %call1.i = tail call zeroext i1 @of_device_is_available(ptr noundef %call.i.i) #10
  br i1 %call1.i, label %if.end.i, label %if.then2.cci_probe.exit_crit_edge

if.then2.cci_probe.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_probe.exit

if.end.i:                                         ; preds = %if.then2
  %call2.i = call i32 @of_address_to_resource(ptr noundef %call.i.i, i32 noundef 0, ptr noundef nonnull %res.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then3.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %sub.i.i = sub i32 1, %5
  %add.i.i = add i32 %sub.i.i, %7
  %call5.i = call ptr @ioremap(i32 noundef %5, i32 noundef %add.i.i) #10
  store ptr %call5.i, ptr @cci_ctrl_base, align 4
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res.i, align 4
  store i32 %9, ptr @cci_ctrl_phys, align 4
  %tobool9.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool9.not.i, label %if.then3.i.do.end.i_crit_edge, label %if.end28.i

if.then3.i.do.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 550, i32 noundef 9, ptr noundef nonnull @.str.5) #10
  br label %cci_probe.exit

if.end28.i:                                       ; preds = %if.then3.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #10
  %10 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 1
  %11 = call ptr @memset(ptr %res.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match_str.i.i) #10
  %12 = ptrtoint ptr %match_str.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %match_str.i.i, align 4, !annotation !99
  %call.i36.i = call ptr @of_match_node(ptr noundef nonnull @arm_cci_matches, ptr noundef %call.i.i) #10
  %data.i.i = getelementptr inbounds %struct.of_device_id, ptr %call.i36.i, i32 0, i32 3
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end28.i.cci_probe_ports.exit.i_crit_edge, label %if.end.i.i

if.end28.i.cci_probe_ports.exit.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_probe_ports.exit.i

if.end.i.i:                                       ; preds = %if.end28.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %nb_ace_lite2.i.i = getelementptr inbounds %struct.cci_nb_ports, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %nb_ace_lite2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nb_ace_lite2.i.i, align 4
  %add.i37.i = add i32 %18, %16
  store i32 %add.i37.i, ptr @nb_cci_ports, align 4
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i37.i, i32 16) #10
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !100

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr @ports, align 4
  br label %cci_probe_ports.exit.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #13
  store ptr %call8.i.i.i.i, ptr @ports, align 4
  %tobool4.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.end7.i.i.i.i.cci_probe_ports.exit.i_crit_edge, label %if.end6.i.i

if.end7.i.i.i.i.cci_probe_ports.exit.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_probe_ports.exit.i

if.end6.i.i:                                      ; preds = %if.end7.i.i.i.i
  %call7.i.i = call ptr @of_get_next_available_child(ptr noundef %call.i.i, ptr noundef null) #10
  %cmp.not270.i.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not270.i.i, label %if.end6.i.i.for.end.i.i_crit_edge, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  br label %for.body.i.i

if.end6.i.i.for.end.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.i.for.body.i.i_crit_edge
  %nb_ace.0276.i.i = phi i32 [ %nb_ace.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.i.for.body.i.i_crit_edge ]
  %nb_ace_lite.0274.i.i = phi i32 [ %nb_ace_lite.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.i.for.body.i.i_crit_edge ]
  %cp.0271.i.i = phi ptr [ %call188.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call7.i.i, %if.end6.i.i.for.body.i.i_crit_edge ]
  %call8.i.i = call ptr @of_match_node(ptr noundef nonnull @arm_cci_ctrl_if_matches, ptr noundef nonnull %cp.0271.i.i) #10
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end11.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  %add12.i.i = add i32 %nb_ace_lite.0274.i.i, %nb_ace.0276.i.i
  %22 = load i32, ptr @nb_cci_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %22)
  %cmp13.not.i.i = icmp ult i32 %add12.i.i, %22
  br i1 %cmp13.not.i.i, label %if.end15.i.i, label %if.end11.i.i.for.end.i.i_crit_edge

if.end11.i.i.for.end.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %call16.i.i = call i32 @of_property_read_string(ptr noundef nonnull %cp.0271.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %match_str.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end36.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull %cp.0271.i.i) #10
  br label %for.inc.i.i

if.end36.i.i:                                     ; preds = %if.end15.i.i
  %23 = ptrtoint ptr %match_str.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %match_str.i.i, align 4
  %call37.i.i = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(4) @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.end36.i.i.if.end69.i.i_crit_edge, label %land.lhs.true.i.i

if.end36.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i.i

land.lhs.true.i.i:                                ; preds = %if.end36.i.i
  %call40.i.i = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(9) @.str.9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %land.lhs.true.i.i.if.end69.i.i_crit_edge, label %do.end55.i.i

land.lhs.true.i.i.if.end69.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i.i

do.end55.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull %cp.0271.i.i) #10
  br label %for.inc.i.i

if.end69.i.i:                                     ; preds = %land.lhs.true.i.i.if.end69.i.i_crit_edge, %if.end36.i.i.if.end69.i.i_crit_edge
  %call70.i.i = call i32 @of_address_to_resource(ptr noundef nonnull %cp.0271.i.i, i32 noundef 0, ptr noundef nonnull %res.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i.i)
  %tobool71.not.i.i = icmp eq i32 %call70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.then72.i.i, label %if.end69.i.i.do.end95.i.i_crit_edge

if.end69.i.i.do.end95.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.then72.i.i:                                    ; preds = %if.end69.i.i
  %25 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res.i.i, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %10, align 4
  %sub.i.i.i = sub i32 1, %26
  %add.i.i.i = add i32 %sub.i.i.i, %28
  %call74.i.i = call ptr @ioremap(i32 noundef %26, i32 noundef %add.i.i.i) #10
  %29 = load ptr, ptr @ports, align 4
  %arrayidx.i.i = getelementptr %struct.cci_ace_port, ptr %29, i32 %add12.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call74.i.i, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %res.i.i, align 4
  %33 = load ptr, ptr @ports, align 4
  %phys.i.i = getelementptr %struct.cci_ace_port, ptr %33, i32 %add12.i.i, i32 1
  %34 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %phys.i.i, align 4
  %35 = load ptr, ptr @ports, align 4
  %arrayidx79.i.i = getelementptr %struct.cci_ace_port, ptr %35, i32 %add12.i.i
  %36 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx79.i.i, align 4
  %tobool81.not.i.i = icmp eq ptr %37, null
  br i1 %tobool81.not.i.i, label %if.then72.i.i.do.end95.i.i_crit_edge, label %if.end109.i.i

if.then72.i.i.do.end95.i.i_crit_edge:             ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

do.end95.i.i:                                     ; preds = %if.then72.i.i.do.end95.i.i_crit_edge, %if.end69.i.i.do.end95.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %add12.i.i) #10
  br label %for.inc.i.i

if.end109.i.i:                                    ; preds = %if.then72.i.i
  br i1 %cmp38.i.i, label %if.then111.i.i, label %if.else.i.i

if.then111.i.i:                                   ; preds = %if.end109.i.i
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nb_ace.0276.i.i, i32 %39)
  %cmp114.not.i.i = icmp ult i32 %nb_ace.0276.i.i, %39
  br i1 %cmp114.not.i.i, label %if.end146.critedge.i.i, label %do.end130.i.i, !prof !98

do.end130.i.i:                                    ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 491, i32 noundef 9, ptr noundef null) #10
  br label %for.inc.i.i

if.end146.critedge.i.i:                           ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %type.i.i = getelementptr %struct.cci_ace_port, ptr %35, i32 %add12.i.i, i32 2
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type.i.i, align 4
  %inc.i.i = add nuw i32 %nb_ace.0276.i.i, 1
  br label %if.end186.i.i

if.else.i.i:                                      ; preds = %if.end109.i.i
  %41 = ptrtoint ptr %nb_ace_lite2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nb_ace_lite2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nb_ace_lite.0274.i.i, i32 %42)
  %cmp150.not.i.i = icmp ult i32 %nb_ace_lite.0274.i.i, %42
  br i1 %cmp150.not.i.i, label %if.end182.critedge.i.i, label %do.end166.i.i, !prof !98

do.end166.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #10
  br label %for.inc.i.i

if.end182.critedge.i.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %type184.i.i = getelementptr %struct.cci_ace_port, ptr %35, i32 %add12.i.i, i32 2
  %43 = ptrtoint ptr %type184.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type184.i.i, align 4
  %inc185.i.i = add nuw i32 %nb_ace_lite.0274.i.i, 1
  br label %if.end186.i.i

if.end186.i.i:                                    ; preds = %if.end182.critedge.i.i, %if.end146.critedge.i.i
  %nb_ace_lite.1.i.i = phi i32 [ %nb_ace_lite.0274.i.i, %if.end146.critedge.i.i ], [ %inc185.i.i, %if.end182.critedge.i.i ]
  %nb_ace.1.i.i = phi i32 [ %inc.i.i, %if.end146.critedge.i.i ], [ %nb_ace.0276.i.i, %if.end182.critedge.i.i ]
  %44 = load ptr, ptr @ports, align 4
  %dn.i.i = getelementptr %struct.cci_ace_port, ptr %44, i32 %add12.i.i, i32 3
  %45 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cp.0271.i.i, ptr %dn.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end186.i.i, %do.end166.i.i, %do.end130.i.i, %do.end95.i.i, %do.end55.i.i, %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %nb_ace_lite.2.i.i = phi i32 [ %nb_ace_lite.0274.i.i, %do.end.i.i ], [ %nb_ace_lite.0274.i.i, %do.end95.i.i ], [ %nb_ace_lite.1.i.i, %if.end186.i.i ], [ %nb_ace_lite.0274.i.i, %do.end55.i.i ], [ %nb_ace_lite.0274.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %nb_ace_lite.0274.i.i, %do.end130.i.i ], [ %nb_ace_lite.0274.i.i, %do.end166.i.i ]
  %nb_ace.2.i.i = phi i32 [ %nb_ace.0276.i.i, %do.end.i.i ], [ %nb_ace.0276.i.i, %do.end95.i.i ], [ %nb_ace.1.i.i, %if.end186.i.i ], [ %nb_ace.0276.i.i, %do.end55.i.i ], [ %nb_ace.0276.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %nb_ace.0276.i.i, %do.end130.i.i ], [ %nb_ace.0276.i.i, %do.end166.i.i ]
  %call188.i.i = call ptr @of_get_next_available_child(ptr noundef %call.i.i, ptr noundef nonnull %cp.0271.i.i) #10
  %cmp.not.i.i = icmp eq ptr %call188.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end11.i.i.for.end.i.i_crit_edge, %if.end6.i.i.for.end.i.i_crit_edge
  %nb_ace_lite.0.lcssa.i.i = phi i32 [ 0, %if.end6.i.i.for.end.i.i_crit_edge ], [ %nb_ace_lite.0274.i.i, %if.end11.i.i.for.end.i.i_crit_edge ], [ %nb_ace_lite.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %nb_ace.0.lcssa.i.i = phi i32 [ 0, %if.end6.i.i.for.end.i.i_crit_edge ], [ %nb_ace.0276.i.i, %if.end11.i.i.for.end.i.i_crit_edge ], [ %nb_ace.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_ace.0.lcssa.i.i)
  %tobool189.not.i.i = icmp eq i32 %nb_ace.0.lcssa.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_ace_lite.0.lcssa.i.i)
  %tobool191.not.i.i = icmp eq i32 %nb_ace_lite.0.lcssa.i.i, 0
  %or.cond.i.i = select i1 %tobool189.not.i.i, i1 %tobool191.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.end.i.i.cci_probe_ports.exit.i_crit_edge, label %if.end193.i.i

for.end.i.i.cci_probe_ports.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_probe_ports.exit.i

if.end193.i.i:                                    ; preds = %for.end.i.i
  %call83.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call83.i.i.i, i32 %46)
  %cmp84.i.i.i = icmp ult i32 %call83.i.i.i, %46
  br i1 %cmp84.i.i.i, label %if.end193.i.i.for.body.i.i.i_crit_edge, label %if.end193.i.i.for.cond30.preheader.i.i.i_crit_edge

if.end193.i.i.for.cond30.preheader.i.i.i_crit_edge: ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.i.i.i

if.end193.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end193.i.i
  br label %for.body.i.i.i

for.cond30.preheader.i.i.i:                       ; preds = %for.cond.backedge.i.i.i.for.cond30.preheader.i.i.i_crit_edge, %if.end193.i.i.for.cond30.preheader.i.i.i_crit_edge
  %call3186.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %47 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3186.i.i.i, i32 %47)
  %cmp3287.i.i.i = icmp ult i32 %call3186.i.i.i, %47
  br i1 %cmp3287.i.i.i, label %for.cond30.preheader.i.i.i.for.body34.i.i.i_crit_edge, label %for.cond30.preheader.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge

for.cond30.preheader.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge: ; preds = %for.cond30.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_ace_init_ports.exit.i.i

for.cond30.preheader.i.i.i.for.body34.i.i.i_crit_edge: ; preds = %for.cond30.preheader.i.i.i
  br label %for.body34.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, %if.end193.i.i.for.body.i.i.i_crit_edge
  %call85.i.i.i = phi i32 [ %call.i.i.i, %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge ], [ %call83.i.i.i, %if.end193.i.i.for.body.i.i.i_crit_edge ]
  %call1.i.i.i = call ptr @of_get_cpu_node(i32 noundef %call85.i.i.i, ptr noundef null) #10
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end24.critedge.i.i.i, !prof !100

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.14) #10
  br label %for.cond.backedge.i.i.i

if.end24.critedge.i.i.i:                          ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #10
  %48 = call ptr @memset(ptr %args.i.i.i.i.i, i32 255, i32 72)
  %call.i.i.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i241.i.i, label %if.end24.critedge.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge

if.end24.critedge.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge: ; preds = %if.end24.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.i.i.i.i

if.end.i.i.i241.i.i:                              ; preds = %if.end24.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %args.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args.i.i.i.i.i, align 4
  br label %of_parse_phandle.exit.i.i.i.i

of_parse_phandle.exit.i.i.i.i:                    ; preds = %if.end.i.i.i241.i.i, %if.end24.critedge.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %50, %if.end.i.i.i241.i.i ], [ null, %if.end24.critedge.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #10
  %51 = load i32, ptr @nb_cci_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp12.not.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp12.not.i.i.i.i, label %of_parse_phandle.exit.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

of_parse_phandle.exit.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %of_parse_phandle.exit.i.i.i.i
  %52 = load ptr, ptr @ports, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.013.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %type1.i.i.i.i = getelementptr %struct.cci_ace_port, ptr %52, i32 %i.013.i.i.i.i, i32 2
  %53 = ptrtoint ptr %type1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp2.i.i.i.i = icmp eq i32 %54, 1
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %dn4.i.i.i.i = getelementptr %struct.cci_ace_port, ptr %52, i32 %i.013.i.i.i.i, i32 3
  %55 = ptrtoint ptr %dn4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dn4.i.i.i.i, align 4
  %cmp5.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, %56
  br i1 %cmp5.i.i.i.i, label %__cci_ace_get_port.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %i.013.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %51
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

__cci_ace_get_port.exit.i.i.i:                    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i.i.i.i)
  %cmp26.i.i.i = icmp slt i32 %i.013.i.i.i.i, 0
  br i1 %cmp26.i.i.i, label %__cci_ace_get_port.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %if.end28.i.i.i

__cci_ace_get_port.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %__cci_ace_get_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

if.end28.i.i.i:                                   ; preds = %__cci_ace_get_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr [4 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %call85.i.i.i
  %arrayidx29.i.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call85.i.i.i
  %57 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx29.i.i.i, align 4
  %conv.i.i.i = zext i32 %58 to i64
  %or.i.i.i.i = or i32 %i.013.i.i.i.i, -2147483648
  %port1.i.i.i.i = getelementptr [4 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %call85.i.i.i, i32 1
  %59 = ptrtoint ptr %port1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i.i.i.i, ptr %port1.i.i.i.i, align 8
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv.i.i.i, ptr %arrayidx.i.i.i, align 8
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %if.end28.i.i.i, %__cci_ace_get_port.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.inc.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %of_parse_phandle.exit.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %do.end.i.i.i
  %call.i.i.i = call i32 @cpumask_next(i32 noundef %call85.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, %61
  br i1 %cmp.i.i.i, label %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.backedge.i.i.i.for.cond30.preheader.i.i.i_crit_edge

for.cond.backedge.i.i.i.for.cond30.preheader.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.i.i.i

for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body34.i.i.i:                                 ; preds = %if.end61.i.i.i.for.body34.i.i.i_crit_edge, %for.cond30.preheader.i.i.i.for.body34.i.i.i_crit_edge
  %call3188.i.i.i = phi i32 [ %call31.i.i.i, %if.end61.i.i.i.for.body34.i.i.i_crit_edge ], [ %call3186.i.i.i, %for.cond30.preheader.i.i.i.for.body34.i.i.i_crit_edge ]
  %port1.i82.i.i.i = getelementptr [4 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %call3188.i.i.i, i32 1
  %62 = ptrtoint ptr %port1.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port1.i82.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.i.i.i = icmp slt i32 %63, 0
  br i1 %tobool.i.i.i.i, label %for.body34.i.i.i.if.end61.i.i.i_crit_edge, label %do.end55.i.i.i, !prof !98

for.body34.i.i.i.if.end61.i.i.i_crit_edge:        ; preds = %for.body34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i.i.i

do.end55.i.i.i:                                   ; preds = %for.body34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %call3188.i.i.i) #10
  br label %if.end61.i.i.i

if.end61.i.i.i:                                   ; preds = %do.end55.i.i.i, %for.body34.i.i.i.if.end61.i.i.i_crit_edge
  %call31.i.i.i = call i32 @cpumask_next(i32 noundef %call3188.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %cmp32.i.i.i = icmp ult i32 %call31.i.i.i, %64
  br i1 %cmp32.i.i.i, label %if.end61.i.i.i.for.body34.i.i.i_crit_edge, label %if.end61.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge

if.end61.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge: ; preds = %if.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_ace_init_ports.exit.i.i

if.end61.i.i.i.for.body34.i.i.i_crit_edge:        ; preds = %if.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i.i.i

cci_ace_init_ports.exit.i.i:                      ; preds = %if.end61.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge, %for.cond30.preheader.i.i.i.cci_ace_init_ports.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %65(ptr noundef nonnull @cci_ctrl_base, i32 noundef 4) #10
  %call.i242.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @cci_ctrl_base to i32)) #10
  %call1.i243.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (ptr, ptr @cci_ctrl_base, i32 1) to i32)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i.i, label %cci_ace_init_ports.exit.i.i.__sync_cache_range_w.exit.i.i_crit_edge, label %if.then.i.i.i.i

cci_ace_init_ports.exit.i.i.__sync_cache_range_w.exit.i.i_crit_edge: ; preds = %cci_ace_init_ports.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sync_cache_range_w.exit.i.i

if.then.i.i.i.i:                                  ; preds = %cci_ace_init_ports.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %66(i32 noundef %call.i242.i.i, i32 noundef %call1.i243.i.i) #10
  br label %__sync_cache_range_w.exit.i.i

__sync_cache_range_w.exit.i.i:                    ; preds = %if.then.i.i.i.i, %cci_ace_init_ports.exit.i.i.__sync_cache_range_w.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %67(ptr noundef nonnull @cci_ctrl_phys, i32 noundef 4) #10
  %call.i244.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @cci_ctrl_phys to i32)) #10
  %call1.i245.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @cci_ctrl_phys, i32 1) to i32)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i246.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i246.i.i, label %__sync_cache_range_w.exit.i.i.__sync_cache_range_w.exit248.i.i_crit_edge, label %if.then.i.i247.i.i

__sync_cache_range_w.exit.i.i.__sync_cache_range_w.exit248.i.i_crit_edge: ; preds = %__sync_cache_range_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sync_cache_range_w.exit248.i.i

if.then.i.i247.i.i:                               ; preds = %__sync_cache_range_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %68(i32 noundef %call.i244.i.i, i32 noundef %call1.i245.i.i) #10
  br label %__sync_cache_range_w.exit248.i.i

__sync_cache_range_w.exit248.i.i:                 ; preds = %if.then.i.i247.i.i, %__sync_cache_range_w.exit.i.i.__sync_cache_range_w.exit248.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %69(ptr noundef nonnull @ports, i32 noundef 4) #10
  %call.i249.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @ports to i32)) #10
  %call1.i250.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (ptr, ptr @ports, i32 1) to i32)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i251.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i251.i.i, label %__sync_cache_range_w.exit248.i.i.__sync_cache_range_w.exit253.i.i_crit_edge, label %if.then.i.i252.i.i

__sync_cache_range_w.exit248.i.i.__sync_cache_range_w.exit253.i.i_crit_edge: ; preds = %__sync_cache_range_w.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sync_cache_range_w.exit253.i.i

if.then.i.i252.i.i:                               ; preds = %__sync_cache_range_w.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %70(i32 noundef %call.i249.i.i, i32 noundef %call1.i250.i.i) #10
  br label %__sync_cache_range_w.exit253.i.i

__sync_cache_range_w.exit253.i.i:                 ; preds = %if.then.i.i252.i.i, %__sync_cache_range_w.exit248.i.i.__sync_cache_range_w.exit253.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %71(ptr noundef nonnull @cpu_port, i32 noundef 64) #10
  %call.i254.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @cpu_port to i32)) #10
  %call1.i255.i.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds ([4 x %struct.cpu_port], ptr @cpu_port, i32 1, i32 0, i32 0) to i32)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i256.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i256.i.i, label %__sync_cache_range_w.exit253.i.i.__sync_cache_range_w.exit258.i.i_crit_edge, label %if.then.i.i257.i.i

__sync_cache_range_w.exit253.i.i.__sync_cache_range_w.exit258.i.i_crit_edge: ; preds = %__sync_cache_range_w.exit253.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sync_cache_range_w.exit258.i.i

if.then.i.i257.i.i:                               ; preds = %__sync_cache_range_w.exit253.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %72(i32 noundef %call.i254.i.i, i32 noundef %call1.i255.i.i) #10
  br label %__sync_cache_range_w.exit258.i.i

__sync_cache_range_w.exit258.i.i:                 ; preds = %if.then.i.i257.i.i, %__sync_cache_range_w.exit253.i.i.__sync_cache_range_w.exit258.i.i_crit_edge
  %73 = load ptr, ptr @ports, align 4
  %74 = load i32, ptr @nb_cci_ports, align 4
  %mul.i.i = shl i32 %74, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %75(ptr noundef %73, i32 noundef %mul.i.i) #10
  %76 = ptrtoint ptr %73 to i32
  %call.i259.i.i = call i32 @__virt_to_phys(i32 noundef %76) #10
  %add.ptr.i.i.i = getelementptr i8, ptr %73, i32 %mul.i.i
  %77 = ptrtoint ptr %add.ptr.i.i.i to i32
  %call1.i260.i.i = call i32 @__virt_to_phys(i32 noundef %77) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i261.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i261.i.i, label %__sync_cache_range_w.exit258.i.i.__sync_cache_range_w.exit263.i.i_crit_edge, label %if.then.i.i262.i.i

__sync_cache_range_w.exit258.i.i.__sync_cache_range_w.exit263.i.i_crit_edge: ; preds = %__sync_cache_range_w.exit258.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sync_cache_range_w.exit263.i.i

if.then.i.i262.i.i:                               ; preds = %__sync_cache_range_w.exit258.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %78(i32 noundef %call.i259.i.i, i32 noundef %call1.i260.i.i) #10
  br label %__sync_cache_range_w.exit263.i.i

__sync_cache_range_w.exit263.i.i:                 ; preds = %if.then.i.i262.i.i, %__sync_cache_range_w.exit258.i.i.__sync_cache_range_w.exit263.i.i_crit_edge
  %call198.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %cci_probe_ports.exit.i

cci_probe_ports.exit.i:                           ; preds = %__sync_cache_range_w.exit263.i.i, %for.end.i.i.cci_probe_ports.exit.i_crit_edge, %if.end7.i.i.i.i.cci_probe_ports.exit.i_crit_edge, %kcalloc.exit.thread.i.i, %if.end28.i.cci_probe_ports.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %__sync_cache_range_w.exit263.i.i ], [ -19, %if.end28.i.cci_probe_ports.exit.i_crit_edge ], [ -12, %if.end7.i.i.i.i.cci_probe_ports.exit.i_crit_edge ], [ -19, %for.end.i.i.cci_probe_ports.exit.i_crit_edge ], [ -12, %kcalloc.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match_str.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #10
  br label %cci_probe.exit

cci_probe.exit:                                   ; preds = %cci_probe_ports.exit.i, %do.end.i, %if.then2.cci_probe.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %do.end.i ], [ %retval.0.i.i, %cci_probe_ports.exit.i ], [ -19, %if.then2.cci_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #10
  store i32 %retval.0.i, ptr @cci_init_status, align 4
  br label %if.end3

if.end3:                                          ; preds = %cci_probe.exit, %if.end.if.end3_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cci_probing) #10
  %79 = load i32, ptr @cci_init_status, align 4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %79, %if.end3 ], [ %0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_platform_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cci_platform_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cci_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef nonnull @arm_cci_auxdata, ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab_cci_ace_get_port, !1, !"__ksymtab_cci_ace_get_port", i1 false, i1 false}
!1 = !{!"../drivers/bus/arm-cci.c", i32 180, i32 1}
!2 = !{ptr @__ksymtab_cci_disable_port_by_cpu, !3, !"__ksymtab_cci_disable_port_by_cpu", i1 false, i1 false}
!3 = !{!"../drivers/bus/arm-cci.c", i32 278, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/bus/arm-cci.c", i32 396, i32 6}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab___cci_control_port_by_device, !9, !"__ksymtab___cci_control_port_by_device", i1 false, i1 false}
!9 = !{!"../drivers/bus/arm-cci.c", i32 402, i32 1}
!10 = !{ptr @__ksymtab___cci_control_port_by_index, !11, !"__ksymtab___cci_control_port_by_index", i1 false, i1 false}
!11 = !{!"../drivers/bus/arm-cci.c", i32 431, i32 1}
!12 = !{ptr @__ksymtab_cci_probed, !13, !"__ksymtab_cci_probed", i1 false, i1 false}
!13 = !{!"../drivers/bus/arm-cci.c", i32 582, i32 1}
!14 = !{ptr @__initcall__kmod_arm_cci__228_584_cci_initearly, !15, !"__initcall__kmod_arm_cci__228_584_cci_initearly", i1 false, i1 false}
!15 = !{!"../drivers/bus/arm-cci.c", i32 584, i32 1}
!16 = !{ptr @__initcall__kmod_arm_cci__229_585_cci_platform_init1, !17, !"__initcall__kmod_arm_cci__229_585_cci_platform_init1", i1 false, i1 false}
!17 = !{!"../drivers/bus/arm-cci.c", i32 585, i32 1}
!18 = !{ptr @__UNIQUE_ID_file230, !19, !"__UNIQUE_ID_file230", i1 false, i1 false}
!19 = !{!"../drivers/bus/arm-cci.c", i32 586, i32 1}
!20 = !{ptr @__UNIQUE_ID_license231, !19, !"__UNIQUE_ID_license231", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description232, !22, !"__UNIQUE_ID_description232", i1 false, i1 false}
!22 = !{!"../drivers/bus/arm-cci.c", i32 587, i32 1}
!23 = !{ptr @ports, !24, !"ports", i1 false, i1 false}
!24 = !{!"../drivers/bus/arm-cci.c", i32 113, i32 29}
!25 = !{ptr @nb_cci_ports, !26, !"nb_cci_ports", i1 false, i1 false}
!26 = !{!"../drivers/bus/arm-cci.c", i32 114, i32 21}
!27 = !{ptr @cpu_port, !28, !"cpu_port", i1 false, i1 false}
!28 = !{!"../drivers/bus/arm-cci.c", i32 148, i32 24}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/arm-cci.c", i32 167, i32 35}
!31 = !{ptr @cci_ctrl_base, !32, !"cci_ctrl_base", i1 false, i1 false}
!32 = !{!"../drivers/bus/arm-cci.c", i32 28, i32 22}
!33 = !{ptr @cci_init_status, !34, !"cci_init_status", i1 false, i1 false}
!34 = !{!"../drivers/bus/arm-cci.c", i32 557, i32 12}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bus/arm-cci.c", i32 558, i32 8}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cci_probing, !36, !"cci_probing", i1 false, i1 false}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bus/arm-cci.c", i32 550, i32 3}
!41 = !{ptr @arm_cci_matches, !42, !"arm_cci_matches", i1 false, i1 false}
!42 = !{!"../drivers/bus/arm-cci.c", i32 47, i32 34}
!43 = !{ptr @cci400_ports, !44, !"cci400_ports", i1 false, i1 false}
!44 = !{!"../drivers/bus/arm-cci.c", i32 37, i32 34}
!45 = !{ptr @cci_ctrl_phys, !46, !"cci_ctrl_phys", i1 false, i1 false}
!46 = !{!"../drivers/bus/arm-cci.c", i32 29, i32 22}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/arm-cci.c", i32 467, i32 35}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/arm-cci.c", i32 469, i32 4}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bus/arm-cci.c", i32 473, i32 30}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/arm-cci.c", i32 474, i32 36}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/bus/arm-cci.c", i32 475, i32 4}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/arm-cci.c", i32 486, i32 4}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bus/arm-cci.c", i32 523, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cci_probe_ports._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cci_probe_ports._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @arm_cci_ctrl_if_matches, !65, !"arm_cci_ctrl_if_matches", i1 false, i1 false}
!65 = !{!"../drivers/bus/arm-cci.c", i32 433, i32 34}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bus/arm-cci.c", i32 198, i32 7}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/arm-cci.c", i32 209, i32 3}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bus/arm-cci.c", i32 80, i32 14}
!72 = !{ptr @cci_platform_driver, !73, !"cci_platform_driver", i1 false, i1 false}
!73 = !{!"../drivers/bus/arm-cci.c", i32 78, i32 31}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bus/arm-cci.c", i32 59, i32 2}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/arm-cci.c", i32 60, i32 2}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/arm-cci.c", i32 61, i32 2}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/arm-cci.c", i32 62, i32 2}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/arm-cci.c", i32 63, i32 2}
!84 = !{ptr @arm_cci_auxdata, !85, !"arm_cci_auxdata", i1 false, i1 false}
!85 = !{!"../drivers/bus/arm-cci.c", i32 58, i32 36}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 5833236}
!96 = !{i64 5833654}
!97 = !{i64 8354, i64 8360, i64 8379, i64 8429, i64 8482, i64 8499, i64 8518, i64 8552, i64 8655, i64 8708, i64 8744, i64 8803, i64 8849, i64 8890, i64 8955, i64 9001, i64 9028, i64 9101, i64 9126, i64 9136, i64 9146, i64 9245, i64 9292, i64 9309, i64 9334, i64 9371, i64 9408, i64 9448, i64 9490, i64 9557, i64 9599, i64 9635, i64 9728, i64 9745, i64 9764, i64 9804, i64 9858, i64 9902, i64 9916, i64 9933, i64 9946, i64 9961, i64 9988, i64 10004, i64 10027}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}

; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scpi.c_pt.bc'
source_filename = "../drivers/firmware/arm_scpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+get_scpi_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_get_scpi_ops\09\09\09\09"
module asm "\09.long\09__crc_get_scpi_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_scpi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22get_scpi_ops\22\09\09\09\09\09"
module asm "__kstrtabns_get_scpi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.scpi_drvinfo = type { i32, i32, i8, i32, ptr, [1 x i32], %struct.atomic_t, ptr, ptr, [8 x ptr] }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.scpi_chan = type { %struct.mbox_client, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.mutex, i8 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.scpi_xfer = type { i32, i32, i32, ptr, ptr, i32, i32, %struct.list_head, %struct.completion }
%struct.scpi_dvfs_info = type { i32, i32, ptr }
%struct.scpi_shared_mem = type { i32, i32, [0 x i8] }
%struct.legacy_clk_set_value = type { i32, i16, i16 }
%struct.scp_capabilities = type { i32, i32, i32, [4 x i32] }
%struct.legacy_scpi_shared_mem = type { i32, [0 x i8] }
%struct.clk_get_info = type { i16, i16, i32, i32, [20 x i8] }
%struct.clk_set_value = type { i16, i16, i32 }
%struct.dvfs_set = type { i8, i8 }
%struct.dvfs_info = type { i8, i8, i16, [16 x %struct.anon.43] }
%struct.anon.43 = type { i32, i32 }
%struct.scpi_opp = type { i32, i32 }
%struct._scpi_sensor_info = type { i16, i8, i8, [20 x i8] }
%struct.dev_pstate_set = type <{ i16, i8 }>

@scpi_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_get_scpi_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_scpi_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_get_scpi_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_scpi_ops to i32), ptr @__kstrtab_get_scpi_ops, ptr @__kstrtabns_get_scpi_ops }, section "___ksymtab_gpl+get_scpi_ops", align 4
@__initcall__kmod_arm_scpi__265_1047_scpi_driver_init6 = internal global ptr @scpi_driver_init, section ".initcall6.init", align 4
@scpi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpi_probe, ptr @scpi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scpi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @versions_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scpi_driver_exit = internal global ptr @scpi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author266 = internal constant [52 x i8] c"arm_scpi.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [54 x i8] c"arm_scpi.description=ARM SCPI mailbox protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [40 x i8] c"arm_scpi.file=drivers/firmware/arm_scpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [24 x i8] c"arm_scpi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scpi_protocol\00", [18 x i8] zeroinitializer }, align 32
@scpi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-pre-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@versions_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @versions_group, ptr null], [24 x i8] zeroinitializer }, align 32
@legacy_scpi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-pre-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@scpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 926, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no mboxes property in '%pOF'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scpi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/firmware/arm_scpi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr = internal global ptr @scpi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shmem\00", [26 x i8] zeroinitializer }, align 32
@shmem_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-scp-shmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-scp-shmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,juno-scp-shmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scp-shmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@scpi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 952, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get SCPI payload mem resource\0A\00", [55 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.11 = internal global ptr @scpi_probe._entry.9, section ".printk_index", align 4
@scpi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 959, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to ioremap SCPI payload\0A\00", [32 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.14 = internal global ptr @scpi_probe._entry.12, section ".printk_index", align 4
@scpi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pchan->rx_lock\00", [16 x i8] zeroinitializer }, align 32
@scpi_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pchan->xfers_lock\00", [45 x i8] zeroinitializer }, align 32
@scpi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 984, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get channel%d err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.20 = internal global ptr @scpi_probe._entry.18, section ".printk_index", align 4
@scpi_std_commands = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 14, i32 16, i32 15, i32 11, i32 10, i32 9, i32 21, i32 22, i32 23, i32 27, i32 28], [48 x i8] zeroinitializer }, align 32
@scpi_ops = internal global { %struct.scpi_ops, [36 x i8] } { %struct.scpi_ops { ptr @scpi_get_version, ptr @scpi_clk_get_range, ptr @scpi_clk_get_val, ptr @scpi_clk_set_val, ptr @scpi_dvfs_get_idx, ptr @scpi_dvfs_set_idx, ptr @scpi_dvfs_get_info, ptr @scpi_dev_domain_id, ptr @scpi_dvfs_get_transition_latency, ptr @scpi_dvfs_add_opps_to_device, ptr @scpi_sensor_get_capability, ptr @scpi_sensor_get_info, ptr @scpi_sensor_get_value, ptr @scpi_device_get_power_state, ptr @scpi_device_set_power_state }, [36 x i8] zeroinitializer }, align 32
@scpi_legacy_commands = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 -1, i32 22, i32 21, i32 15, i32 14, i32 13, i32 26, i32 27, i32 28, i32 -1, i32 -1], [48 x i8] zeroinitializer }, align 32
@scpi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 1006, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"incorrect or no SCP firmware found\0A\00", [60 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.23 = internal global ptr @scpi_probe._entry.21, section ".printk_index", align 4
@scpi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1012, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SCP Protocol legacy pre-1.0 firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.27 = internal global ptr @scpi_probe._entry.24, section ".printk_index", align 4
@scpi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 1024, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SCP Protocol %lu.%lu Firmware %lu.%lu.%lu version\0A\00", [45 x i8] zeroinitializer }, align 32
@scpi_probe._entry_ptr.30 = internal global ptr @scpi_probe._entry.28, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@scpi_linux_errmap = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -8, i32 -90, i32 -22, i32 -13, i32 -34, i32 -110, i32 -12, i32 -22, i32 -95, i32 -5, i32 -16], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@scpi_dvfs_add_opps_to_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 701, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add opp %uHz %umV\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scpi_dvfs_add_opps_to_device\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scpi_dvfs_add_opps_to_device._entry_ptr = internal global ptr @scpi_dvfs_add_opps_to_device._entry, section ".printk_index", align 4
@versions_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @versions_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@versions_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_protocol_version, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protocol_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%lu.%lu.%lu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"protocol_version\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%lu.%lu\0A\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"scpi_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 327, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"scpi_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1038, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1040, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"scpi_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1030, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"versions_groups\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"legacy_scpi_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 897, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 924, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 924, i32 51 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 926, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 944, i32 52 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"shmem_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 902, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 952, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 959, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 973, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 974, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 983, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"scpi_std_commands\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 190, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"scpi_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 782, i32 24 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"scpi_legacy_commands\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 205, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1006, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1012, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1014, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 87, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"scpi_linux_errmap\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 329, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 658, i32 47 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 658, i32 57 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 700, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"versions_group\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 852, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"versions_attrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 847, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"dev_attr_protocol_version\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 845, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 840, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 833, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [31 x i8] c"../drivers/firmware/arm_scpi.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 829, i32 22 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_scpi_driver_exit, ptr @__initcall__kmod_arm_scpi__265_1047_scpi_driver_init6, ptr @__ksymtab_get_scpi_ops, ptr @scpi_driver_exit, ptr @scpi_dvfs_add_opps_to_device._entry, ptr @scpi_dvfs_add_opps_to_device._entry_ptr, ptr @scpi_probe._entry, ptr @scpi_probe._entry.12, ptr @scpi_probe._entry.18, ptr @scpi_probe._entry.21, ptr @scpi_probe._entry.24, ptr @scpi_probe._entry.28, ptr @scpi_probe._entry.9, ptr @scpi_probe._entry_ptr, ptr @scpi_probe._entry_ptr.11, ptr @scpi_probe._entry_ptr.14, ptr @scpi_probe._entry_ptr.20, ptr @scpi_probe._entry_ptr.23, ptr @scpi_probe._entry_ptr.27, ptr @scpi_probe._entry_ptr.30, ptr @scpi_info, ptr @scpi_driver, ptr @.str, ptr @scpi_of_match, ptr @versions_groups, ptr @legacy_scpi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @shmem_of_match, ptr @.str.10, ptr @.str.13, ptr @scpi_probe.__key, ptr @.str.15, ptr @scpi_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @scpi_std_commands, ptr @scpi_ops, ptr @scpi_legacy_commands, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @init_completion.__key, ptr @.str.31, ptr @scpi_linux_errmap, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @versions_group, ptr @versions_attrs, ptr @dev_attr_firmware_version, ptr @dev_attr_protocol_version, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_scpi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_std_commands to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_legacy_commands to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_linux_errmap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_dvfs_add_opps_to_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_scpi_ops() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scpi_info, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %scpi_ops = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scpi_ops, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpi_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scpi_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @scpi_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #13
  store ptr %call.i, ptr @scpi_info, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup202_crit_edge, label %if.end

entry.cleanup202_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @legacy_scpi_of_match, ptr noundef %dev1) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_legacy to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_legacy, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @of_count_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %3) #16
  br label %cleanup202

if.end9:                                          ; preds = %if.end6
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call7, i32 200) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !116

devm_kcalloc.exit.thread:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %8 = load ptr, ptr @scpi_info, align 4
  %channels269 = getelementptr inbounds %struct.scpi_drvinfo, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %channels269 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %channels269, align 4
  br label %cleanup202

devm_kcalloc.exit:                                ; preds = %if.end9
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %10, i32 noundef 3520) #13
  %11 = load ptr, ptr @scpi_info, align 4
  %channels = getelementptr inbounds %struct.scpi_drvinfo, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool12.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool12.not, label %devm_kcalloc.exit.cleanup202_crit_edge, label %if.end14

devm_kcalloc.exit.cleanup202_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

if.end14:                                         ; preds = %devm_kcalloc.exit
  %call15 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @scpi_free_channels, ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond.preheader, label %if.end14.cleanup202_crit_edge

if.end14.cleanup202_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

for.cond.preheader:                               ; preds = %if.end14
  %13 = load ptr, ptr @scpi_info, align 4
  %num_chans286 = getelementptr inbounds %struct.scpi_drvinfo, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %num_chans286 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_chans286, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call7)
  %cmp19287 = icmp slt i32 %15, %call7
  br i1 %cmp19287, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %16 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %15, %for.cond.preheader.for.body_crit_edge ]
  %17 = phi ptr [ %49, %for.inc.for.body_crit_edge ], [ %13, %for.cond.preheader.for.body_crit_edge ]
  %channels22 = getelementptr inbounds %struct.scpi_drvinfo, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %channels22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels22, align 4
  %add.ptr = getelementptr %struct.scpi_chan, ptr %19, i32 %16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #13
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i263 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %args.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool.not.i = icmp eq i32 %call.i263, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.of_parse_phandle.exit_crit_edge

for.body.of_parse_phandle.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %for.body.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ null, %for.body.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #13
  %call25 = call ptr @of_match_node(ptr noundef nonnull @shmem_of_match, ptr noundef %retval.0.i) #13
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %of_parse_phandle.exit.cleanup202_crit_edge, label %if.end28

of_parse_phandle.exit.cleanup202_crit_edge:       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

if.end28:                                         ; preds = %of_parse_phandle.exit
  %call29 = call i32 @of_address_to_resource(ptr noundef %retval.0.i, i32 noundef 0, ptr noundef nonnull %res) #13
  call void @of_node_put(ptr noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #16
  br label %cleanup202

if.end35:                                         ; preds = %if.end28
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %25 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res, align 4
  %sub.i = add i32 %24, 1
  %add.i = sub i32 %sub.i, %26
  %call37 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %26, i32 noundef %add.i) #13
  %rx_payload = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 3
  %27 = ptrtoint ptr %rx_payload to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call37, ptr %rx_payload, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #16
  br label %cleanup202

if.end44:                                         ; preds = %if.end35
  %shr = lshr i32 %add.i, 1
  %add.ptr46 = getelementptr i8, ptr %call37, i32 %shr
  %tx_payload = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 2
  %28 = ptrtoint ptr %tx_payload to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr46, ptr %tx_payload, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1, ptr %add.ptr, align 4
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %add.ptr, i32 0, i32 4
  %30 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @scpi_handle_remote_msg, ptr %rx_callback, align 4
  %tx_prepare = getelementptr inbounds %struct.mbox_client, ptr %add.ptr, i32 0, i32 5
  %31 = ptrtoint ptr %tx_prepare to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @scpi_tx_prepare, ptr %tx_prepare, align 4
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %add.ptr, i32 0, i32 1
  %32 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %tx_block, align 4
  %tx_tout = getelementptr inbounds %struct.mbox_client, ptr %add.ptr, i32 0, i32 2
  %33 = ptrtoint ptr %tx_tout to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %tx_tout, align 4
  %knows_txdone = getelementptr inbounds %struct.mbox_client, ptr %add.ptr, i32 0, i32 3
  %34 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %knows_txdone, align 4
  %rx_pending = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 4
  %35 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %rx_pending, ptr %rx_pending, align 4
  %prev.i = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 4, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx_pending, ptr %prev.i, align 4
  %xfers_list = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 5
  %37 = ptrtoint ptr %xfers_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %xfers_list, ptr %xfers_list, align 4
  %prev.i264 = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 5, i32 1
  %38 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %xfers_list, ptr %prev.i264, align 4
  %rx_lock = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 7
  call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @scpi_probe.__key, i16 noundef signext 3) #13
  %xfers_lock = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 8
  call void @__mutex_init(ptr noundef %xfers_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @scpi_probe.__key.16) #13
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 920, i32 noundef 3520) #13
  %tobool.not.i265 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i265, label %if.end44.cleanup202_crit_edge, label %if.end.i266

if.end44.cleanup202_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

if.end.i266:                                      ; preds = %if.end44
  %xfers1.i = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 6
  %39 = ptrtoint ptr %xfers1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i.i, ptr %xfers1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.i266
  %xfers.010.i = phi ptr [ %call5.i.i.i, %if.end.i266 ], [ %incdec.ptr.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ 0, %if.end.i266 ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.scpi_xfer, ptr %xfers.010.i, i32 0, i32 8
  %40 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.scpi_xfer, ptr %xfers.010.i, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #13
  %node.i = getelementptr inbounds %struct.scpi_xfer, ptr %xfers.010.i, i32 0, i32 7
  %41 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i264, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %xfers_list) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i264, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %xfers_list, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.scpi_xfer, ptr %xfers.010.i, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.scpi_xfer, ptr %xfers.010.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.then57, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then57:                                        ; preds = %list_add_tail.exit.i
  %call58 = call ptr @mbox_request_channel(ptr noundef %add.ptr, i32 noundef %16) #13
  %chan = getelementptr %struct.scpi_chan, ptr %19, i32 %16, i32 1
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call58, ptr %chan, align 4
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end62, label %for.inc

if.end62:                                         ; preds = %if.then57
  %cmp65.not = icmp eq ptr %call58, inttoptr (i32 -517 to ptr)
  br i1 %cmp65.not, label %if.end62.cleanup202_crit_edge, label %do.end69

if.end62.cleanup202_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %call58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %16, i32 noundef %48) #16
  br label %cleanup202

for.inc:                                          ; preds = %if.then57
  %49 = load ptr, ptr @scpi_info, align 4
  %num_chans76 = getelementptr inbounds %struct.scpi_drvinfo, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %num_chans76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_chans76, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %num_chans76, align 4
  %cmp19 = icmp slt i32 %inc, %call7
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa279 = phi ptr [ %13, %for.cond.preheader.for.end_crit_edge ], [ %49, %for.inc.for.end_crit_edge ]
  %commands = getelementptr inbounds %struct.scpi_drvinfo, ptr %.lcssa279, i32 0, i32 4
  %52 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @scpi_std_commands, ptr %commands, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %.lcssa279, ptr %driver_data.i.i, align 4
  %is_legacy77 = getelementptr inbounds %struct.scpi_drvinfo, ptr %.lcssa279, i32 0, i32 2
  %54 = ptrtoint ptr %is_legacy77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_legacy77, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool78.not = icmp eq i8 %55, 0
  br i1 %tobool78.not, label %for.end.if.end87_crit_edge, label %if.then79

for.end.if.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @legacy_scpi_clk_set_val, ptr getelementptr inbounds (%struct.scpi_ops, ptr @scpi_ops, i32 0, i32 3), align 4
  %56 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @scpi_legacy_commands, ptr %commands, align 4
  %57 = load ptr, ptr @scpi_info, align 4
  %cmd_priority = getelementptr inbounds %struct.scpi_drvinfo, ptr %57, i32 0, i32 5
  call void @_set_bit(i32 noundef 5, ptr noundef %cmd_priority) #13
  %58 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.1 = getelementptr inbounds %struct.scpi_drvinfo, ptr %58, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %cmd_priority.1) #13
  %59 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.2 = getelementptr inbounds %struct.scpi_drvinfo, ptr %59, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %cmd_priority.2) #13
  %60 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.3 = getelementptr inbounds %struct.scpi_drvinfo, ptr %60, i32 0, i32 5
  call void @_set_bit(i32 noundef 14, ptr noundef %cmd_priority.3) #13
  %61 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.4 = getelementptr inbounds %struct.scpi_drvinfo, ptr %61, i32 0, i32 5
  call void @_set_bit(i32 noundef 15, ptr noundef %cmd_priority.4) #13
  %62 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.5 = getelementptr inbounds %struct.scpi_drvinfo, ptr %62, i32 0, i32 5
  call void @_set_bit(i32 noundef 17, ptr noundef %cmd_priority.5) #13
  %63 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.6 = getelementptr inbounds %struct.scpi_drvinfo, ptr %63, i32 0, i32 5
  call void @_set_bit(i32 noundef 18, ptr noundef %cmd_priority.6) #13
  %64 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.7 = getelementptr inbounds %struct.scpi_drvinfo, ptr %64, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %cmd_priority.7) #13
  %65 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.8 = getelementptr inbounds %struct.scpi_drvinfo, ptr %65, i32 0, i32 5
  call void @_set_bit(i32 noundef 21, ptr noundef %cmd_priority.8) #13
  %66 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.9 = getelementptr inbounds %struct.scpi_drvinfo, ptr %66, i32 0, i32 5
  call void @_set_bit(i32 noundef 22, ptr noundef %cmd_priority.9) #13
  %67 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.10 = getelementptr inbounds %struct.scpi_drvinfo, ptr %67, i32 0, i32 5
  call void @_set_bit(i32 noundef 24, ptr noundef %cmd_priority.10) #13
  %68 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.11 = getelementptr inbounds %struct.scpi_drvinfo, ptr %68, i32 0, i32 5
  call void @_set_bit(i32 noundef 25, ptr noundef %cmd_priority.11) #13
  %69 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.12 = getelementptr inbounds %struct.scpi_drvinfo, ptr %69, i32 0, i32 5
  call void @_set_bit(i32 noundef 29, ptr noundef %cmd_priority.12) #13
  %70 = load ptr, ptr @scpi_info, align 4
  %cmd_priority.13 = getelementptr inbounds %struct.scpi_drvinfo, ptr %70, i32 0, i32 5
  call void @_set_bit(i32 noundef 30, ptr noundef %cmd_priority.13) #13
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %for.end.if.end87_crit_edge
  %71 = load ptr, ptr @scpi_info, align 4
  %call88 = call fastcc i32 @scpi_init_versions(ptr noundef %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end94, label %do.end93

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #16
  br label %cleanup202

if.end94:                                         ; preds = %if.end87
  %72 = load ptr, ptr @scpi_info, align 4
  %is_legacy95 = getelementptr inbounds %struct.scpi_drvinfo, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %is_legacy95 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_legacy95, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool96.not = icmp eq i8 %74, 0
  br i1 %tobool96.not, label %if.end94.do.end106_crit_edge, label %land.lhs.true

if.end94.do.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end106

land.lhs.true:                                    ; preds = %if.end94
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool97.not = icmp eq i32 %76, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %land.lhs.true.do.end106_crit_edge

land.lhs.true.do.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end106

land.lhs.true98:                                  ; preds = %land.lhs.true
  %firmware_version = getelementptr inbounds %struct.scpi_drvinfo, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %firmware_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool99.not = icmp eq i32 %78, 0
  br i1 %tobool99.not, label %do.end103, label %land.lhs.true98.do.end106_crit_edge

land.lhs.true98.do.end106_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end106

do.end103:                                        ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25) #16
  br label %if.end200

do.end106:                                        ; preds = %land.lhs.true98.do.end106_crit_edge, %land.lhs.true.do.end106_crit_edge, %if.end94.do.end106_crit_edge
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %72, align 4
  %shr123 = lshr i32 %80, 16
  %and141 = and i32 %80, 65535
  %firmware_version159 = getelementptr inbounds %struct.scpi_drvinfo, ptr %72, i32 0, i32 1
  %81 = ptrtoint ptr %firmware_version159 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %firmware_version159, align 4
  %shr161 = lshr i32 %82, 24
  %and179 = lshr i32 %82, 16
  %shr180 = and i32 %and179, 255
  %and198 = and i32 %82, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %shr123, i32 noundef %and141, i32 noundef %shr161, i32 noundef %shr180, i32 noundef %and198) #16
  br label %if.end200

if.end200:                                        ; preds = %do.end106, %do.end103
  %83 = load ptr, ptr @scpi_info, align 4
  %scpi_ops = getelementptr inbounds %struct.scpi_drvinfo, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @scpi_ops, ptr %scpi_ops, align 4
  %call201 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #13
  br label %cleanup202

cleanup202:                                       ; preds = %if.end200, %do.end93, %do.end69, %if.end62.cleanup202_crit_edge, %if.end44.cleanup202_crit_edge, %do.end43, %do.end34, %of_parse_phandle.exit.cleanup202_crit_edge, %if.end14.cleanup202_crit_edge, %devm_kcalloc.exit.cleanup202_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup202_crit_edge
  %retval.2 = phi i32 [ -19, %do.end ], [ %call88, %do.end93 ], [ %call201, %if.end200 ], [ -12, %entry.cleanup202_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup202_crit_edge ], [ %call15, %if.end14.cleanup202_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -517, %if.end62.cleanup202_crit_edge ], [ %48, %do.end69 ], [ %call29, %do.end34 ], [ -99, %do.end43 ], [ -6, %of_parse_phandle.exit.cleanup202_crit_edge ], [ -12, %if.end44.cleanup202_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr @scpi_info, align 4
  %arrayidx = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %entry
  %opps = getelementptr inbounds %struct.scpi_dvfs_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %opps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opps, align 4
  tail call void @kfree(ptr noundef %5) #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #13
  %arrayidx.1 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %opps.1 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %opps.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opps.1, align 4
  tail call void @kfree(ptr noundef %11) #13
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %13) #13
  %arrayidx.2 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %opps.2 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %opps.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opps.2, align 4
  tail call void @kfree(ptr noundef %17) #13
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %19) #13
  %arrayidx.3 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %opps.3 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %opps.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opps.3, align 4
  tail call void @kfree(ptr noundef %23) #13
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %25) #13
  %arrayidx.4 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %27, null
  br i1 %tobool.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %opps.4 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %opps.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %opps.4, align 4
  tail call void @kfree(ptr noundef %29) #13
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %31) #13
  %arrayidx.5 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %33, null
  br i1 %tobool.not.5, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %opps.5 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %opps.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %opps.5, align 4
  tail call void @kfree(ptr noundef %35) #13
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %37) #13
  %arrayidx.6 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %39, null
  br i1 %tobool.not.6, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %opps.6 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %opps.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %opps.6, align 4
  tail call void @kfree(ptr noundef %41) #13
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.6, align 4
  tail call void @kfree(ptr noundef %43) #13
  %arrayidx.7 = getelementptr %struct.scpi_drvinfo, ptr %1, i32 0, i32 9, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %45, null
  br i1 %tobool.not.7, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #15
  %opps.7 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %opps.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %opps.7, align 4
  tail call void @kfree(ptr noundef %47) #13
  %48 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.7, align 4
  tail call void @kfree(ptr noundef %49) #13
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scpi_free_channels(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_chans = getelementptr inbounds %struct.scpi_drvinfo, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.scpi_drvinfo, ptr %data, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %chan = getelementptr %struct.scpi_chan, ptr %3, i32 %i.05, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  tail call void @mbox_free_channel(ptr noundef %5) #13
  %inc = add nuw nsw i32 %i.05, 1
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chans, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scpi_handle_remote_msg(ptr noundef %c, ptr nocapture noundef readnone %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_payload = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 3
  %3 = ptrtoint ptr %rx_payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_payload, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !118
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %6, %if.then ]
  tail call fastcc void @scpi_process_cmd(ptr noundef %c, i32 noundef %cmd.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scpi_tx_prepare(ptr noundef %c, ptr noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_payload = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %tx_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_payload, align 4
  %tx_buf = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  %payload = getelementptr inbounds %struct.scpi_shared_mem, ptr %1, i32 0, i32 2
  %.sink = select i1 %tobool1.not, ptr %payload, ptr %1
  %tx_len = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_len, align 4
  tail call void @mmiocpy(ptr noundef %.sink, ptr noundef nonnull %3, i32 noundef %8) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %rx_buf = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.if.end46_crit_edge, label %if.then9

if.end7.if.end46_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then9:                                         ; preds = %if.end7
  %token = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 9
  %11 = ptrtoint ptr %token to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %token, align 4
  %inc = add i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool10.not = icmp eq i8 %inc, 0
  %spec.select = select i1 %tobool10.not, i8 1, i8 %inc
  %13 = ptrtoint ptr %token to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %token, align 4
  %conv34 = zext i8 %spec.select to i32
  %shl = shl nuw nsw i32 %conv34, 8
  %cmd = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd, align 4
  %or = or i32 %shl, %15
  store i32 %or, ptr %cmd, align 4
  %rx_lock = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 7
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #13
  %node = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 7
  %rx_pending = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.scpi_chan, ptr %c, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %17, ptr noundef %rx_pending) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_add_tail.exit_crit_edge

if.then9.list_add_tail.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node, ptr %prev.i, align 4
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then9.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call40) #13
  br label %if.end46

if.end46:                                         ; preds = %list_add_tail.exit, %if.end7.if.end46_crit_edge
  %22 = load ptr, ptr @scpi_info, align 4
  %is_legacy47 = getelementptr inbounds %struct.scpi_drvinfo, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %is_legacy47 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_legacy47, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool48.not = icmp eq i8 %24, 0
  br i1 %tobool48.not, label %if.then49, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %cmd50 = getelementptr inbounds %struct.scpi_xfer, ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %cmd50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %27) #13, !srcloc !121
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @legacy_scpi_clk_set_val(i16 noundef zeroext %clk_id, i32 noundef %rate) #3 align 64 {
entry:
  %stat = alloca i32, align 4
  %clk = alloca %struct.legacy_clk_set_value, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #13
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk) #13
  %1 = getelementptr inbounds %struct.legacy_clk_set_value, ptr %clk, i32 0, i32 1
  %2 = getelementptr inbounds %struct.legacy_clk_set_value, ptr %clk, i32 0, i32 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %clk, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %clk_id)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %2, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 3, ptr noundef nonnull %clk, i32 noundef 8, ptr noundef nonnull %stat, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpi_init_versions(ptr nocapture noundef writeonly %info) unnamed_addr #3 align 64 {
entry:
  %caps = alloca %struct.scp_capabilities, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %caps) #13
  %0 = call ptr @memset(ptr %caps, i32 255, i32 28)
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %caps, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.scp_capabilities, ptr %caps, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %info, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %firmware_version = getelementptr inbounds %struct.scpi_drvinfo, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %firmware_version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %firmware_version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  %or.cond = select i1 %tobool2.not, i1 %cmp, i1 false
  %retval.0 = select i1 %or.cond, i32 0, i32 %call
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %caps) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scpi_process_cmd(ptr noundef %ch, i32 noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.scpi_chan, ptr %ch, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #13
  %rx_pending = getelementptr inbounds %struct.scpi_chan, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_pending, align 4
  %cmp.i.not = icmp eq ptr %1, %rx_pending
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end.for.cond_crit_edge, label %if.then8

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.then8:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.if.end32_crit_edge

if.then8.if.end32_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end32

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %rx_pending, %if.end.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp18.not = icmp eq ptr %.pn, %rx_pending
  br i1 %cmp18.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cmd20 = getelementptr i8, ptr %.pn, i32 -24
  %12 = ptrtoint ptr %cmd20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd20, align 4
  %14 = xor i32 %13, %cmd
  %15 = and i32 %14, 65407
  %cmp22 = icmp eq i32 %15, 0
  br i1 %cmp22, label %if.then24, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then24:                                        ; preds = %for.body
  %call.i.i120 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #13
  br i1 %call.i.i120, label %if.end.i.i123, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end.i.i123:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i121 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i121, align 4
  %18 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i122 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i122, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i.i123, %if.then24.if.end32_crit_edge, %if.end.i.i, %if.then8.if.end32_crit_edge
  %.pn.lcssa132.sink133 = phi ptr [ %1, %if.then8.if.end32_crit_edge ], [ %1, %if.end.i.i ], [ %.pn, %if.then24.if.end32_crit_edge ], [ %.pn, %if.end.i.i123 ]
  %22 = ptrtoint ptr %.pn.lcssa132.sink133 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.lcssa132.sink133, align 4
  %prev.i124 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa132.sink133, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i124, align 4
  %match.0 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -28
  %tobool33.not = icmp eq ptr %match.0, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %land.lhs.true

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end32
  %done = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 8
  %call34 = tail call zeroext i1 @completion_done(ptr noundef %done) #13
  br i1 %call34, label %land.lhs.true.cleanup_crit_edge, label %if.then35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr @scpi_info, align 4
  %is_legacy36 = getelementptr inbounds %struct.scpi_drvinfo, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %is_legacy36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_legacy36, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  %rx_payload43 = getelementptr inbounds %struct.scpi_chan, ptr %ch, i32 0, i32 3
  %27 = ptrtoint ptr %rx_payload43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_payload43, align 4
  %rx_len44 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -4
  %29 = ptrtoint ptr %rx_len44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_len44, align 4
  br i1 %tobool37.not, label %if.else41, label %if.then38

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !118
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  %status40 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -20
  %33 = ptrtoint ptr %status40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %status40, align 4
  %rx_buf = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -12
  %34 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_buf, align 4
  %payload = getelementptr inbounds %struct.legacy_scpi_shared_mem, ptr %28, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %35, ptr noundef %payload, i32 noundef %30) #13
  br label %if.end71

if.else41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %and61 = lshr i32 %cmd, 16
  %shr = and i32 %and61, 511
  %36 = tail call i32 @llvm.umin.i32(i32 %30, i32 %shr)
  %status65 = getelementptr inbounds %struct.scpi_shared_mem, ptr %28, i32 0, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status65) #13, !srcloc !118
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  %status67 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -20
  %39 = ptrtoint ptr %status67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %status67, align 4
  %rx_buf68 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -12
  %40 = ptrtoint ptr %rx_buf68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf68, align 4
  %payload69 = getelementptr inbounds %struct.scpi_shared_mem, ptr %28, i32 0, i32 2
  tail call void @mmiocpy(ptr noundef %41, ptr noundef %payload69, i32 noundef %36) #13
  br label %if.end71

if.end71:                                         ; preds = %if.else41, %if.then38
  %len.0 = phi i32 [ %30, %if.then38 ], [ %36, %if.else41 ]
  %rx_len72 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -4
  %42 = ptrtoint ptr %rx_len72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_len72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %len.0)
  %cmp73 = icmp ugt i32 %43, %len.0
  br i1 %cmp73, label %if.then75, label %if.end71.if.end79_crit_edge

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %rx_buf76 = getelementptr i8, ptr %.pn.lcssa132.sink133, i32 -12
  %44 = ptrtoint ptr %rx_buf76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_buf76, align 4
  %add.ptr77 = getelementptr i8, ptr %45, i32 %len.0
  %sub = sub i32 %43, %len.0
  %46 = call ptr @memset(ptr %add.ptr77, i32 0, i32 %sub)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71.if.end79_crit_edge
  tail call void @complete(ptr noundef %done) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %land.lhs.true.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpi_send_message(i8 noundef zeroext %idx, ptr noundef %tx_buf, i32 noundef %tx_len, ptr noundef %rx_buf, i32 noundef %rx_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scpi_info, align 4
  %commands = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %commands, align 4
  %idxprom = zext i8 %idx to i32
  %arrayidx = getelementptr i32, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_priority = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 5
  %conv5 = lshr i32 %4, 5
  %div3.i = and i32 %conv5, 7
  %arrayidx.i = getelementptr i32, ptr %cmd_priority, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %4, 31
  %9 = lshr i32 %8, %and.i
  %10 = and i32 %9, 1
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %next_chan = getelementptr inbounds %struct.scpi_drvinfo, ptr %0, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_chan, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %next_chan, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_chan, ptr %next_chan, i32 1, ptr elementtype(i32) %next_chan) #13, !srcloc !124
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !125
  %12 = load ptr, ptr @scpi_info, align 4
  %num_chans = getelementptr inbounds %struct.scpi_drvinfo, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_chans, align 4
  %rem = srem i32 %asmresult.i.i.i.i, %14
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %chan.0.in = phi i32 [ %10, %if.then4 ], [ %rem, %if.else ]
  %15 = load ptr, ptr @scpi_info, align 4
  %channels = getelementptr inbounds %struct.scpi_drvinfo, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels, align 4
  %conv11 = and i32 %chan.0.in, 255
  %add.ptr = getelementptr %struct.scpi_chan, ptr %17, i32 %conv11
  %xfers_lock.i = getelementptr %struct.scpi_chan, ptr %17, i32 %conv11, i32 8
  tail call void @mutex_lock_nested(ptr noundef %xfers_lock.i, i32 noundef 0) #13
  %xfers_list.i = getelementptr %struct.scpi_chan, ptr %17, i32 %conv11, i32 5
  %18 = ptrtoint ptr %xfers_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %xfers_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %xfers_list.i
  br i1 %cmp.i.not.i, label %get_scpi_xfer.exit.thread, label %if.end.i

get_scpi_xfer.exit.thread:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %xfers_lock.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %add.ptr.i = getelementptr i8, ptr %19, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.get_scpi_xfer.exit_crit_edge

if.end.i.get_scpi_xfer.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_scpi_xfer.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %get_scpi_xfer.exit

get_scpi_xfer.exit:                               ; preds = %if.end.i.i.i, %if.end.i.get_scpi_xfer.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %xfers_lock.i) #13
  %tobool13.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool13.not, label %get_scpi_xfer.exit.cleanup_crit_edge, label %if.end15

get_scpi_xfer.exit.cleanup_crit_edge:             ; preds = %get_scpi_xfer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %get_scpi_xfer.exit
  %28 = load ptr, ptr @scpi_info, align 4
  %is_legacy16 = getelementptr inbounds %struct.scpi_drvinfo, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %is_legacy16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_legacy16, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  br i1 %tobool17.not, label %if.else63, label %do.end57

do.end57:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %and36 = and i32 %4, 127
  %shl59 = shl i32 %tx_len, 20
  %and60 = and i32 %shl59, 535822336
  %or = or i32 %and36, %and60
  %cmd61 = getelementptr i8, ptr %19, i32 -24
  %31 = ptrtoint ptr %cmd61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %cmd61, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %add.ptr.i, align 4
  br label %if.end117

if.else63:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %add.ptr.i, align 4
  %and90 = and i32 %4, 127
  %shl113 = shl i32 %tx_len, 16
  %and114 = and i32 %shl113, 33488896
  %or115 = or i32 %and90, %and114
  %cmd116 = getelementptr i8, ptr %19, i32 -24
  %34 = ptrtoint ptr %cmd116 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or115, ptr %cmd116, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.else63, %do.end57
  %tx_buf118 = getelementptr i8, ptr %19, i32 -16
  %35 = ptrtoint ptr %tx_buf118 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tx_buf, ptr %tx_buf118, align 4
  %tx_len119 = getelementptr i8, ptr %19, i32 -8
  %36 = ptrtoint ptr %tx_len119 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tx_len, ptr %tx_len119, align 4
  %rx_buf120 = getelementptr i8, ptr %19, i32 -12
  %37 = ptrtoint ptr %rx_buf120 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rx_buf, ptr %rx_buf120, align 4
  %rx_len121 = getelementptr i8, ptr %19, i32 -4
  %38 = ptrtoint ptr %rx_len121 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rx_len, ptr %rx_len121, align 4
  %done = getelementptr i8, ptr %19, i32 8
  %39 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %done, align 4
  %chan122 = getelementptr %struct.scpi_chan, ptr %17, i32 %conv11, i32 1
  %40 = ptrtoint ptr %chan122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan122, align 4
  %call123 = tail call i32 @mbox_send_message(ptr noundef %41, ptr noundef nonnull %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  %tobool126.not = icmp eq ptr %rx_buf, null
  %or.cond195 = or i1 %tobool126.not, %cmp124
  br i1 %or.cond195, label %if.end117.out_crit_edge, label %if.end128

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end128:                                        ; preds = %if.end117
  %call131 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end128.out_crit_edge, label %if.else134

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %status = getelementptr i8, ptr %19, i32 -20
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.else134, %if.end128.out_crit_edge, %if.end117.out_crit_edge
  %ret.0 = phi i32 [ %call123, %if.end117.out_crit_edge ], [ %43, %if.else134 ], [ -110, %if.end128.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp136 = icmp sgt i32 %ret.0, -1
  %or.cond196 = or i1 %tobool126.not, %cmp136
  br i1 %or.cond196, label %out.if.end141_crit_edge, label %if.then139

out.if.end141_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then139:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %cmd140 = getelementptr i8, ptr %19, i32 -24
  %44 = ptrtoint ptr %cmd140 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd140, align 4
  tail call fastcc void @scpi_process_cmd(ptr noundef %add.ptr, i32 noundef %45)
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %out.if.end141_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %xfers_lock.i, i32 noundef 0) #13
  %prev.i.i199 = getelementptr %struct.scpi_chan, ptr %17, i32 %conv11, i32 5, i32 1
  %46 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i199, align 4
  %call.i.i.i200 = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %47, ptr noundef %xfers_list.i) #13
  br i1 %call.i.i.i200, label %if.end.i.i.i201, label %if.end141.put_scpi_xfer.exit_crit_edge

if.end141.put_scpi_xfer.exit_crit_edge:           ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_scpi_xfer.exit

if.end.i.i.i201:                                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %19, ptr %prev.i.i199, align 4
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %xfers_list.i, ptr %19, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %19, ptr %47, align 4
  br label %put_scpi_xfer.exit

put_scpi_xfer.exit:                               ; preds = %if.end.i.i.i201, %if.end141.put_scpi_xfer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %xfers_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp142 = icmp sgt i32 %ret.0, 0
  br i1 %cmp142, label %cond.true144, label %put_scpi_xfer.exit.cleanup_crit_edge

put_scpi_xfer.exit.cleanup_crit_edge:             ; preds = %put_scpi_xfer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true144:                                     ; preds = %put_scpi_xfer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %ret.0)
  %cmp1.i = icmp ult i32 %ret.0, 13
  br i1 %cmp1.i, label %if.then.i, label %cond.true144.cleanup_crit_edge

cond.true144.cleanup_crit_edge:                   ; preds = %cond.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %cond.true144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i202 = getelementptr [13 x i32], ptr @scpi_linux_errmap, i32 0, i32 %ret.0
  %52 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i202, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %cond.true144.cleanup_crit_edge, %put_scpi_xfer.exit.cleanup_crit_edge, %get_scpi_xfer.exit.cleanup_crit_edge, %get_scpi_xfer.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %get_scpi_xfer.exit.cleanup_crit_edge ], [ %ret.0, %put_scpi_xfer.exit.cleanup_crit_edge ], [ -12, %get_scpi_xfer.exit.thread ], [ %53, %if.then.i ], [ -5, %cond.true144.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scpi_get_version() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scpi_info, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clk_get_range(i16 noundef zeroext %clk_id, ptr nocapture noundef writeonly %min, ptr nocapture noundef writeonly %max) #3 align 64 {
entry:
  %clk = alloca %struct.clk_get_info, align 2
  %le_clk_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk) #13
  %0 = call ptr @memset(ptr %clk, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_clk_id) #13
  %1 = tail call i16 @llvm.bswap.i16(i16 %clk_id)
  %2 = ptrtoint ptr %le_clk_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %le_clk_id, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 1, ptr noundef nonnull %le_clk_id, i32 noundef 2, ptr noundef nonnull %clk, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = getelementptr inbounds %struct.clk_get_info, ptr %clk, i32 0, i32 3
  %4 = getelementptr inbounds %struct.clk_get_info, ptr %clk, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 2
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %min, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 2
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_clk_id) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clk_get_val(i16 noundef zeroext %clk_id) #3 align 64 {
entry:
  %rate = alloca i32, align 4
  %le_clk_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #13
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_clk_id) #13
  %1 = tail call i16 @llvm.bswap.i16(i16 %clk_id)
  %2 = ptrtoint ptr %le_clk_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %le_clk_id, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 2, ptr noundef nonnull %le_clk_id, i32 noundef 2, ptr noundef nonnull %rate, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_clk_id) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clk_set_val(i16 noundef zeroext %clk_id, i32 noundef %rate) #3 align 64 {
entry:
  %stat = alloca i32, align 4
  %clk = alloca %struct.clk_set_value, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #13
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk) #13
  %1 = getelementptr inbounds %struct.clk_set_value, ptr %clk, i32 0, i32 1
  %2 = getelementptr inbounds %struct.clk_set_value, ptr %clk, i32 0, i32 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %clk_id)
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %clk, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %1, align 2
  %6 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %2, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 3, ptr noundef nonnull %clk, i32 noundef 8, ptr noundef nonnull %stat, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_get_idx(i8 noundef zeroext %domain) #3 align 64 {
entry:
  %domain.addr = alloca i8, align 1
  %dvfs_idx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %domain, ptr %domain.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dvfs_idx) #13
  %1 = ptrtoint ptr %dvfs_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dvfs_idx, align 1, !annotation !122
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 4, ptr noundef nonnull %domain.addr, i32 noundef 1, ptr noundef nonnull %dvfs_idx, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dvfs_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dvfs_idx, align 1
  %conv = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dvfs_idx) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_set_idx(i8 noundef zeroext %domain, i8 noundef zeroext %index) #3 align 64 {
entry:
  %stat = alloca i32, align 4
  %dvfs = alloca %struct.dvfs_set, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #13
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dvfs) #13
  %1 = getelementptr inbounds %struct.dvfs_set, ptr %dvfs, i32 0, i32 1
  %2 = ptrtoint ptr %dvfs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %domain, ptr %dvfs, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %index, ptr %1, align 1
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 5, ptr noundef nonnull %dvfs, i32 noundef 2, ptr noundef nonnull %stat, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dvfs) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scpi_dvfs_get_info(i8 noundef zeroext %domain) #3 align 64 {
entry:
  %domain.addr = alloca i8, align 1
  %buf = alloca %struct.dvfs_info, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %domain, ptr %domain.addr, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %buf) #13
  %1 = call ptr @memset(ptr %buf, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %domain)
  %cmp = icmp ugt i8 %domain, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %domain to i32
  %2 = load ptr, ptr @scpi_info, align 4
  %arrayidx = getelementptr %struct.scpi_drvinfo, ptr %2, i32 0, i32 9, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @scpi_send_message(i8 noundef zeroext 6, ptr noundef nonnull %domain.addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #17
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %opp_count = getelementptr inbounds %struct.dvfs_info, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %opp_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %opp_count, align 1
  %conv17 = zext i8 %8 to i32
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv17, ptr %call7.i, align 8
  %latency = getelementptr inbounds %struct.dvfs_info, ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %latency to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %latency, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv18 = zext i16 %12 to i32
  %mul = mul nuw nsw i32 %conv18, 1000
  %latency19 = getelementptr inbounds %struct.scpi_dvfs_info, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %latency19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %latency19, align 4
  %14 = shl nuw nsw i32 %conv17, 3
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #18
  %opps = getelementptr inbounds %struct.scpi_dvfs_info, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %opps to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %opps, align 8
  %tobool23.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool23.not, label %if.then24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end16
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2968.not = icmp eq i32 %17, 0
  br i1 %cmp2968.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %opp.069 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.dvfs_info, ptr %buf, i32 0, i32 3, i32 %i.070
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx32, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %opp.069 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %opp.069, align 1
  %m_volt = getelementptr %struct.dvfs_info, ptr %buf, i32 0, i32 3, i32 %i.070, i32 1
  %22 = ptrtoint ptr %m_volt to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %m_volt, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %m_volt36 = getelementptr inbounds %struct.scpi_opp, ptr %opp.069, i32 0, i32 1
  %25 = ptrtoint ptr %m_volt36 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %m_volt36, align 1
  %inc = add nuw i32 %i.070, 1
  %incdec.ptr = getelementptr %struct.scpi_opp, ptr %opp.069, i32 1
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i, align 8
  %cmp29 = icmp ult i32 %inc, %27
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %27, %for.body.for.end_crit_edge ]
  call void @sort(ptr noundef nonnull %call8.i.i, i32 noundef %.lcssa, i32 noundef 8, ptr noundef nonnull @opp_cmp_func, ptr noundef null) #13
  %28 = load ptr, ptr @scpi_info, align 4
  %29 = ptrtoint ptr %domain.addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %domain.addr, align 1
  %idxprom40 = zext i8 %30 to i32
  %arrayidx41 = getelementptr %struct.scpi_drvinfo, ptr %28, i32 0, i32 9, i32 %idxprom40
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %arrayidx41, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then24, %if.end11.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then9 ], [ %call7.i, %for.end ], [ inttoptr (i32 -12 to ptr), %if.then24 ], [ %4, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %buf) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dev_domain_id(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #13
  %0 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_get_transition_latency(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %clkspec.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  %0 = call ptr @memset(ptr %clkspec.i.i, i32 255, i32 72)
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %scpi_dev_domain_id.exit.i, label %scpi_dev_domain_id.exit.thread.i

scpi_dev_domain_id.exit.thread.i:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  br label %if.then.i

scpi_dev_domain_id.exit.i:                        ; preds = %entry
  %args.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %scpi_dev_domain_id.exit.i.if.then.i_crit_edge, label %if.end.i

scpi_dev_domain_id.exit.i.if.then.i_crit_edge:    ; preds = %scpi_dev_domain_id.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %scpi_dev_domain_id.exit.i.if.then.i_crit_edge, %scpi_dev_domain_id.exit.thread.i
  %retval.0.i7.i = phi i32 [ -22, %scpi_dev_domain_id.exit.thread.i ], [ %4, %scpi_dev_domain_id.exit.i.if.then.i_crit_edge ]
  %5 = inttoptr i32 %retval.0.i7.i to ptr
  br label %scpi_dvfs_info.exit

if.end.i:                                         ; preds = %scpi_dev_domain_id.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %4 to i8
  %call2.i = call ptr @scpi_dvfs_get_info(i8 noundef zeroext %conv.i) #13
  br label %scpi_dvfs_info.exit

scpi_dvfs_info.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call2.i, %if.end.i ]
  %cmp.i5 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5, label %if.then, label %if.end

if.then:                                          ; preds = %scpi_dvfs_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %scpi_dvfs_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %latency = getelementptr inbounds %struct.scpi_dvfs_info, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %latency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_add_opps_to_device(ptr noundef %dev) #3 align 64 {
entry:
  %clkspec.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  %0 = call ptr @memset(ptr %clkspec.i.i, i32 255, i32 72)
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %scpi_dev_domain_id.exit.i, label %scpi_dev_domain_id.exit.thread.i

scpi_dev_domain_id.exit.thread.i:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  br label %if.then.i

scpi_dev_domain_id.exit.i:                        ; preds = %entry
  %args.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %scpi_dev_domain_id.exit.i.if.then.i_crit_edge, label %if.end.i

scpi_dev_domain_id.exit.i.if.then.i_crit_edge:    ; preds = %scpi_dev_domain_id.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %scpi_dev_domain_id.exit.i.if.then.i_crit_edge, %scpi_dev_domain_id.exit.thread.i
  %retval.0.i7.i = phi i32 [ -22, %scpi_dev_domain_id.exit.thread.i ], [ %4, %scpi_dev_domain_id.exit.i.if.then.i_crit_edge ]
  %5 = inttoptr i32 %retval.0.i7.i to ptr
  br label %scpi_dvfs_info.exit

if.end.i:                                         ; preds = %scpi_dev_domain_id.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %4 to i8
  %call2.i = call ptr @scpi_dvfs_get_info(i8 noundef zeroext %conv.i) #13
  br label %scpi_dvfs_info.exit

scpi_dvfs_info.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call2.i, %if.end.i ]
  %cmp.i33 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then, label %if.end

if.then:                                          ; preds = %scpi_dvfs_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %scpi_dvfs_info.exit
  %opps = getelementptr inbounds %struct.scpi_dvfs_info, ptr %retval.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %opps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %opps, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp37.not = icmp eq i32 %10, 0
  br i1 %cmp37.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %opp.039 = phi ptr [ %incdec.ptr14, %for.inc.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %idx.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %opp.039 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %opp.039, align 1
  %m_volt = getelementptr inbounds %struct.scpi_opp, ptr %opp.039, i32 0, i32 1
  %13 = ptrtoint ptr %m_volt to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %m_volt, align 1
  %mul = mul i32 %14, 1000
  %call6 = call i32 @dev_pm_opp_add(ptr noundef %dev, i32 noundef %12, i32 noundef %mul) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  %m_volt.le = getelementptr inbounds %struct.scpi_opp, ptr %opp.039, i32 0, i32 1
  %15 = ptrtoint ptr %opp.039 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %opp.039, align 1
  %17 = ptrtoint ptr %m_volt.le to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %m_volt.le, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %16, i32 noundef %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.038)
  %cmp1140 = icmp sgt i32 %idx.038, 0
  br i1 %cmp1140, label %do.end.while.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %opp.142 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %opp.039, %do.end.while.body_crit_edge ]
  %idx.141 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %idx.038, %do.end.while.body_crit_edge ]
  %dec = add nsw i32 %idx.141, -1
  %incdec.ptr = getelementptr %struct.scpi_opp, ptr %opp.142, i32 -1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %incdec.ptr, align 1
  call void @dev_pm_opp_remove(ptr noundef %dev, i32 noundef %20) #13
  %cmp11 = icmp ugt i32 %idx.141, 1
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.038, 1
  %incdec.ptr14 = getelementptr %struct.scpi_opp, ptr %opp.039, i32 1
  %21 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -5, %if.end.cleanup_crit_edge ], [ %call6, %do.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call6, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_sensor_get_capability(ptr nocapture noundef writeonly %sensors) #3 align 64 {
entry:
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #13
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cap, align 2, !annotation !122
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 7, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cap, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cap, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %sensors to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %sensors, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_sensor_get_info(i16 noundef zeroext %sensor_id, ptr nocapture noundef writeonly %info) #3 align 64 {
entry:
  %id = alloca i16, align 2
  %_info = alloca %struct._scpi_sensor_info, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #13
  %0 = tail call i16 @llvm.bswap.i16(i16 %sensor_id)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %id, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_info) #13
  %2 = call ptr @memset(ptr %_info, i32 255, i32 24)
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 8, ptr noundef nonnull %id, i32 noundef 2, ptr noundef nonnull %_info, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memcpy(ptr %info, ptr %_info, i32 24)
  %4 = ptrtoint ptr %_info to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %_info, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %info, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_info) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_sensor_get_value(i16 noundef zeroext %sensor, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  %id = alloca i16, align 2
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #13
  %0 = tail call i16 @llvm.bswap.i16(i16 %sensor)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %id, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #13
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %value, align 8, !annotation !122
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 9, ptr noundef nonnull %id, i32 noundef 2, ptr noundef nonnull %value, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @scpi_info, align 4
  %is_legacy = getelementptr inbounds %struct.scpi_drvinfo, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_legacy, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %8 = call i32 @llvm.bswap.i32(i32 %7) #13
  %conv = zext i32 %8 to i64
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %value, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i64 [ %11, %if.else ], [ %conv, %if.then2 ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %storemerge, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_device_get_power_state(i16 noundef zeroext %dev_id) #3 align 64 {
entry:
  %pstate = alloca i8, align 1
  %id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pstate) #13
  %0 = ptrtoint ptr %pstate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pstate, align 1, !annotation !122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #13
  %1 = tail call i16 @llvm.bswap.i16(i16 %dev_id)
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %id, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 11, ptr noundef nonnull %id, i32 noundef 2, ptr noundef nonnull %pstate, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %pstate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pstate, align 1
  %conv = zext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pstate) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_device_set_power_state(i16 noundef zeroext %dev_id, i8 noundef zeroext %pstate) #3 align 64 {
entry:
  %stat = alloca i32, align 4
  %dev_set = alloca %struct.dev_pstate_set, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #13
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dev_set) #13
  %1 = getelementptr inbounds %struct.dev_pstate_set, ptr %dev_set, i32 0, i32 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %dev_id)
  %3 = ptrtoint ptr %dev_set to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %dev_set, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %pstate, ptr %1, align 2
  %call = call fastcc i32 @scpi_send_message(i8 noundef zeroext 10, ptr noundef nonnull %dev_set, i32 noundef 3, ptr noundef nonnull %stat, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dev_set) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @opp_cmp_func(ptr nocapture noundef readonly %opp1, ptr nocapture noundef readonly %opp2) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %opp1, align 1
  %2 = ptrtoint ptr %opp2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %opp2, align 1
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %firmware_version = getelementptr inbounds %struct.scpi_drvinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmware_version, align 4
  %shr = lshr i32 %3, 24
  %and30 = lshr i32 %3, 16
  %shr31 = and i32 %and30, 255
  %and49 = and i32 %3, 65535
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %shr, i32 noundef %shr31, i32 noundef %and49)
  ret i32 %call51
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr = lshr i32 %3, 16
  %and30 = and i32 %3, 65535
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %shr, i32 noundef %and30)
  ret i32 %call32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !90, !92, !94, !95, !97, !99, !100, !102, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__ksymtab_get_scpi_ops, !1, !"__ksymtab_get_scpi_ops", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scpi.c", i32 804, i32 1}
!2 = !{ptr @__initcall__kmod_arm_scpi__265_1047_scpi_driver_init6, !3, !"__initcall__kmod_arm_scpi__265_1047_scpi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scpi.c", i32 1047, i32 1}
!4 = !{ptr @__exitcall_scpi_driver_exit, !3, !"__exitcall_scpi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author266, !6, !"__UNIQUE_ID_author266", i1 false, i1 false}
!6 = !{!"../drivers/firmware/arm_scpi.c", i32 1049, i32 1}
!7 = !{ptr @__UNIQUE_ID_description267, !8, !"__UNIQUE_ID_description267", i1 false, i1 false}
!8 = !{!"../drivers/firmware/arm_scpi.c", i32 1050, i32 1}
!9 = !{ptr @__UNIQUE_ID_file268, !10, !"__UNIQUE_ID_file268", i1 false, i1 false}
!10 = !{!"../drivers/firmware/arm_scpi.c", i32 1051, i32 1}
!11 = !{ptr @__UNIQUE_ID_license269, !10, !"__UNIQUE_ID_license269", i1 false, i1 false}
!12 = !{ptr @scpi_info, !13, !"scpi_info", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scpi.c", i32 327, i32 29}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/arm_scpi.c", i32 1040, i32 11}
!16 = !{ptr @scpi_driver, !17, !"scpi_driver", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scpi.c", i32 1038, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/arm_scpi.c", i32 924, i32 41}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scpi.c", i32 924, i32 51}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/arm_scpi.c", i32 926, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @scpi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @scpi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/firmware/arm_scpi.c", i32 944, i32 52}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/arm_scpi.c", i32 952, i32 4}
!34 = !{ptr @scpi_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @scpi_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firmware/arm_scpi.c", i32 959, i32 4}
!38 = !{ptr @scpi_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @scpi_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @scpi_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/firmware/arm_scpi.c", i32 973, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @scpi_probe.__key.16, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/firmware/arm_scpi.c", i32 974, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/firmware/arm_scpi.c", i32 983, i32 5}
!48 = !{ptr @scpi_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @scpi_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/firmware/arm_scpi.c", i32 1006, i32 3}
!52 = !{ptr @scpi_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @scpi_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/firmware/arm_scpi.c", i32 1012, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @scpi_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @scpi_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/firmware/arm_scpi.c", i32 1014, i32 3}
!61 = !{ptr @scpi_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @scpi_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @legacy_scpi_of_match, !64, !"legacy_scpi_of_match", i1 false, i1 false}
!64 = !{!"../drivers/firmware/arm_scpi.c", i32 897, i32 34}
!65 = !{ptr @shmem_of_match, !66, !"shmem_of_match", i1 false, i1 false}
!66 = !{!"../drivers/firmware/arm_scpi.c", i32 902, i32 34}
!67 = !{ptr @init_completion.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/completion.h", i32 87, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @scpi_std_commands, !71, !"scpi_std_commands", i1 false, i1 false}
!71 = !{!"../drivers/firmware/arm_scpi.c", i32 190, i32 12}
!72 = !{ptr @scpi_linux_errmap, !73, !"scpi_linux_errmap", i1 false, i1 false}
!73 = !{!"../drivers/firmware/arm_scpi.c", i32 329, i32 12}
!74 = !{ptr @scpi_ops, !75, !"scpi_ops", i1 false, i1 false}
!75 = !{!"../drivers/firmware/arm_scpi.c", i32 782, i32 24}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/firmware/arm_scpi.c", i32 658, i32 47}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/firmware/arm_scpi.c", i32 658, i32 57}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/firmware/arm_scpi.c", i32 700, i32 4}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @scpi_dvfs_add_opps_to_device._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @scpi_dvfs_add_opps_to_device._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @scpi_legacy_commands, !87, !"scpi_legacy_commands", i1 false, i1 false}
!87 = !{!"../drivers/firmware/arm_scpi.c", i32 205, i32 12}
!88 = distinct !{null, !89, !"legacy_hpriority_cmds", i1 false, i1 false}
!89 = !{!"../drivers/firmware/arm_scpi.c", i32 156, i32 12}
!90 = !{ptr @scpi_of_match, !91, !"scpi_of_match", i1 false, i1 false}
!91 = !{!"../drivers/firmware/arm_scpi.c", i32 1030, i32 34}
!92 = !{ptr @versions_groups, !93, !"versions_groups", i1 false, i1 false}
!93 = !{!"../drivers/firmware/arm_scpi.c", i32 852, i32 1}
!94 = !{ptr @versions_group, !93, !"versions_group", i1 false, i1 false}
!95 = !{ptr @versions_attrs, !96, !"versions_attrs", i1 false, i1 false}
!96 = !{!"../drivers/firmware/arm_scpi.c", i32 847, i32 26}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/firmware/arm_scpi.c", i32 845, i32 8}
!99 = !{ptr @dev_attr_firmware_version, !98, !"dev_attr_firmware_version", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/firmware/arm_scpi.c", i32 840, i32 22}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/firmware/arm_scpi.c", i32 833, i32 8}
!104 = !{ptr @dev_attr_protocol_version, !103, !"dev_attr_protocol_version", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/firmware/arm_scpi.c", i32 829, i32 22}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i8 0, i8 2}
!118 = !{i64 4823481}
!119 = !{i64 2152363830}
!120 = !{i64 2152365185}
!121 = !{i64 4823063}
!122 = !{!"auto-init"}
!123 = !{i64 2148294339}
!124 = !{i64 2148209648, i64 2148209680, i64 2148209709, i64 2148209743, i64 2148209774, i64 2148209797}
!125 = !{i64 2148294568}

; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/rcar-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/rcar-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rcar_sysc_info = type { ptr, ptr, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_pm_domains = type { %struct.genpd_onecell_data, [33 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rcar_sysc_area = type { ptr, i16, i8, i8, i32, i32 }
%struct.rcar_sysc_pd = type { %struct.generic_pm_domain, %struct.rcar_sysc_ch, i32, [0 x i8] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.67 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.67 = type { %struct.mutex }
%struct.rcar_sysc_ch = type { i16, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_rcar_sysc__235_446_rcar_sysc_pd_initearly = internal global ptr @rcar_sysc_pd_init, section ".initcallearly.init", align 4
@rcar_sysc_matches = internal constant [24 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774a1_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774b1_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774c0_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774e1_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7795_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77960_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77961-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77961_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77965_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77970-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77970_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77980_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77990_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77995-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77995_sysc_info }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas,cpg-mstp-clocks\00", [40 x i8] zeroinitializer }, align 32
@has_cpg_mstp = internal global { i8, [31 x i8] } zeroinitializer, align 32
@rcar_sysc_pd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%pOF: Cannot map regs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_sysc_pd_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/soc/renesas/rcar-sysc.c\00", [32 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_init._entry_ptr = internal global ptr @rcar_sysc_pd_init._entry, section ".printk_index", align 4
@rcar_sysc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcar_sysc_extmask_offs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcar_sysc_extmask_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcar_sysc_onecell_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcar_sysc_pd_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Failed to add PM subdomain %s to parent %u\0A\00", [50 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_init._entry_ptr.6 = internal global ptr @rcar_sysc_pd_init._entry.4, section ".printk_index", align 4
@r8a7742_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7743_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7745_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77470_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a774a1_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a774b1_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a774c0_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a774e1_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7779_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7790_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7791_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7792_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7794_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7795_sysc_info = external dso_local global %struct.rcar_sysc_info, align 4
@r8a77960_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77961_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77965_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77970_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77980_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77990_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77995_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcar_sysc_pd_setup.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_sysc\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_sysc_pd_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PM domain %s contains %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_setup.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCU\00", [28 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_setup.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.12, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Not touching %s\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.13, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s is already powered\0A\00", [37 x i8] zeroinitializer }, align 32
@simple_qos_governor = external dso_local global %struct.dev_power_governor, align 4
@rcar_sysc_pd_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to init PM domain %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_setup._entry_ptr = internal global ptr @rcar_sysc_pd_setup._entry, section ".printk_index", align 4
@rcar_sysc_pd_power_off.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_sysc_pd_power_off\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@rcar_sysc_pd_power_on.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.17, ptr @.str.3, ptr @.str.16, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_sysc_pd_power_on\00", [42 x i8] zeroinitializer }, align 32
@rcar_sysc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_sysc_power.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_sysc_power\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sysc power %s domain %d: %08x -> %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sysc_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 371, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"has_cpg_mstp\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 204, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 375, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"rcar_sysc_base\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 65, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"rcar_sysc_extmask_offs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 67, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"rcar_sysc_extmask_val\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 67, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"rcar_sysc_onecell_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 346, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 432, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 217, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 225, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 251, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 256, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 265, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 192, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 200, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"rcar_sysc_lock\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 160, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [35 x i8] c"../drivers/soc/renesas/rcar-sysc.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 66, i32 8 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_rcar_sysc__235_446_rcar_sysc_pd_initearly, ptr @rcar_sysc_pd_init._entry, ptr @rcar_sysc_pd_init._entry.4, ptr @rcar_sysc_pd_init._entry_ptr, ptr @rcar_sysc_pd_init._entry_ptr.6, ptr @rcar_sysc_pd_setup._entry, ptr @rcar_sysc_pd_setup._entry_ptr, ptr @.str, ptr @has_cpg_mstp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rcar_sysc_base, ptr @rcar_sysc_extmask_offs, ptr @rcar_sysc_extmask_val, ptr @rcar_sysc_onecell_data, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @rcar_sysc_lock, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @has_cpg_mstp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_pd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_extmask_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_extmask_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_onecell_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_pd_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_pd_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_sysc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_init() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !70
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_sysc_matches, ptr noundef nonnull %match) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = call i32 %6() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.out_put_crit_edge

if.then2.out_put_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #10
  %tobool10 = icmp ne ptr %call9, null
  %frombool = zext i1 %tobool10 to i8
  store i8 %frombool, ptr @has_cpg_mstp, align 1
  %call11 = call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #13
  br label %out_put

if.end15:                                         ; preds = %if.end8
  store ptr %call11, ptr @rcar_sysc_base, align 4
  %extmask_offs = getelementptr inbounds %struct.rcar_sysc_info, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %extmask_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extmask_offs, align 4
  store i32 %8, ptr @rcar_sysc_extmask_offs, align 4
  %extmask_val = getelementptr inbounds %struct.rcar_sysc_info, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %extmask_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extmask_val, align 4
  store i32 %10, ptr @rcar_sysc_extmask_val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 144) #14
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.out_put_crit_edge, label %if.end19

if.end15.out_put_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end19:                                         ; preds = %if.end15
  %domains20 = getelementptr inbounds %struct.rcar_pm_domains, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %domains20, ptr %call7.i.i, align 8
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33, ptr %num_domains, align 4
  store ptr %call7.i.i, ptr @rcar_sysc_onecell_data, align 4
  %num_areas = getelementptr inbounds %struct.rcar_sysc_info, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %num_areas to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_areas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp142.not = icmp eq i32 %15, 0
  br i1 %cmp142.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %areas = getelementptr inbounds %struct.rcar_sysc_info, ptr %4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %areas to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %areas, align 4
  %arrayidx = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %call28 = call i32 @strlen(ptr noundef nonnull %19) #15
  %add29 = add i32 %call28, 1361
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add29, i32 noundef 3520) #16
  %tobool31.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool31.not, label %if.end26.out_put_crit_edge, label %if.end33

if.end26.out_put_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end33:                                         ; preds = %if.end26
  %add = add i32 %call28, 1
  %name34 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %call9.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = call ptr @memcpy(ptr %name34, ptr %21, i32 %add)
  %name39 = getelementptr inbounds %struct.generic_pm_domain, ptr %call9.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name34, ptr %name39, align 8
  %chan_offs = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143, i32 1
  %24 = ptrtoint ptr %chan_offs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chan_offs, align 4
  %ch = getelementptr inbounds %struct.rcar_sysc_pd, ptr %call9.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ch, align 8
  %chan_bit = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143, i32 2
  %27 = ptrtoint ptr %chan_bit to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chan_bit, align 2
  %chan_bit42 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %call9.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %chan_bit42 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %chan_bit42, align 2
  %isr_bit = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143, i32 3
  %30 = ptrtoint ptr %isr_bit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %isr_bit, align 1
  %isr_bit44 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %call9.i.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %isr_bit44 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %isr_bit44, align 1
  %flags = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143, i32 5
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %flags45 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %call9.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags45, align 4
  %call46 = call fastcc i32 @rcar_sysc_pd_setup(ptr noundef nonnull %call9.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end33.out_put_crit_edge

if.end33.out_put_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end49:                                         ; preds = %if.end33
  %36 = ptrtoint ptr %isr_bit to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %isr_bit, align 1
  %idxprom = zext i8 %37 to i32
  %arrayidx53 = getelementptr %struct.rcar_pm_domains, ptr %call7.i.i, i32 0, i32 1, i32 %idxprom
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i, ptr %arrayidx53, align 4
  %parent = getelementptr %struct.rcar_sysc_area, ptr %17, i32 %i.0143, i32 4
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp54 = icmp slt i32 %40, 0
  br i1 %cmp54, label %if.end49.for.inc_crit_edge, label %if.end56

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end56:                                         ; preds = %if.end49
  %arrayidx59 = getelementptr %struct.rcar_pm_domains, ptr %call7.i.i, i32 0, i32 1, i32 %40
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx59, align 4
  %call61 = call i32 @pm_genpd_add_subdomain(ptr noundef %42, ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end56.for.inc_crit_edge, label %do.end66

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %parent, align 4
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %44, i32 noundef %46) #13
  br label %out_put

for.inc:                                          ; preds = %if.end56.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0143, 1
  %47 = ptrtoint ptr %num_areas to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_areas, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %call75 = call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %for.end.out_put_crit_edge

for.end.out_put_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %_flags.i) #10
  br label %out_put

out_put:                                          ; preds = %if.then77, %for.end.out_put_crit_edge, %do.end66, %if.end33.out_put_crit_edge, %if.end26.out_put_crit_edge, %if.end15.out_put_crit_edge, %do.end, %if.then2.out_put_crit_edge
  %error.3 = phi i32 [ %call4, %if.then2.out_put_crit_edge ], [ %call75, %for.end.out_put_crit_edge ], [ 0, %if.then77 ], [ -12, %do.end ], [ -12, %if.end15.out_put_crit_edge ], [ %call61, %do.end66 ], [ %call46, %if.end33.out_put_crit_edge ], [ -12, %if.end26.out_put_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #10
  br label %cleanup79

cleanup79:                                        ; preds = %out_put, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_put ], [ -19, %entry.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_sysc_nullify(ptr nocapture noundef %areas, i32 noundef %num_areas, i8 noundef zeroext %id) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_areas)
  %cmp10.not = icmp eq i32 %num_areas, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %isr_bit = getelementptr %struct.rcar_sysc_area, ptr %areas, i32 %i.011, i32 3
  %0 = ptrtoint ptr %isr_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %isr_bit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %id)
  %cmp2 = icmp eq i8 %1, %id
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.rcar_sysc_area, ptr %areas, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %num_areas
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_sysc_power_down_cpu(i32 noundef %cpu) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rcar_sysc_onecell_data, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.rcar_sysc_power_cpu.exit_crit_edge, label %for.cond.preheader.i

entry.rcar_sysc_power_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_domains.i = getelementptr inbounds %struct.genpd_onecell_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp19.not.i = icmp eq i32 %2, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %i.020.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %chan_bit.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %chan_bit.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chan_bit.i, align 2
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %cpu)
  %cmp5.not.i = icmp eq i32 %conv.i, %cpu
  br i1 %cmp5.not.i, label %if.end8.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 1
  %call11.i = tail call fastcc i32 @rcar_sysc_power(ptr noundef %ch.i, i1 noundef zeroext false) #10
  br label %rcar_sysc_power_cpu.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rcar_sysc_power_cpu.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

rcar_sysc_power_cpu.exit:                         ; preds = %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge, %if.end8.i, %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge, %entry.rcar_sysc_power_cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end8.i ], [ -19, %entry.rcar_sysc_power_cpu.exit_crit_edge ], [ -2, %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge ], [ -2, %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_sysc_power_up_cpu(i32 noundef %cpu) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rcar_sysc_onecell_data, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.rcar_sysc_power_cpu.exit_crit_edge, label %for.cond.preheader.i

entry.rcar_sysc_power_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_domains.i = getelementptr inbounds %struct.genpd_onecell_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp19.not.i = icmp eq i32 %2, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %i.020.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %chan_bit.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %chan_bit.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chan_bit.i, align 2
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %cpu)
  %cmp5.not.i = icmp eq i32 %conv.i, %cpu
  br i1 %cmp5.not.i, label %if.end8.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %6, i32 0, i32 1
  %call11.i = tail call fastcc i32 @rcar_sysc_power(ptr noundef %ch.i, i1 noundef zeroext true) #10
  br label %rcar_sysc_power_cpu.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rcar_sysc_power_cpu.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcar_sysc_power_cpu.exit

rcar_sysc_power_cpu.exit:                         ; preds = %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge, %if.end8.i, %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge, %entry.rcar_sysc_power_cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end8.i ], [ -19, %entry.rcar_sysc_power_cpu.exit_crit_edge ], [ -2, %for.cond.preheader.i.rcar_sysc_power_cpu.exit_crit_edge ], [ -2, %for.inc.i.rcar_sysc_power_cpu.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_sysc_pd_setup(ptr noundef %pd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name3 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %0 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name3, align 8
  %flags = getelementptr inbounds %struct.rcar_sysc_pd, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_setup, %if.then7)) #10
          to label %if.end40.sink.split [label %if.then7], !srcloc !71

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull @.str.10) #10
  br label %if.end40.sink.split

if.else:                                          ; preds = %entry
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else31, label %do.body13

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_setup, %if.then25)) #10
          to label %if.end40.sink.split [label %if.then25], !srcloc !71

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull @.str.11) #10
  br label %if.end40.sink.split

if.else31:                                        ; preds = %if.else
  %and33 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else31.if.end40_crit_edge, label %if.else31.if.end40.sink.split_crit_edge

if.else31.if.end40.sink.split_crit_edge:          ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.sink.split

if.else31.if.end40_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40.sink.split:                              ; preds = %if.else31.if.end40.sink.split_crit_edge, %if.then25, %do.body13, %if.then7, %do.body
  %flags8 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %4 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags8, align 4
  %or30 = or i32 %5, 4
  store i32 %or30, ptr %flags8, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else31.if.end40_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and42 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end40.if.end53_crit_edge

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %flags45 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %8 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags45, align 4
  %or46 = or i32 %9, 9
  store i32 %or46, ptr %flags45, align 4
  %10 = load i8, ptr @has_cpg_mstp, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool47.not = icmp eq i8 %10, 0
  %attach_dev50 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 30
  %cpg_mssr_attach_dev.cpg_mstp_attach_dev = select i1 %tobool47.not, ptr @cpg_mssr_attach_dev, ptr @cpg_mstp_attach_dev
  %cpg_mssr_detach_dev.cpg_mstp_detach_dev = select i1 %tobool47.not, ptr @cpg_mssr_detach_dev, ptr @cpg_mstp_detach_dev
  %11 = ptrtoint ptr %attach_dev50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cpg_mssr_attach_dev.cpg_mstp_attach_dev, ptr %attach_dev50, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 31
  %12 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cpg_mssr_detach_dev.cpg_mstp_detach_dev, ptr %detach_dev, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.end40.if.end53_crit_edge
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 18
  %13 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rcar_sysc_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 19
  %14 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rcar_sysc_pd_power_on, ptr %power_on, align 4
  %and55 = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end75, label %do.body58

do.body58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_setup, %if.then70)) #10
          to label %finalize [label %if.then70], !srcloc !71

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, ptr noundef %16) #10
  br label %finalize

if.end75:                                         ; preds = %if.end53
  %ch = getelementptr inbounds %struct.rcar_sysc_pd, ptr %pd, i32 0, i32 1
  %17 = load ptr, ptr @rcar_sysc_base, align 4
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ch, align 2
  %conv.i = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !73
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %chan_bit.i = getelementptr inbounds %struct.rcar_sysc_pd, ptr %pd, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %chan_bit.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chan_bit.i, align 2
  %conv2.i = zext i8 %23 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %and.i = and i32 %shl.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %do.body78, label %if.end95

do.body78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_setup, %if.then90)) #10
          to label %finalize [label %if.then90], !srcloc !71

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, ptr noundef %25) #10
  br label %finalize

if.end95:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %call97 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %ch, i1 noundef zeroext true)
  br label %finalize

finalize:                                         ; preds = %if.end95, %if.then90, %do.body78, %if.then70, %do.body58
  %call98 = tail call i32 @pm_genpd_init(ptr noundef %pd, ptr noundef nonnull @simple_qos_governor, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %finalize.if.end106_crit_edge, label %do.end103

finalize.if.end106_crit_edge:                     ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end103:                                        ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #12
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %call98) #13
  br label %if.end106

if.end106:                                        ; preds = %do.end103, %finalize.if.end106_crit_edge
  ret i32 %call98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mstp_attach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_detach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mssr_attach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mssr_detach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_power_off(ptr nocapture noundef readonly %genpd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_power_off.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_power_off, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_power_off.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ch = getelementptr inbounds %struct.rcar_sysc_pd, ptr %genpd, i32 0, i32 1
  %call4 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %ch, i1 noundef zeroext false)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_power_on(ptr nocapture noundef readonly %genpd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_pd_power_on.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_pd_power_on, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_pd_power_on.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ch = getelementptr inbounds %struct.rcar_sysc_pd, ptr %genpd, i32 0, i32 1
  %call4 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %ch, i1 noundef zeroext true)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_sysc_power(ptr nocapture noundef readonly %sysc_ch, i1 noundef zeroext %on) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_bit = getelementptr inbounds %struct.rcar_sysc_ch, ptr %sysc_ch, i32 0, i32 2
  %0 = ptrtoint ptr %isr_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %isr_bit, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %chan_bit = getelementptr inbounds %struct.rcar_sysc_ch, ptr %sysc_ch, i32 0, i32 1
  %2 = ptrtoint ptr %chan_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chan_bit, align 2
  %conv1 = zext i8 %3 to i32
  %shl2 = shl nuw i32 1, %conv1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcar_sysc_lock) #10
  %4 = load i32, ptr @rcar_sysc_extmask_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load ptr, ptr @rcar_sysc_base, align 4
  %6 = load i32, ptr @rcar_sysc_extmask_offs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #10, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !73
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %or = or i32 %10, %shl
  %11 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #10, !srcloc !76
  %13 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !73
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %or13 = or i32 %15, %shl
  %16 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or13) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %17) #10, !srcloc !76
  %18 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %19) #10, !srcloc !76
  %..i = select i1 %on, i32 12, i32 4
  %.47.i = zext i1 %on to i32
  %shl.i = shl nuw nsw i32 1, %.47.i
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end
  %k.0126 = phi i32 [ 0, %if.end ], [ %inc, %if.end29.for.body_crit_edge ]
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000
  %20 = load ptr, ptr @rcar_sysc_base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !73
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  %and51.i = and i32 %22, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool4.not52.i = icmp eq i32 %and51.i, 0
  br i1 %tobool4.not52.i, label %for.body.land.lhs.true.i_crit_edge, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %call8.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call8.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %24 = load ptr, ptr @rcar_sysc_base, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !73
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  %and.i = and i32 %26, %shl.i
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.if.end22_crit_edge

cond.false.i.if.end22_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %27 = load ptr, ptr @rcar_sysc_base, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !73
  %29 = lshr i32 %28, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %.pre.i = and i32 %29, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool28.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool28.not.i, label %for.end.i.out_crit_edge, label %for.end.i.if.end22_crit_edge

for.end.i.if.end22_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22:                                         ; preds = %for.end.i.if.end22_crit_edge, %cond.false.i.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %30 = ptrtoint ptr %chan_bit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %chan_bit, align 2
  %conv.i = zext i8 %31 to i32
  %shl32.i = shl nuw i32 1, %conv.i
  %32 = load ptr, ptr @rcar_sysc_base, align 4
  %33 = ptrtoint ptr %sysc_ch to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sysc_ch, align 2
  %conv33.i = zext i16 %34 to i32
  %add.ptr34.i = getelementptr i8, ptr %32, i32 %..i
  %add.ptr35.i = getelementptr i8, ptr %add.ptr34.i, i32 %conv33.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %shl32.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %35) #10, !srcloc !76
  %36 = load ptr, ptr @rcar_sysc_base, align 4
  %37 = ptrtoint ptr %sysc_ch to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sysc_ch, align 2
  %conv23 = zext i16 %38 to i32
  %add.ptr24 = getelementptr i8, ptr %36, i32 20
  %add.ptr25 = getelementptr i8, ptr %add.ptr24, i32 %conv23
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !73
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %and = and i32 %40, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.end, label %if.end29

if.end29:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %k.0126, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end29.out_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %k.0126)
  %cmp30 = icmp eq i32 %k.0126, 100
  br i1 %cmp30, label %for.end.out_crit_edge, label %if.end33

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end33:                                         ; preds = %for.end
  %call34 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call34, 1000000
  %42 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr37127 = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37127) #10, !srcloc !73
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %and41128 = and i32 %44, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41128)
  %tobool42.not129 = icmp eq i32 %and41128, 0
  br i1 %tobool42.not129, label %if.end33.land.lhs.true_crit_edge, label %if.end33.for.end66.thread_crit_edge

if.end33.for.end66.thread_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66.thread

if.end33.land.lhs.true_crit_edge:                 ; preds = %if.end33
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end33.land.lhs.true_crit_edge
  %call46 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call46, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call46, %add.i
  br i1 %cmp3.i, label %for.end66, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #10
  %46 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr37 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !73
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %and41 = and i32 %48, %shl
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end66.thread_crit_edge

cond.false.for.end66.thread_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66.thread

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.end66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %49 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr53 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #10, !srcloc !73
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %.pre = and i32 %51, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool69.not = icmp eq i32 %.pre, 0
  %spec.select = select i1 %tobool69.not, i32 -5, i32 0
  br label %for.end66.thread

for.end66.thread:                                 ; preds = %for.end66, %cond.false.for.end66.thread_crit_edge, %if.end33.for.end66.thread_crit_edge
  %52 = phi i32 [ 0, %if.end33.for.end66.thread_crit_edge ], [ %spec.select, %for.end66 ], [ 0, %cond.false.for.end66.thread_crit_edge ]
  %53 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr73 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %19) #10, !srcloc !76
  br label %out

out:                                              ; preds = %for.end66.thread, %for.end.out_crit_edge, %if.end29.out_crit_edge, %for.end.i.out_crit_edge
  %ret.0 = phi i32 [ %52, %for.end66.thread ], [ -5, %for.end.out_crit_edge ], [ -5, %if.end29.out_crit_edge ], [ -11, %for.end.i.out_crit_edge ]
  %54 = load i32, ptr @rcar_sysc_extmask_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool74.not = icmp eq i32 %54, 0
  br i1 %tobool74.not, label %out.if.end77_crit_edge, label %if.then75

out.if.end77_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then75:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %55 = load ptr, ptr @rcar_sysc_base, align 4
  %56 = load i32, ptr @rcar_sysc_extmask_offs, align 4
  %add.ptr76 = getelementptr i8, ptr %55, i32 %56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 0) #10, !srcloc !76
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %out.if.end77_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcar_sysc_lock, i32 noundef %call5) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_sysc_power.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_sysc_power, %if.then85)) #10
          to label %do.end95 [label %if.then85], !srcloc !71

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %cond88 = select i1 %on, ptr @.str.20, ptr @.str.21
  %57 = ptrtoint ptr %isr_bit to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %isr_bit, align 1
  %conv90 = zext i8 %58 to i32
  %59 = load ptr, ptr @rcar_sysc_base, align 4
  %add.ptr91 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #10, !srcloc !73
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_sysc_power.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond88, i32 noundef %conv90, i32 noundef %61, i32 noundef %ret.0) #10
  br label %do.end95

do.end95:                                         ; preds = %if.then85, %if.end77
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_rcar_sysc__235_446_rcar_sysc_pd_initearly, !1, !"__initcall__kmod_rcar_sysc__235_446_rcar_sysc_pd_initearly", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 446, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 371, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 375, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rcar_sysc_pd_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rcar_sysc_pd_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 432, i32 4}
!12 = !{ptr @rcar_sysc_pd_init._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rcar_sysc_pd_init._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @rcar_sysc_matches, !15, !"rcar_sysc_matches", i1 false, i1 false}
!15 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 270, i32 34}
!16 = !{ptr @has_cpg_mstp, !17, !"has_cpg_mstp", i1 false, i1 false}
!17 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 204, i32 13}
!18 = !{ptr @rcar_sysc_base, !19, !"rcar_sysc_base", i1 false, i1 false}
!19 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 65, i32 22}
!20 = !{ptr @rcar_sysc_extmask_offs, !21, !"rcar_sysc_extmask_offs", i1 false, i1 false}
!21 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 67, i32 12}
!22 = !{ptr @rcar_sysc_extmask_val, !23, !"rcar_sysc_extmask_val", i1 false, i1 false}
!23 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 67, i32 36}
!24 = !{ptr @rcar_sysc_onecell_data, !25, !"rcar_sysc_onecell_data", i1 false, i1 false}
!25 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 346, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 217, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug231, !27, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!33 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 225, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 251, i32 3}
!37 = !{ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug233, !36, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 256, i32 3}
!40 = !{ptr @rcar_sysc_pd_setup.__UNIQUE_ID_ddebug234, !39, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 265, i32 3}
!43 = !{ptr @rcar_sysc_pd_setup._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rcar_sysc_pd_setup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 192, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rcar_sysc_pd_power_off.__UNIQUE_ID_ddebug229, !46, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 200, i32 2}
!51 = !{ptr @rcar_sysc_pd_power_on.__UNIQUE_ID_ddebug230, !50, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 160, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rcar_sysc_power.__UNIQUE_ID_ddebug228, !53, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!56 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/renesas/rcar-sysc.c", i32 66, i32 8}
!60 = !{ptr @rcar_sysc_lock, !59, !"rcar_sysc_lock", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i64 2148768721, i64 2148768726, i64 2148768739, i64 2148768783, i64 2148768817, i64 2148768838}
!72 = !{i8 0, i8 2}
!73 = !{i64 5988365}
!74 = !{i64 2153521224}
!75 = !{i64 2153522579}
!76 = !{i64 5987947}
!77 = !{i64 2153938080}
!78 = !{i64 2153938582}
!79 = !{i64 2153942426}
!80 = !{i64 2153942928}

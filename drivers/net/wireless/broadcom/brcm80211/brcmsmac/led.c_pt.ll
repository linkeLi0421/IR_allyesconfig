; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.brcms_info = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, ptr, %struct.tasklet_struct, i8, %struct.brcms_firmware, ptr, %struct.brcms_ucode, i8, %struct.brcms_led, %struct.led_classdev }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.brcms_firmware = type { i32, [4 x ptr], [4 x ptr], [4 x i32] }
%struct.brcms_ucode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.brcms_led = type { [32 x i8], ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.100, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.100 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.101, %struct.anon.102, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.101 = type { i8, i8, i8, i8 }
%struct.anon.102 = type { %struct.anon.103, %struct.anon.104 }
%struct.anon.103 = type { i8, i8, i8, i8, i8 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.129 = type { i64, i64, i8 }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"radio on\00", [23 x i8] zeroinitializer }, align 32
@brcms_led_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"requesting led GPIO failed (err: %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcms_led_register\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcms_led_register._entry_ptr = internal global ptr @brcms_led_register._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmsmac-%s:radio\00", [46 x i8] zeroinitializer }, align 32
@brcms_led_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot register led device: %s (err: %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@brcms_led_register._entry_ptr.9 = internal global ptr @brcms_led_register._entry.7, section ".printk_index", align 4
@brcms_led_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"registered radio enabled led device: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcms_led_register._entry_ptr.13 = internal global ptr @brcms_led_register._entry.10, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 86, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 91, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 97, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 106, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 111, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @brcms_led_register._entry, ptr @brcms_led_register._entry.10, ptr @brcms_led_register._entry.7, ptr @brcms_led_register._entry_ptr, ptr @brcms_led_register._entry_ptr.13, ptr @brcms_led_register._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_led_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_led_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_led_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_led_unregister(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 16, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %led_dev = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 16
  tail call void @led_classdev_unregister(ptr noundef %led_dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gpiod = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiochip_free_own_desc(ptr noundef nonnull %3) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_led_register(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_led1 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 15
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %gpio = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 12, i32 15
  %gpio0 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 34
  %gpio1 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 35
  %gpio2 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 36
  %gpio3 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 37
  %tobool.not = icmp eq ptr %gpio, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %lor.lhs.false

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup63

lor.lhs.false:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 12, i32 15, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %for.body.preheader, label %lor.lhs.false.cleanup63_crit_edge

lor.lhs.false.cleanup63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup63

for.body.preheader:                               ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gpio0, align 1
  %13 = and i8 %12, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp9 = icmp eq i8 %13, 3
  br i1 %cmp9, label %for.body.preheader.if.end21_crit_edge, label %for.inc

for.body.preheader.if.end21_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc:                                          ; preds = %for.body.preheader
  %14 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio1, align 1
  %16 = and i8 %15, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp9.1 = icmp eq i8 %16, 3
  br i1 %cmp9.1, label %for.inc.if.end21_crit_edge, label %for.inc.1

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.1:                                        ; preds = %for.inc
  %17 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gpio2, align 1
  %19 = and i8 %18, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp9.2 = icmp eq i8 %19, 3
  br i1 %cmp9.2, label %for.inc.1.if.end21_crit_edge, label %for.inc.2

for.inc.1.if.end21_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.2:                                        ; preds = %for.inc.1
  %20 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpio3, align 1
  %22 = and i8 %21, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp9.3 = icmp eq i8 %22, 3
  br i1 %cmp9.3, label %for.inc.2.if.end21_crit_edge, label %for.inc.2.cleanup63_crit_edge

for.inc.2.cleanup63_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup63

for.inc.2.if.end21_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end21:                                         ; preds = %for.inc.2.if.end21_crit_edge, %for.inc.1.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %for.body.preheader.if.end21_crit_edge
  %i.0108.lcssa = phi i32 [ 0, %for.body.preheader.if.end21_crit_edge ], [ 1, %for.inc.if.end21_crit_edge ], [ 2, %for.inc.1.if.end21_crit_edge ], [ 3, %for.inc.2.if.end21_crit_edge ]
  %.lcssa = phi i8 [ %12, %for.body.preheader.if.end21_crit_edge ], [ %15, %for.inc.if.end21_crit_edge ], [ %18, %for.inc.1.if.end21_crit_edge ], [ %21, %for.inc.2.if.end21_crit_edge ]
  %23 = lshr i8 %.lcssa, 7
  %and13.lobit.le = zext i8 %23 to i32
  %call22 = tail call ptr @gpiochip_request_own_desc(ptr noundef nonnull %gpio, i32 noundef %i.0108.lcssa, ptr noundef nonnull @.str, i32 noundef %and13.lobit.le, i32 noundef 3) #4
  %gpiod = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22, ptr %gpiod, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %call22 to i32
  %wiphy = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 12
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %25) #7
  br label %cleanup63

if.end28:                                         ; preds = %if.end21
  %wiphy30 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 12
  %28 = ptrtoint ptr %wiphy30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy30, align 4
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56, i32 3
  %30 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end28.wiphy_name.exit_crit_edge

if.end28.wiphy_name.exit_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end28.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %33, %if.end.i.i ], [ %31, %if.end28.wiphy_name.exit_crit_edge ]
  %call32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %radio_led1, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i)
  %led_dev = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 16
  %34 = ptrtoint ptr %led_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %radio_led1, ptr %led_dev, align 4
  %35 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wl, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ieee_hw, align 4
  %call.i = tail call ptr @__ieee80211_get_radio_led_name(ptr noundef %38) #4
  %default_trigger = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 16, i32 14
  %39 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %default_trigger, align 4
  %brightness_set = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 16, i32 5
  %40 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @brcms_led_brightness_set, ptr %brightness_set, align 4
  %41 = ptrtoint ptr %wiphy30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy30, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56, i32 1
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i, align 8
  %call.i104 = tail call i32 @led_classdev_register_ext(ptr noundef %44, ptr noundef %led_dev, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool44.not = icmp eq i32 %call.i104, 0
  %45 = ptrtoint ptr %wiphy30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy30, align 4
  %dev59 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  br i1 %tobool44.not, label %do.end57, label %do.end48

do.end48:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.8, ptr noundef %radio_led1, i32 noundef %call.i104) #7
  br label %cleanup63

do.end57:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59, ptr noundef nonnull @.str.11, ptr noundef %radio_led1) #7
  br label %cleanup63

cleanup63:                                        ; preds = %do.end57, %do.end48, %if.then25, %for.inc.2.cleanup63_crit_edge, %lor.lhs.false.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %25, %if.then25 ], [ %call.i104, %do.end48 ], [ 0, %do.end57 ], [ -19, %lor.lhs.false.cleanup63_crit_edge ], [ -19, %entry.cleanup63_crit_edge ], [ -19, %for.inc.2.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_led_brightness_set(ptr nocapture noundef readonly %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod.i = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.brcms_radio_led_ctrl.exit_crit_edge, label %if.end.i

entry.brcms_radio_led_ctrl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcms_radio_led_ctrl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool = icmp ne i32 %brightness, 0
  %..i = zext i1 %tobool to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %..i) #4
  br label %brcms_radio_led_ctrl.exit

brcms_radio_led_ctrl.exit:                        ; preds = %if.end.i, %entry.brcms_radio_led_ctrl.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c", i32 86, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c", i32 91, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcms_led_register._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @brcms_led_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c", i32 97, i32 4}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c", i32 106, i32 3}
!14 = !{ptr @brcms_led_register._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @brcms_led_register._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/led.c", i32 111, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @brcms_led_register._entry.10, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @brcms_led_register._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

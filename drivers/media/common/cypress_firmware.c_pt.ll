; ModuleID = '/llk/IR_all_yes/drivers/media/common/cypress_firmware.c_pt.bc'
source_filename = "../drivers/media/common/cypress_firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cypress_load_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_cypress_load_firmware\09\09\09\09"
module asm "\09.long\09__crc_cypress_load_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cypress_load_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22cypress_load_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_cypress_load_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.usb_cypress_controller = type { i8, ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hexline = type { i8, i32, i8, [255 x i8], i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@cypress = internal constant { [3 x %struct.usb_cypress_controller], [60 x i8] } { [3 x %struct.usb_cypress_controller] [%struct.usb_cypress_controller { i8 0, ptr @.str.12, i16 32658 }, %struct.usb_cypress_controller { i8 1, ptr @.str.13, i16 32658 }, %struct.usb_cypress_controller { i8 2, ptr @.str.14, i16 -6656 }], [60 x i8] zeroinitializer }, align 32
@cypress_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: CPU stop failed=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cypress_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/common/cypress_firmware.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cypress_load_firmware._entry_ptr = internal global ptr @cypress_load_firmware._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cypress_firmware\00", [47 x i8] zeroinitializer }, align 32
@cypress_load_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: error while transferring firmware (transferred size=%d, block size=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cypress_load_firmware._entry_ptr.8 = internal global ptr @cypress_load_firmware._entry.6, section ".printk_index", align 4
@cypress_load_firmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: CPU start failed=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@cypress_load_firmware._entry_ptr.11 = internal global ptr @cypress_load_firmware._entry.9, section ".printk_index", align 4
@__kstrtab_cypress_load_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_cypress_load_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_cypress_load_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cypress_load_firmware to i32), ptr @__kstrtab_cypress_load_firmware, ptr @__kstrtabns_cypress_load_firmware }, section "___ksymtab+cypress_load_firmware", align 4
@__UNIQUE_ID_author232 = internal constant [55 x i8] c"cypress_firmware.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [55 x i8] c"cypress_firmware.description=Cypress firmware download\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [60 x i8] c"cypress_firmware.file=drivers/media/common/cypress_firmware\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [29 x i8] c"cypress_firmware.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Cypress AN2135\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Cypress AN2235\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cypress FX2\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"cypress\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 25, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 86, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 104, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 116, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 26, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 27, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [43 x i8] c"../drivers/media/common/cypress_firmware.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 28, i32 34 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__ksymtab_cypress_load_firmware, ptr @cypress_load_firmware._entry, ptr @cypress_load_firmware._entry.6, ptr @cypress_load_firmware._entry.9, ptr @cypress_load_firmware._entry_ptr, ptr @cypress_load_firmware._entry_ptr.11, ptr @cypress_load_firmware._entry_ptr.8, ptr @cypress, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_load_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_load_firmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_load_firmware(ptr noundef %udev, ptr nocapture noundef readonly %fw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 268) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %data, align 1
  %cs_reg = getelementptr [3 x %struct.usb_cypress_controller], ptr @cypress, i32 0, i32 %type, i32 2
  %2 = ptrtoint ptr %cs_reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cs_reg, align 4
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %udev, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %3, i16 noundef zeroext 0, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 1
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 2
  %chk.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 4
  br label %for.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call1.i) #8
  br label %err_kfree

for.cond:                                         ; preds = %if.else19.for.cond_crit_edge, %for.cond.preheader
  %pos.0 = phi i32 [ %add40.i, %if.else19.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %pos.0
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %9)
  %cmp.not.i = icmp ult i32 %pos.0, %9
  br i1 %cmp.not.i, label %if.end.i, label %for.end

if.end.i:                                         ; preds = %for.cond
  %10 = call ptr @memset(ptr %call7.i, i32 0, i32 268)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call7.i, align 8
  %conv.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %add3.i = add nuw i32 %add.i, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %9)
  %cmp5.not.i = icmp ult i32 %add3.i, %9
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.err_kfree_crit_edge

if.end.i.err_kfree_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_kfree

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %15 to i32
  %arrayidx11.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %or.i76 = or i32 %shl.i, %conv10.i
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i76, ptr %addr.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13.i, align 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp16.i = icmp eq i8 %20, 4
  br i1 %cmp16.i, label %if.then18.i, label %if.end8.i.cypress_get_hexline.exit_crit_edge

if.end8.i.cypress_get_hexline.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cypress_get_hexline.exit

if.then18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx19.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %23 to i32
  %shl21.i = shl nuw i32 %conv20.i, 24
  %arrayidx22.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %25 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 16
  %or25.i = or i32 %shl21.i, %or.i76
  %or27.i = or i32 %or25.i, %shl24.i
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or27.i, ptr %addr.i, align 4
  br label %cypress_get_hexline.exit

cypress_get_hexline.exit:                         ; preds = %if.then18.i, %if.end8.i.cypress_get_hexline.exit_crit_edge
  %arrayidx30.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %27 = call ptr @memcpy(ptr %data, ptr %arrayidx30.i, i32 %conv.i)
  %arrayidx36.i = getelementptr i8, ptr %arrayidx.i, i32 %add.i
  %28 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36.i, align 1
  %30 = ptrtoint ptr %chk.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %chk.i, align 8
  %add39.i = add nuw i32 %pos.0, 5
  %add40.i = add nuw i32 %add39.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40.i)
  %cmp7 = icmp slt i32 %add40.i, 0
  br i1 %cmp7, label %cypress_get_hexline.exit.err_kfree_crit_edge, label %if.end12

cypress_get_hexline.exit.err_kfree_crit_edge:     ; preds = %cypress_get_hexline.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_kfree

if.end12:                                         ; preds = %cypress_get_hexline.exit
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 4
  %conv = trunc i32 %32 to i16
  %33 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call7.i, align 8
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %udev, align 8
  %shl.i.i77 = shl i32 %36, 8
  %or.i78 = or i32 %shl.i.i77, -2147483648
  %conv.i79 = zext i8 %34 to i16
  %call1.i80 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i78, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %data, i16 noundef zeroext %conv.i79, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %cmp16 = icmp slt i32 %call1.i80, 0
  br i1 %cmp16, label %if.end12.err_kfree_crit_edge, label %if.else19

if.end12.err_kfree_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_kfree

if.else19:                                        ; preds = %if.end12
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %call7.i, align 8
  %conv21 = zext i8 %38 to i32
  %cmp22.not = icmp eq i32 %call1.i80, %conv21
  br i1 %cmp22.not, label %if.else19.for.cond_crit_edge, label %do.end27

if.else19.for.cond_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

do.end27:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  %conv21.le = zext i8 %38 to i32
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %call1.i80, i32 noundef %conv21.le) #8
  br label %err_kfree

for.end:                                          ; preds = %for.cond
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %data, align 1
  %40 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %udev, align 8
  %shl.i.i81 = shl i32 %41, 8
  %or.i82 = or i32 %shl.i.i81, -2147483648
  %call1.i83 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i82, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %3, i16 noundef zeroext 0, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i83)
  %cmp40.not = icmp eq i32 %call1.i83, 1
  br i1 %cmp40.not, label %for.end.err_kfree_crit_edge, label %do.end45

for.end.err_kfree_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_kfree

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %call1.i83) #8
  br label %err_kfree

err_kfree:                                        ; preds = %do.end45, %for.end.err_kfree_crit_edge, %do.end27, %if.end12.err_kfree_crit_edge, %cypress_get_hexline.exit.err_kfree_crit_edge, %if.end.i.err_kfree_crit_edge, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %do.end45 ], [ -5, %do.end27 ], [ 0, %for.end.err_kfree_crit_edge ], [ -22, %if.end.i.err_kfree_crit_edge ], [ %call1.i80, %if.end12.err_kfree_crit_edge ], [ %add40.i, %cypress_get_hexline.exit.err_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/cypress_firmware.c", i32 86, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cypress_load_firmware._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cypress_load_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/common/cypress_firmware.c", i32 104, i32 4}
!11 = !{ptr @cypress_load_firmware._entry.6, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @cypress_load_firmware._entry_ptr.8, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/common/cypress_firmware.c", i32 116, i32 3}
!15 = !{ptr @cypress_load_firmware._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @cypress_load_firmware._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_cypress_load_firmware, !18, !"__ksymtab_cypress_load_firmware", i1 false, i1 false}
!18 = !{!"../drivers/media/common/cypress_firmware.c", i32 127, i32 1}
!19 = !{ptr @__UNIQUE_ID_author232, !20, !"__UNIQUE_ID_author232", i1 false, i1 false}
!20 = !{!"../drivers/media/common/cypress_firmware.c", i32 129, i32 1}
!21 = !{ptr @__UNIQUE_ID_description233, !22, !"__UNIQUE_ID_description233", i1 false, i1 false}
!22 = !{!"../drivers/media/common/cypress_firmware.c", i32 130, i32 1}
!23 = !{ptr @__UNIQUE_ID_file234, !24, !"__UNIQUE_ID_file234", i1 false, i1 false}
!24 = !{!"../drivers/media/common/cypress_firmware.c", i32 131, i32 1}
!25 = !{ptr @__UNIQUE_ID_license235, !24, !"__UNIQUE_ID_license235", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/cypress_firmware.c", i32 26, i32 34}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/common/cypress_firmware.c", i32 27, i32 34}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/common/cypress_firmware.c", i32 28, i32 34}
!32 = !{ptr @cypress, !33, !"cypress", i1 false, i1 false}
!33 = !{!"../drivers/media/common/cypress_firmware.c", i32 25, i32 44}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

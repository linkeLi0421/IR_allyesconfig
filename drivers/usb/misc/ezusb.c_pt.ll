; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/ezusb.c_pt.bc'
source_filename = "../drivers/usb/misc/ezusb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ezusb_fx1_set_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_ezusb_fx1_set_reset\09\09\09\09"
module asm "\09.long\09__crc_ezusb_fx1_set_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ezusb_fx1_set_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ezusb_fx1_set_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ezusb_fx1_set_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ezusb_fx1_ihex_firmware_download\22, \22a\22\09"
module asm "\09.weak\09__crc_ezusb_fx1_ihex_firmware_download\09\09\09\09"
module asm "\09.long\09__crc_ezusb_fx1_ihex_firmware_download\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ezusb_fx1_ihex_firmware_download:\09\09\09\09\09"
module asm "\09.asciz \09\22ezusb_fx1_ihex_firmware_download\22\09\09\09\09\09"
module asm "__kstrtabns_ezusb_fx1_ihex_firmware_download:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>

@__kstrtab_ezusb_fx1_set_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ezusb_fx1_set_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ezusb_fx1_set_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ezusb_fx1_set_reset to i32), ptr @__kstrtab_ezusb_fx1_set_reset, ptr @__kstrtabns_ezusb_fx1_set_reset }, section "___ksymtab_gpl+ezusb_fx1_set_reset", align 4
@__kstrtab_ezusb_fx1_ihex_firmware_download = external dso_local constant [0 x i8], align 1
@__kstrtabns_ezusb_fx1_ihex_firmware_download = external dso_local constant [0 x i8], align 1
@__ksymtab_ezusb_fx1_ihex_firmware_download = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ezusb_fx1_ihex_firmware_download to i32), ptr @__kstrtab_ezusb_fx1_ihex_firmware_download, ptr @__kstrtabns_ezusb_fx1_ihex_firmware_download }, section "___ksymtab_gpl+ezusb_fx1_ihex_firmware_download", align 4
@__UNIQUE_ID_file232 = internal constant [34 x i8] c"ezusb.file=drivers/usb/misc/ezusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [18 x i8] c"ezusb.license=GPL\00", section ".modinfo", align 1
@ezusb_set_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s-%d failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ezusb_set_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/ezusb.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ezusb_set_reset._entry_ptr = internal global ptr @ezusb_set_reset._entry, section ".printk_index", align 4
@ezusb_ihex_firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - request \22%s\22 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ezusb_ihex_firmware_download\00", [35 x i8] zeroinitializer }, align 32
@ezusb_ihex_firmware_download._entry_ptr = internal global ptr @ezusb_ihex_firmware_download._entry, section ".printk_index", align 4
@ezusb_ihex_firmware_download._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s - ezusb_writememory failed writing internal memory (%d %04X %p %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ezusb_ihex_firmware_download._entry_ptr.9 = internal global ptr @ezusb_ihex_firmware_download._entry.7, section ".printk_index", align 4
@ezusb_ihex_firmware_download._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s - ezusb_writememory failed writing external memory (%d %04X %p %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ezusb_ihex_firmware_download._entry_ptr.12 = internal global ptr @ezusb_ihex_firmware_download._entry.10, section ".printk_index", align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 47, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 68, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 85, i32 5 }
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/usb/misc/ezusb.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 105, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 76, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__ksymtab_ezusb_fx1_ihex_firmware_download, ptr @__ksymtab_ezusb_fx1_set_reset, ptr @ezusb_ihex_firmware_download._entry, ptr @ezusb_ihex_firmware_download._entry.10, ptr @ezusb_ihex_firmware_download._entry.7, ptr @ezusb_ihex_firmware_download._entry_ptr, ptr @ezusb_ihex_firmware_download._entry_ptr.12, ptr @ezusb_ihex_firmware_download._entry_ptr.9, ptr @ezusb_set_reset._entry, ptr @ezusb_set_reset._entry_ptr, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_set_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ihex_firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ihex_firmware_download._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ihex_firmware_download._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ezusb_fx1_set_reset(ptr noundef %dev, i8 noundef zeroext %reset_bit) #0 align 64 {
entry:
  %reset_bit.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_bit.addr.i)
  %0 = ptrtoint ptr %reset_bit.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reset_bit, ptr %reset_bit.addr.i, align 1
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %entry.do.end.i_crit_edge, label %ezusb_writememory.exit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

ezusb_writememory.exit.i:                         ; preds = %entry
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %reset_bit.addr.i, i16 noundef zeroext 1, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ezusb_writememory.exit.i.do.end.i_crit_edge, label %ezusb_writememory.exit.i.ezusb_set_reset.exit_crit_edge

ezusb_writememory.exit.i.ezusb_set_reset.exit_crit_edge: ; preds = %ezusb_writememory.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_set_reset.exit

ezusb_writememory.exit.i.do.end.i_crit_edge:      ; preds = %ezusb_writememory.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %ezusb_writememory.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %retval.0.i9.i = phi i32 [ %call.i.i, %ezusb_writememory.exit.i.do.end.i_crit_edge ], [ -19, %entry.do.end.i_crit_edge ]
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %reset_bit.addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reset_bit.addr.i, align 1
  %conv3.i = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv3.i, i32 noundef %retval.0.i9.i) #7
  br label %ezusb_set_reset.exit

ezusb_set_reset.exit:                             ; preds = %do.end.i, %ezusb_writememory.exit.i.ezusb_set_reset.exit_crit_edge
  %retval.0.i10.i = phi i32 [ %retval.0.i9.i, %do.end.i ], [ %call.i.i, %ezusb_writememory.exit.i.ezusb_set_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i)
  ret i32 %retval.0.i10.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ezusb_fx1_ihex_firmware_download(ptr noundef %dev, ptr noundef %firmware_path) #0 align 64 {
entry:
  %reset_bit.addr.i142.i = alloca i8, align 1
  %reset_bit.addr.i115.i = alloca i8, align 1
  %reset_bit.addr.i.i = alloca i8, align 1
  %lfw.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i.i) #4
  %0 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i.i, align 4, !annotation !45
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i.i, ptr noundef %firmware_path, ptr noundef %dev1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i.i:                                       ; preds = %entry
  %1 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lfw.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %sub.i.i.i = add i32 %6, -6
  %arrayidx.i.i.i = getelementptr i8, ptr %4, i32 %sub.i.i.i
  %cmp.not10.i.i.i = icmp ugt ptr %4, %arrayidx.i.i.i
  br i1 %cmp.not10.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %rec.011.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %4, %for.body.preheader.i.i.i ]
  %cmp2.i.i.i = icmp eq ptr %rec.011.i.i.i, %arrayidx.i.i.i
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %7 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i.i, label %if.end.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %len.i.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %len.i.i.i.i.i, align 1
  %add.i.i.i.i.i = add i16 %10, 6
  %conv.i.i.i.i = zext i16 %add.i.i.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, 131068
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rec.011.i.i.i, i32 %and.i.i.i.i
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.13, ptr noundef %firmware_path) #7
  %11 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lfw.i.i, align 4
  call void @release_firmware(ptr noundef %12) #4
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.i, %entry.do.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %firmware_path) #7
  br label %ezusb_ihex_firmware_download.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_bit.addr.i.i) #4
  %13 = ptrtoint ptr %reset_bit.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reset_bit.addr.i.i, align 1
  %tobool.not.i.i106.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i106.i, label %if.end.i.ezusb_set_reset.exit.thread.i_crit_edge, label %ezusb_writememory.exit.i.i

if.end.i.ezusb_set_reset.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_set_reset.exit.thread.i

ezusb_writememory.exit.i.i:                       ; preds = %if.end.i
  %call.i.i.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %reset_bit.addr.i.i, i16 noundef zeroext 1, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %ezusb_writememory.exit.i.i.ezusb_set_reset.exit.thread.i_crit_edge, label %if.end5.i

ezusb_writememory.exit.i.i.ezusb_set_reset.exit.thread.i_crit_edge: ; preds = %ezusb_writememory.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_set_reset.exit.thread.i

ezusb_set_reset.exit.thread.i:                    ; preds = %ezusb_writememory.exit.i.i.ezusb_set_reset.exit.thread.i_crit_edge, %if.end.i.ezusb_set_reset.exit.thread.i_crit_edge
  %retval.0.i9.i.i = phi i32 [ %call.i.i.i, %ezusb_writememory.exit.i.i.ezusb_set_reset.exit.thread.i_crit_edge ], [ -19, %if.end.i.ezusb_set_reset.exit.thread.i_crit_edge ]
  %14 = ptrtoint ptr %reset_bit.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reset_bit.addr.i.i, align 1
  %conv3.i.i = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv3.i.i, i32 noundef %retval.0.i9.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i.i) #4
  br label %ezusb_ihex_firmware_download.exit

if.end5.i:                                        ; preds = %ezusb_writememory.exit.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i.i) #4
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %tobool6.not175.i = icmp eq ptr %17, null
  br i1 %tobool6.not175.i, label %ezusb_writememory.exit.i119.critedge.i, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %record.0176.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.for.body.i_crit_edge ], [ %17, %if.end5.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %record.0176.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %record.0176.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6975, i32 %19)
  %cmp7.i = icmp ugt i32 %19, 6975
  br i1 %cmp7.i, label %ezusb_writememory.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

ezusb_writememory.exit.i:                         ; preds = %for.body.i
  %data11.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.0176.i, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.0176.i, i32 0, i32 1
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %len.i, align 1
  %conv.i.i = trunc i32 %19 to i16
  %call.i110.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -93, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %data11.i, i16 noundef zeroext %21, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %cmp14.i = icmp slt i32 %call.i110.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %ezusb_writememory.exit.i.for.inc.i_crit_edge

ezusb_writememory.exit.i.for.inc.i_crit_edge:     ; preds = %ezusb_writememory.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

do.end19.i:                                       ; preds = %ezusb_writememory.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %len.i.le = getelementptr inbounds %struct.ihex_binrec, ptr %record.0176.i, i32 0, i32 1
  %22 = ptrtoint ptr %record.0176.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %record.0176.i, align 1
  %24 = ptrtoint ptr %len.i.le to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %len.i.le, align 1
  %conv25.i = zext i16 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %call.i110.i, i32 noundef %23, ptr noundef %data11.i, i32 noundef %conv25.i) #7
  br label %ezusb_ihex_firmware_download.exit

for.inc.i:                                        ; preds = %ezusb_writememory.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.0176.i, i32 0, i32 1
  %26 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i113.i = add i16 %27, 6
  %conv.i.i.i = zext i16 %add.i.i.i113.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %record.0176.i, i32 %and.i.i.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i114.i = icmp eq i16 %29, 0
  %tobool6.not187.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool6.not.i = select i1 %tobool.not.i114.i, i1 true, i1 %tobool6.not187.i
  br i1 %tobool6.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_bit.addr.i115.i) #4
  br label %ezusb_writememory.exit.i119.i

ezusb_writememory.exit.i119.critedge.i:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_bit.addr.i115.i) #4
  br label %ezusb_writememory.exit.i119.i

ezusb_writememory.exit.i119.i:                    ; preds = %ezusb_writememory.exit.i119.critedge.i, %for.end.i
  %30 = ptrtoint ptr %reset_bit.addr.i115.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %reset_bit.addr.i115.i, align 1
  %call.i.i117.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %reset_bit.addr.i115.i, i16 noundef zeroext 1, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117.i)
  %cmp.i118.i = icmp slt i32 %call.i.i117.i, 0
  br i1 %cmp.i118.i, label %ezusb_set_reset.exit126.thread.i, label %if.end34.i

ezusb_set_reset.exit126.thread.i:                 ; preds = %ezusb_writememory.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %reset_bit.addr.i115.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reset_bit.addr.i115.i, align 1
  %conv3.i122.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv3.i122.i, i32 noundef %call.i.i117.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i115.i) #4
  br label %ezusb_ihex_firmware_download.exit

if.end34.i:                                       ; preds = %ezusb_writememory.exit.i119.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i115.i) #4
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %tobool37.not178.i = icmp eq ptr %34, null
  br i1 %tobool37.not178.i, label %if.end34.i.ezusb_writememory.exit.i146.i_crit_edge, label %if.end34.i.for.body38.i_crit_edge

if.end34.i.for.body38.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body38.i

if.end34.i.ezusb_writememory.exit.i146.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_writememory.exit.i146.i

for.body38.i:                                     ; preds = %for.inc65.i.for.body38.i_crit_edge, %if.end34.i.for.body38.i_crit_edge
  %record.1179.i = phi ptr [ %add.ptr.i.i138.i, %for.inc65.i.for.body38.i_crit_edge ], [ %34, %if.end34.i.for.body38.i_crit_edge ]
  %35 = ptrtoint ptr %record.1179.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %record.1179.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6975, i32 %36)
  %cmp42.not.i = icmp ugt i32 %36, 6975
  br i1 %cmp42.not.i, label %for.body38.i.for.inc65.i_crit_edge, label %ezusb_writememory.exit132.i

for.body38.i.for.inc65.i_crit_edge:               ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc65.i

ezusb_writememory.exit132.i:                      ; preds = %for.body38.i
  %data46.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.1179.i, i32 0, i32 2
  %len48.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.1179.i, i32 0, i32 1
  %37 = ptrtoint ptr %len48.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %len48.i, align 1
  %conv.i128.i = trunc i32 %36 to i16
  %call.i129.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i128.i, i16 noundef zeroext 0, ptr noundef %data46.i, i16 noundef zeroext %38, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i)
  %cmp51.i = icmp slt i32 %call.i129.i, 0
  br i1 %cmp51.i, label %do.end56.i, label %ezusb_writememory.exit132.i.for.inc65.i_crit_edge

ezusb_writememory.exit132.i.for.inc65.i_crit_edge: ; preds = %ezusb_writememory.exit132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc65.i

do.end56.i:                                       ; preds = %ezusb_writememory.exit132.i
  call void @__sanitizer_cov_trace_pc() #6
  %len48.i.le = getelementptr inbounds %struct.ihex_binrec, ptr %record.1179.i, i32 0, i32 1
  %39 = ptrtoint ptr %record.1179.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %record.1179.i, align 1
  %41 = ptrtoint ptr %len48.i.le to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %len48.i.le, align 1
  %conv62.i = zext i16 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %call.i129.i, i32 noundef %40, ptr noundef %data46.i, i32 noundef %conv62.i) #7
  br label %ezusb_ihex_firmware_download.exit

for.inc65.i:                                      ; preds = %ezusb_writememory.exit132.i.for.inc65.i_crit_edge, %for.body38.i.for.inc65.i_crit_edge
  %len.i.i.i133.i = getelementptr inbounds %struct.ihex_binrec, ptr %record.1179.i, i32 0, i32 1
  %43 = ptrtoint ptr %len.i.i.i133.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %len.i.i.i133.i, align 1
  %add.i.i.i134.i = add i16 %44, 6
  %conv.i.i135.i = zext i16 %add.i.i.i134.i to i32
  %add.i.i136.i = add nuw nsw i32 %conv.i.i135.i, 3
  %and.i.i137.i = and i32 %add.i.i136.i, 131068
  %add.ptr.i.i138.i = getelementptr i8, ptr %record.1179.i, i32 %and.i.i137.i
  %len.i139.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i138.i, i32 0, i32 1
  %45 = ptrtoint ptr %len.i139.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %len.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i140.i = icmp eq i16 %46, 0
  %tobool37.not188.i = icmp eq ptr %add.ptr.i.i138.i, null
  %tobool37.not.i = select i1 %tobool.not.i140.i, i1 true, i1 %tobool37.not188.i
  br i1 %tobool37.not.i, label %for.inc65.i.ezusb_writememory.exit.i146.i_crit_edge, label %for.inc65.i.for.body38.i_crit_edge

for.inc65.i.for.body38.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body38.i

for.inc65.i.ezusb_writememory.exit.i146.i_crit_edge: ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_writememory.exit.i146.i

ezusb_writememory.exit.i146.i:                    ; preds = %for.inc65.i.ezusb_writememory.exit.i146.i_crit_edge, %if.end34.i.ezusb_writememory.exit.i146.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_bit.addr.i142.i) #4
  %47 = ptrtoint ptr %reset_bit.addr.i142.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %reset_bit.addr.i142.i, align 1
  %call.i.i144.i = call i32 @usb_control_msg_send(ptr noundef nonnull %dev, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %reset_bit.addr.i142.i, i16 noundef zeroext 1, i32 noundef 3000, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144.i)
  %cmp.i145.i = icmp slt i32 %call.i.i144.i, 0
  br i1 %cmp.i145.i, label %do.end.i150.i, label %ezusb_writememory.exit.i146.i.ezusb_set_reset.exit153.i_crit_edge

ezusb_writememory.exit.i146.i.ezusb_set_reset.exit153.i_crit_edge: ; preds = %ezusb_writememory.exit.i146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ezusb_set_reset.exit153.i

do.end.i150.i:                                    ; preds = %ezusb_writememory.exit.i146.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %reset_bit.addr.i142.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reset_bit.addr.i142.i, align 1
  %conv3.i149.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv3.i149.i, i32 noundef %call.i.i144.i) #7
  br label %ezusb_set_reset.exit153.i

ezusb_set_reset.exit153.i:                        ; preds = %do.end.i150.i, %ezusb_writememory.exit.i146.i.ezusb_set_reset.exit153.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_bit.addr.i142.i) #4
  br label %ezusb_ihex_firmware_download.exit

ezusb_ihex_firmware_download.exit:                ; preds = %ezusb_set_reset.exit153.i, %do.end56.i, %ezusb_set_reset.exit126.thread.i, %do.end19.i, %ezusb_set_reset.exit.thread.i, %do.end.i
  %firmware.0159.i = phi ptr [ null, %do.end.i ], [ %2, %do.end19.i ], [ %2, %do.end56.i ], [ %2, %ezusb_set_reset.exit153.i ], [ %2, %ezusb_set_reset.exit.thread.i ], [ %2, %ezusb_set_reset.exit126.thread.i ]
  %ret.0.i = phi i32 [ -2, %do.end.i ], [ %call.i110.i, %do.end19.i ], [ %call.i129.i, %do.end56.i ], [ %call.i.i144.i, %ezusb_set_reset.exit153.i ], [ %retval.0.i9.i.i, %ezusb_set_reset.exit.thread.i ], [ %call.i.i117.i, %ezusb_set_reset.exit126.thread.i ]
  call void @release_firmware(ptr noundef %firmware.0159.i) #4
  ret i32 %ret.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_ezusb_fx1_set_reset, !1, !"__ksymtab_ezusb_fx1_set_reset", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/ezusb.c", i32 56, i32 1}
!2 = !{ptr @__ksymtab_ezusb_fx1_ihex_firmware_download, !3, !"__ksymtab_ezusb_fx1_ihex_firmware_download", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/ezusb.c", i32 125, i32 1}
!4 = !{ptr @__UNIQUE_ID_file232, !5, !"__UNIQUE_ID_file232", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/ezusb.c", i32 151, i32 1}
!6 = !{ptr @__UNIQUE_ID_license233, !5, !"__UNIQUE_ID_license233", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/ezusb.c", i32 47, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ezusb_set_reset._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @ezusb_set_reset._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"ezusb_fx1", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/ezusb.c", i32 22, i32 35}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/misc/ezusb.c", i32 68, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ezusb_ihex_firmware_download._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ezusb_ihex_firmware_download._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/ezusb.c", i32 85, i32 5}
!24 = !{ptr @ezusb_ihex_firmware_download._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ezusb_ihex_firmware_download._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/ezusb.c", i32 105, i32 5}
!28 = !{ptr @ezusb_ihex_firmware_download._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ezusb_ihex_firmware_download._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @request_ihex_firmware._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @request_ihex_firmware._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}

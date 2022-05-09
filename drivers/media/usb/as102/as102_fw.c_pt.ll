; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as102_fw.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as102_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.as10x_fw_pkt_t = type { %union.anon.140, %struct.as10x_raw_fw_pkt }
%union.anon.140 = type { [2 x i8] }
%struct.as10x_raw_fw_pkt = type { [4 x i8], [58 x i8] }
%struct.as10x_bus_adapter_t = type { ptr, %struct.mutex, %union.as10x_bus_token_t, i16, ptr, ptr, ptr }
%union.as10x_bus_token_t = type { %struct.as10x_usb_token_cmd_t }
%struct.as10x_usb_token_cmd_t = type { %struct.as10x_cmd_t, %struct.as10x_cmd_t }
%struct.as10x_cmd_t = type { %struct.as10x_cmd_header_t, %union.anon.78 }
%struct.as10x_cmd_header_t = type { i16, i16, i16, i16 }
%union.anon.78 = type { %union.as10x_dump_memory, [36 x i8] }
%union.as10x_dump_memory = type { %struct.anon.113 }
%struct.anon.113 = type { i16, i8, i8, %union.anon.114 }
%union.anon.114 = type { [4 x i32] }

@dual_tuner = external dso_local local_unnamed_addr global i32, align 4
@as102_dt_fw1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_data1_dt.hex\00", [45 x i8] zeroinitializer }, align 32
@as102_dt_fw2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_data2_dt.hex\00", [45 x i8] zeroinitializer }, align 32
@as102_st_fw1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_data1_st.hex\00", [45 x i8] zeroinitializer }, align 32
@as102_st_fw2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_data2_st.hex\00", [45 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: unable to locate firmware file: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"as102_fw_upload\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/as102/as102_fw.c\00", [61 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr = internal global ptr @as102_fw_upload._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"as10x_usb\00", [22 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: error during firmware upload part1\0A\00", [54 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr.6 = internal global ptr @as102_fw_upload._entry.4, section ".printk_index", align 4
@as102_fw_upload._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: firmware: %s loaded with success\0A\00", [56 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr.9 = internal global ptr @as102_fw_upload._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@as102_fw_upload._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr.11 = internal global ptr @as102_fw_upload._entry.10, section ".printk_index", align 4
@as102_fw_upload._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: error during firmware upload part2\0A\00", [54 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr.14 = internal global ptr @as102_fw_upload._entry.12, section ".printk_index", align 4
@as102_fw_upload._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@as102_fw_upload._entry_ptr.16 = internal global ptr @as102_fw_upload._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_hex_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013invalid firmware file\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parse_hex_line\00", [17 x i8] zeroinitializer }, align 32
@parse_hex_line._entry_ptr = internal global ptr @parse_hex_line._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"as102_dt_fw1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 18, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"as102_dt_fw2\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 19, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"as102_st_fw1\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 16, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"as102_st_fw2\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 17, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 182, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 190, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 195, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 206, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 219, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [38 x i8] c"../drivers/media/usb/as102/as102_fw.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 48, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @as102_fw_upload._entry, ptr @as102_fw_upload._entry.10, ptr @as102_fw_upload._entry.12, ptr @as102_fw_upload._entry.15, ptr @as102_fw_upload._entry.4, ptr @as102_fw_upload._entry.7, ptr @as102_fw_upload._entry_ptr, ptr @as102_fw_upload._entry_ptr.11, ptr @as102_fw_upload._entry_ptr.14, ptr @as102_fw_upload._entry_ptr.16, ptr @as102_fw_upload._entry_ptr.6, ptr @as102_fw_upload._entry_ptr.9, ptr @parse_hex_line._entry, ptr @parse_hex_line._entry_ptr, ptr @as102_dt_fw1, ptr @as102_dt_fw2, ptr @as102_st_fw1, ptr @as102_st_fw2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.13, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dt_fw1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dt_fw2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_st_fw1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_st_fw2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fw_upload._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_hex_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as102_fw_upload(ptr noundef %bus_adap) local_unnamed_addr #0 align 64 {
entry:
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #5
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %firmware, align 4
  %1 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_adap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dual_tuner to i32))
  %3 = load i32, ptr @dual_tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %as102_st_fw2.as102_dt_fw2 = select i1 %tobool.not, ptr @as102_st_fw2, ptr @as102_dt_fw2
  %as102_st_fw1.as102_dt_fw1 = select i1 %tobool.not, ptr @as102_st_fw1, ptr @as102_dt_fw1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end2

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end2:                                          ; preds = %entry
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %call4 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull %as102_st_fw1.as102_dt_fw1, ptr noundef %dev3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %as102_st_fw1.as102_dt_fw1) #9
  br label %error

if.end8:                                          ; preds = %if.end2
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %firmware, align 4
  %call9 = call fastcc i32 @as102_firmware_upload(ptr noundef %bus_adap, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %do.end20

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #9
  br label %error

do.end20:                                         ; preds = %if.end8
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %as102_st_fw1.as102_dt_fw1) #9
  %7 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %8) #5
  %9 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %firmware, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end20
  %__ms.062 = phi i32 [ 100, %do.end20 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.062, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #5
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %call25 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull %as102_st_fw2.as102_dt_fw2, ptr noundef %dev3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end33

do.end30:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %as102_st_fw2.as102_dt_fw2) #9
  br label %error

if.end33:                                         ; preds = %while.end
  %11 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %firmware, align 4
  %call34 = call fastcc i32 @as102_firmware_upload(ptr noundef %bus_adap, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %do.end45

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3) #9
  br label %error

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %as102_st_fw2.as102_dt_fw2) #9
  br label %error

error:                                            ; preds = %do.end45, %do.end39, %do.end30, %do.end14, %do.end, %entry.error_crit_edge
  %errno.0 = phi i32 [ %call4, %do.end ], [ %call9, %do.end14 ], [ %call25, %do.end30 ], [ %call34, %do.end39 ], [ %call34, %do.end45 ], [ -12, %entry.error_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #5
  %13 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #5
  ret i32 %errno.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as102_firmware_upload(ptr noundef %bus_adap, ptr nocapture noundef readonly %firmware) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %for.cond.preheader

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup35

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp23.not = icmp eq i32 %2, 0
  br i1 %cmp23.not, label %error.thread41, label %for.body.lr.ph

error.thread41:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %44

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %raw = getelementptr inbounds %struct.as10x_fw_pkt_t, ptr %call7.i, i32 0, i32 1
  %data2 = getelementptr inbounds %struct.as10x_fw_pkt_t, ptr %call7.i, i32 0, i32 1, i32 1
  %arrayidx9.i = getelementptr %struct.as10x_fw_pkt_t, ptr %call7.i, i32 0, i32 1, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.as10x_fw_pkt_t, ptr %call7.i, i32 0, i32 1, i32 0, i32 2
  %arrayidx22 = getelementptr [2 x i8], ptr %call7.i, i32 0, i32 1
  %ops25 = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %bus_adap, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %errno.027 = phi i32 [ 0, %for.body.lr.ph ], [ %errno.1, %cleanup.for.body_crit_edge ]
  %total_read_bytes.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %addr_has_changed.024 = phi i8 [ 0, %for.body.lr.ph ], [ %addr_has_changed.313, %cleanup.for.body_crit_edge ]
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %total_read_bytes.025
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 58
  br i1 %cmp.not.i, label %if.end.i, label %parse_hex_line.exit.thread

parse_hex_line.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %error

if.end.i:                                         ; preds = %for.body
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp3.not46.i = icmp eq i8 %8, 10
  br i1 %cmp3.not46.i, label %if.end.i.if.end7_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %addr_has_changed.1 = phi i8 [ %addr_has_changed.2, %sw.epilog.i.for.body.i_crit_edge ], [ %addr_has_changed.024, %if.end.i.for.body.i_crit_edge ]
  %data_len.0 = phi i32 [ %data_len.1, %sw.epilog.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %9 = phi i8 [ %27, %sw.epilog.i.for.body.i_crit_edge ], [ %8, %if.end.i.for.body.i_crit_edge ]
  %src.049.i = phi ptr [ %add.ptr.i, %sw.epilog.i.for.body.i_crit_edge ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %count.047.i = phi i32 [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %conv.i.i.i = zext i8 %9 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not.i.i.i = icmp eq i8 %12, 0
  %sub.i.i.i = add i8 %9, 32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %9, i8 %sub.i.i.i
  %sub.i.i = add i8 %spec.select.i.i.i, -48
  %add.ptr.i.i = getelementptr i8, ptr %src.049.i, i32 1
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i2.i.i = zext i8 %14 to i32
  %arrayidx.i3.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i2.i.i
  %15 = ptrtoint ptr %arrayidx.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i3.i.i, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i4.i.i = icmp eq i8 %17, 0
  %sub.i5.i.i = add i8 %14, 32
  %spec.select.i6.i.i = select i1 %cmp.not.i4.i.i, i8 %14, i8 %sub.i5.i.i
  %sub4.i.i = add i8 %spec.select.i6.i.i, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, 9
  %sub9.i.i = add i8 %spec.select.i.i.i, 9
  %spec.select.i.i = select i1 %cmp.i.i, i8 %sub9.i.i, i8 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub4.i.i)
  %cmp12.i.i = icmp ugt i8 %sub4.i.i, 9
  %sub16.i.i = add i8 %spec.select.i6.i.i, 9
  %lsb.0.i.i = select i1 %cmp12.i.i, i8 %sub16.i.i, i8 %sub4.i.i
  %18 = shl i8 %spec.select.i.i, 4
  %19 = and i8 %lsb.0.i.i, 15
  %or1.i.i = or i8 %19, %18
  %20 = zext i32 %count.047.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %count.047.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb10.i
    i32 4, label %for.body.i.sw.bb16.i_crit_edge
    i32 5, label %for.body.i.sw.bb16.i_crit_edge65
  ]

for.body.i.sw.bb16.i_crit_edge65:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16.i

for.body.i.sw.bb16.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %or1.i.i to i32
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or1.i.i, ptr %arrayidx.i, align 4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or1.i.i, ptr %arrayidx9.i, align 1
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %or1.i.i)
  %cmp12.i = icmp eq i8 %or1.i.i, 4
  %spec.select = zext i1 %cmp12.i to i8
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %for.body.i.sw.bb16.i_crit_edge, %for.body.i.sw.bb16.i_crit_edge65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr_has_changed.1)
  %tobool.not.i = icmp eq i8 %addr_has_changed.1, 0
  %sub20.i = add nsw i32 %count.047.i, -4
  br i1 %tobool.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18.i = getelementptr i8, ptr %raw, i32 %sub20.i
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or1.i.i, ptr %arrayidx18.i, align 1
  br label %sw.epilog.i

if.else19.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx21.i = getelementptr i8, ptr %data2, i32 %sub20.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or1.i.i, ptr %arrayidx21.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub23.i = add i32 %count.047.i, -4
  %arrayidx24.i = getelementptr i8, ptr %data2, i32 %sub23.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or1.i.i, ptr %arrayidx24.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.else19.i, %if.then17.i, %sw.bb10.i, %sw.bb8.i, %sw.bb7.i, %sw.bb.i
  %addr_has_changed.2 = phi i8 [ %addr_has_changed.1, %sw.default.i ], [ 0, %if.else19.i ], [ %addr_has_changed.1, %if.then17.i ], [ %addr_has_changed.1, %sw.bb8.i ], [ %addr_has_changed.1, %sw.bb7.i ], [ %addr_has_changed.1, %sw.bb.i ], [ %spec.select, %sw.bb10.i ]
  %data_len.1 = phi i32 [ %data_len.0, %sw.default.i ], [ %data_len.0, %if.else19.i ], [ %data_len.0, %if.then17.i ], [ %data_len.0, %sw.bb8.i ], [ %data_len.0, %sw.bb7.i ], [ %conv6.i, %sw.bb.i ], [ %data_len.0, %sw.bb10.i ]
  %inc.i = add i32 %count.047.i, 1
  %add.ptr.i = getelementptr i8, ptr %src.049.i, i32 2
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i, align 1
  %cmp3.not.i = icmp eq i8 %27, 10
  br i1 %cmp3.not.i, label %parse_hex_line.exit, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

parse_hex_line.exit:                              ; preds = %sw.epilog.i
  %phi.bo.i = shl i32 %inc.i, 1
  %phi.bo50.i = add i32 %phi.bo.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phi.bo50.i)
  %cmp5 = icmp slt i32 %phi.bo50.i, 1
  br i1 %cmp5, label %parse_hex_line.exit.error_crit_edge, label %parse_hex_line.exit.if.end7_crit_edge

parse_hex_line.exit.if.end7_crit_edge:            ; preds = %parse_hex_line.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

parse_hex_line.exit.error_crit_edge:              ; preds = %parse_hex_line.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end7:                                          ; preds = %parse_hex_line.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %retval.0.i15 = phi i32 [ %phi.bo50.i, %parse_hex_line.exit.if.end7_crit_edge ], [ 2, %if.end.i.if.end7_crit_edge ]
  %data_len.214 = phi i32 [ %data_len.1, %parse_hex_line.exit.if.end7_crit_edge ], [ 0, %if.end.i.if.end7_crit_edge ]
  %addr_has_changed.313 = phi i8 [ %addr_has_changed.2, %parse_hex_line.exit.if.end7_crit_edge ], [ %addr_has_changed.024, %if.end.i.if.end7_crit_edge ]
  %add = add i32 %retval.0.i15, %total_read_bytes.025
  %28 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %firmware, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp9 = icmp eq i32 %add, %29
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %call7.i, align 8
  %31 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx22, align 1
  %32 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops25, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call13 = tail call i32 %35(ptr noundef %bus_adap, ptr noundef nonnull %call7.i, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then10.error.thread_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.error.thread_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %error.thread

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr_has_changed.313)
  %tobool17.not = icmp eq i8 %addr_has_changed.313, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.else
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %call7.i, align 8
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %arrayidx22, align 1
  %add24 = add i32 %data_len.214, 6
  %38 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops25, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call27 = tail call i32 %41(ptr noundef %bus_adap, ptr noundef nonnull %call7.i, i32 noundef %add24, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then18.error.thread_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18.error.thread_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %error.thread

cleanup:                                          ; preds = %if.then18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %errno.1 = phi i32 [ %call13, %if.then10.cleanup_crit_edge ], [ %errno.027, %if.else.cleanup_crit_edge ], [ %call27, %if.then18.cleanup_crit_edge ]
  %42 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %firmware, align 4
  %cmp = icmp ult i32 %add, %43
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.error_crit_edge

cleanup.error_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

error.thread:                                     ; preds = %if.then18.error.thread_crit_edge, %if.then10.error.thread_crit_edge
  %errno.3.ph = phi i32 [ %call13, %if.then10.error.thread_crit_edge ], [ %call27, %if.then18.error.thread_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup35

error:                                            ; preds = %cleanup.error_crit_edge, %parse_hex_line.exit.error_crit_edge, %parse_hex_line.exit.thread
  %total_read_bytes.2 = phi i32 [ %total_read_bytes.025, %parse_hex_line.exit.thread ], [ %add, %cleanup.error_crit_edge ], [ %total_read_bytes.025, %parse_hex_line.exit.error_crit_edge ]
  %errno.3 = phi i32 [ %errno.027, %parse_hex_line.exit.thread ], [ %errno.1, %cleanup.error_crit_edge ], [ %errno.027, %parse_hex_line.exit.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errno.3)
  %cmp34 = icmp eq i32 %errno.3, 0
  br i1 %cmp34, label %error._crit_edge, label %error.cleanup35_crit_edge

error.cleanup35_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup35

error._crit_edge:                                 ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %44

44:                                               ; preds = %error._crit_edge, %error.thread41
  %total_read_bytes.245 = phi i32 [ 0, %error.thread41 ], [ %total_read_bytes.2, %error._crit_edge ]
  br label %cleanup35

cleanup35:                                        ; preds = %44, %error.cleanup35_crit_edge, %error.thread, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup35_crit_edge ], [ %total_read_bytes.245, %44 ], [ %errno.3, %error.cleanup35_crit_edge ], [ %errno.3.ph, %error.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 182, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @as102_fw_upload._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @as102_fw_upload._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 190, i32 3}
!9 = !{ptr @as102_fw_upload._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @as102_fw_upload._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 195, i32 2}
!13 = !{ptr @as102_fw_upload._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @as102_fw_upload._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @as102_fw_upload._entry.10, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 206, i32 3}
!17 = !{ptr @as102_fw_upload._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 214, i32 3}
!20 = !{ptr @as102_fw_upload._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @as102_fw_upload._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @as102_fw_upload._entry.15, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 219, i32 2}
!24 = !{ptr @as102_fw_upload._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @as102_dt_fw1, !26, !"as102_dt_fw1", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 18, i32 19}
!27 = !{ptr @as102_dt_fw2, !28, !"as102_dt_fw2", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 19, i32 19}
!29 = !{ptr @as102_st_fw1, !30, !"as102_st_fw1", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 16, i32 19}
!31 = !{ptr @as102_st_fw2, !32, !"as102_st_fw2", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 17, i32 19}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/as102/as102_fw.c", i32 48, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @parse_hex_line._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @parse_hex_line._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

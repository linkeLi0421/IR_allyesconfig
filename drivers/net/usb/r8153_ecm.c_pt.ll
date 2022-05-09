; ModuleID = '/llk/IR_all_yes/drivers/net/usb/r8153_ecm.c_pt.bc'
source_filename = "../drivers/net/usb/r8153_ecm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_r8153_ecm__342_166_r8153_ecm_driver_init6 = internal global ptr @r8153_ecm_driver_init, section ".initcall6.init", align 4
@r8153_ecm_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @rtl8153_ecm_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr @usbnet_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_r8153_ecm_driver_exit = internal global ptr @r8153_ecm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author343 = internal constant [28 x i8] c"r8153_ecm.author=Hayes Wang\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [45 x i8] c"r8153_ecm.description=Realtek USB ECM device\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [41 x i8] c"r8153_ecm.file=drivers/net/usb/r8153_ecm\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [22 x i8] c"r8153_ecm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r8153_ecm\00", [22 x i8] zeroinitializer }, align 32
@products = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @r8153_info to i32) }, %struct.usb_device_id { i16 899, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @r8153_info to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@r8153_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 32, ptr @r8153_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTL8153 ECM Device\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"r8153_ecm_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 154, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 166, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 124, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"r8153_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 115, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [31 x i8] c"../drivers/net/usb/r8153_ecm.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 116, i32 17 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__exitcall_r8153_ecm_driver_exit, ptr @__initcall__kmod_r8153_ecm__342_166_r8153_ecm_driver_init6, ptr @r8153_ecm_driver_exit, ptr @r8153_ecm_driver, ptr @.str, ptr @products, ptr @r8153_info, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8153_ecm_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8153_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8153_ecm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @r8153_ecm_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8153_ecm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @r8153_ecm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8153_ecm_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtl8152_get_version(ptr noundef %intf) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @usbnet_probe(ptr noundef %intf, ptr noundef %id) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8152_get_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8153_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_cdc_bind(ptr noundef %dev, ptr noundef %intf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %dev1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dev1, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %3 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @r8153_ecm_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %4 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @r8153_ecm_mdio_write, ptr %mdio_write, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %5 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %reg_num_mask, align 4
  %supports_gmii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 4
  %6 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %supports_gmii, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_unbind(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_manage_power(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_status(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_cdc_bind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8153_ecm_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  %tmp.i5 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !28
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext -6036, i16 noundef zeroext 307, ptr noundef nonnull %tmp.i, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pla_write_word.exit.thread, label %pla_write_word.exit

pla_write_word.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %out

pla_write_word.exit:                              ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  %3 = and i32 %2, 65535
  %4 = or i32 %3, 10485760
  store i32 %4, ptr %tmp.i, align 4
  %call24.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext -6036, i16 noundef zeroext 307, ptr noundef nonnull %tmp.i, i16 noundef zeroext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %pla_write_word.exit.out_crit_edge, label %if.end

pla_write_word.exit.out_crit_edge:                ; preds = %pla_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %pla_write_word.exit
  %reg.tr = trunc i32 %reg to i16
  %5 = shl i16 %reg.tr, 1
  %conv = add i16 %5, -19456
  %6 = trunc i16 %conv to i8
  %conv1.i = and i8 %6, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i5) #5
  %7 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp.i5, align 4, !annotation !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i16 307, i16 460
  %8 = and i16 %conv, -4
  %call.i6 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %8, i16 noundef zeroext %spec.select.i, ptr noundef nonnull %tmp.i5, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.i7 = icmp slt i32 %call.i6, 0
  br i1 %cmp.i7, label %if.end.pla_read_word.exit_crit_edge, label %if.end12.i

if.end.pla_read_word.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pla_read_word.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.i5, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = shl nuw nsw i8 %conv1.i, 3
  %mul.i = zext i8 %12 to i32
  %shr.i = ashr i32 %11, %mul.i
  %and14.i = and i32 %shr.i, 65535
  br label %pla_read_word.exit

pla_read_word.exit:                               ; preds = %if.end12.i, %if.end.pla_read_word.exit_crit_edge
  %ret.0.i8 = phi i32 [ %call.i6, %if.end.pla_read_word.exit_crit_edge ], [ %and14.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i5) #5
  br label %out

out:                                              ; preds = %pla_read_word.exit, %pla_write_word.exit.out_crit_edge, %pla_write_word.exit.thread
  %ret.0 = phi i32 [ %call24.i, %pla_write_word.exit.out_crit_edge ], [ %ret.0.i8, %pla_read_word.exit ], [ %call.i, %pla_write_word.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8153_ecm_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %tmp.i5 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !28
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext -6036, i16 noundef zeroext 307, ptr noundef nonnull %tmp.i, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pla_write_word.exit.thread, label %pla_write_word.exit

pla_write_word.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

pla_write_word.exit:                              ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  %3 = and i32 %2, 65535
  %4 = or i32 %3, 10485760
  store i32 %4, ptr %tmp.i, align 4
  %call24.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext -6036, i16 noundef zeroext 307, ptr noundef nonnull %tmp.i, i16 noundef zeroext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %pla_write_word.exit.cleanup_crit_edge, label %if.end

pla_write_word.exit.cleanup_crit_edge:            ; preds = %pla_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pla_write_word.exit
  %reg.tr = trunc i32 %reg to i16
  %5 = shl i16 %reg.tr, 1
  %conv = add i16 %5, -19456
  %6 = trunc i16 %conv to i8
  %conv1.i = and i8 %6, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i5) #5
  %7 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp.i5, align 4, !annotation !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  %byen.0.i = select i1 %tobool.not.i, i16 307, i16 460
  %8 = and i16 %conv, -4
  %call.i6 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %8, i16 noundef zeroext %byen.0.i, ptr noundef nonnull %tmp.i5, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.i7 = icmp slt i32 %call.i6, 0
  br i1 %cmp.i7, label %if.end.pla_write_word.exit13_crit_edge, label %if.end18.i11

if.end.pla_write_word.exit13_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pla_write_word.exit13

if.end18.i11:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mask.0.i = select i1 %tobool.not.i, i32 -65536, i32 65535
  %and2.i = and i32 %val, 65535
  %9 = shl nuw nsw i8 %conv1.i, 3
  %shl10.i = zext i8 %9 to i32
  %data.addr.0.i = shl nuw i32 %and2.i, %shl10.i
  %10 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i5, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #5
  %and19.i8 = and i32 %12, %mask.0.i
  %or20.i9 = or i32 %and19.i8, %data.addr.0.i
  %13 = call i32 @llvm.bswap.i32(i32 %or20.i9) #5
  %14 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i5, align 4
  %call24.i10 = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %8, i16 noundef zeroext %byen.0.i, ptr noundef nonnull %tmp.i5, i16 noundef zeroext 4) #5
  br label %pla_write_word.exit13

pla_write_word.exit13:                            ; preds = %if.end18.i11, %if.end.pla_write_word.exit13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i5) #5
  br label %cleanup

cleanup:                                          ; preds = %pla_write_word.exit13, %pla_write_word.exit.cleanup_crit_edge, %pla_write_word.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_r8153_ecm__342_166_r8153_ecm_driver_init6, !1, !"__initcall__kmod_r8153_ecm__342_166_r8153_ecm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/r8153_ecm.c", i32 166, i32 1}
!2 = !{ptr @__exitcall_r8153_ecm_driver_exit, !1, !"__exitcall_r8153_ecm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author343, !4, !"__UNIQUE_ID_author343", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/r8153_ecm.c", i32 168, i32 1}
!5 = !{ptr @__UNIQUE_ID_description344, !6, !"__UNIQUE_ID_description344", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/r8153_ecm.c", i32 169, i32 1}
!7 = !{ptr @__UNIQUE_ID_file345, !8, !"__UNIQUE_ID_file345", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/r8153_ecm.c", i32 170, i32 1}
!9 = !{ptr @__UNIQUE_ID_license346, !8, !"__UNIQUE_ID_license346", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @r8153_ecm_driver, !12, !"r8153_ecm_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/r8153_ecm.c", i32 154, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/r8153_ecm.c", i32 124, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/r8153_ecm.c", i32 116, i32 17}
!17 = !{ptr @r8153_info, !18, !"r8153_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/r8153_ecm.c", i32 115, i32 33}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}

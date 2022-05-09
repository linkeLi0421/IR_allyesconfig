; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5592r.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5592r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.ad5592r_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ad5592r_state = type { ptr, ptr, %struct.gpio_chip, %struct.mutex, %struct.mutex, i32, ptr, [2 x [2 x i32]], [8 x i16], i16, [8 x i8], [8 x i8], i8, i8, i8, i8, [38 x i8], i16, i16, [124 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_ad5592r__230_168_ad5592r_spi_driver_init6 = internal global ptr @ad5592r_spi_driver_init, section ".initcall6.init", align 4
@ad5592r_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5592r_spi_ids, ptr @ad5592r_spi_probe, ptr @ad5592r_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5592r_of_match, ptr @ad5592r_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5592r_spi_driver_exit = internal global ptr @ad5592r_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [56 x i8] c"ad5592r.author=Paul Cercueil <paul.cercueil@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [68 x i8] c"ad5592r.description=Analog Devices AD5592R multi-channel converters\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [37 x i8] c"ad5592r.file=drivers/iio/dac/ad5592r\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"ad5592r.license=GPL v2\00", section ".modinfo", align 1
@ad5592r_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5592r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ad5592r\00", [24 x i8] zeroinitializer }, align 32
@ad5592r_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5592r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad5592r_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ADS5592\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ad5592r_rw_ops = internal constant { %struct.ad5592r_rw_ops, [44 x i8] } { %struct.ad5592r_rw_ops { ptr @ad5592r_write_dac, ptr @ad5592r_read_adc, ptr @ad5592r_reg_write, ptr @ad5592r_reg_read, ptr @ad5592r_gpio_read }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"ad5592r_spi_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 158, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"ad5592r_spi_ids\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 140, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 160, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"ad5592r_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 146, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"ad5592r_acpi_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 152, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ad5592r_rw_ops\00", align 1
@___asan_gen_.17 = private constant [29 x i8] c"../drivers/iio/dac/ad5592r.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 118, i32 36 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad5592r_spi_driver_exit, ptr @__initcall__kmod_ad5592r__230_168_ad5592r_spi_driver_init6, ptr @ad5592r_spi_driver_exit, ptr @ad5592r_spi_driver, ptr @ad5592r_spi_ids, ptr @.str, ptr @ad5592r_of_match, ptr @ad5592r_acpi_match, ptr @ad5592r_rw_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_rw_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5592r_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5592r_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5592r_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %call1 = tail call i32 @ad5592r_probe(ptr noundef %spi, ptr noundef %call, ptr noundef nonnull @ad5592r_rw_ops) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ad5592r_remove(ptr noundef %spi) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad5592r_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_write_dac(ptr noundef %st, i32 noundef %chan, i16 noundef zeroext %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %chan.tr = trunc i32 %chan to i16
  %2 = shl i16 %chan.tr, 12
  %3 = or i16 %2, %value
  %conv2 = or i16 %3, -32768
  %spi_msg = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 17
  %4 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %spi_msg, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_msg, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_read_adc(ptr noundef %st, i32 noundef %chan, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %msg.i.i36 = alloca %struct.spi_message, align 4
  %t.i37 = alloca %struct.spi_transfer, align 4
  %msg.i.i26 = alloca %struct.spi_message, align 4
  %t.i27 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %shl = shl nuw i32 1, %chan
  %2 = trunc i32 %shl to i16
  %conv = or i16 %2, 4096
  %spi_msg = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 17
  %3 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %spi_msg, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi_msg, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %spi_write.exit.cleanup_crit_edge

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %spi_write.exit
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i27) #4
  %20 = getelementptr inbounds i8, ptr %t.i27, i32 12
  %21 = call ptr @memset(ptr %20, i32 0, i32 84)
  %spi_msg_nop.i = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 18
  %22 = ptrtoint ptr %t.i27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spi_msg_nop.i, ptr %t.i27, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i27, i32 0, i32 1
  %23 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spi_msg, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i27, i32 0, i32 2
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len.i, align 4
  %25 = ptrtoint ptr %spi_msg_nop.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %spi_msg_nop.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i26) #4
  %26 = getelementptr inbounds i8, ptr %msg.i.i26, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i26, ptr %msg.i.i26, align 4
  %prev.i.i.i.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %msg.i.i26, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i26, ptr %prev.i.i.i.i.i.i28, align 4
  %resources.i.i.i.i.i29 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i26, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i29, ptr %resources.i.i.i.i.i29, align 4
  %prev.i2.i.i.i.i.i30 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i26, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i29, ptr %prev.i2.i.i.i.i.i30, align 4
  %transfer_list.i.i.i.i31 = getelementptr inbounds %struct.spi_transfer, ptr %t.i27, i32 0, i32 18
  %call.i.i.i.i.i.i32 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i31, ptr noundef nonnull %msg.i.i26, ptr noundef nonnull %msg.i.i26) #4
  br i1 %call.i.i.i.i.i.i32, label %if.end.i.i.i.i.i.i34, label %if.end.ad5592r_spi_wnop_r16.exit_crit_edge

if.end.ad5592r_spi_wnop_r16.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5592r_spi_wnop_r16.exit

if.end.i.i.i.i.i.i34:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i31, ptr %prev.i.i.i.i.i.i28, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i26, ptr %transfer_list.i.i.i.i31, align 4
  %prev3.i.i.i.i.i.i33 = getelementptr inbounds %struct.spi_transfer, ptr %t.i27, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i26, ptr %prev3.i.i.i.i.i.i33, align 4
  %35 = ptrtoint ptr %msg.i.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i31, ptr %msg.i.i26, align 4
  br label %ad5592r_spi_wnop_r16.exit

ad5592r_spi_wnop_r16.exit:                        ; preds = %if.end.i.i.i.i.i.i34, %if.end.ad5592r_spi_wnop_r16.exit_crit_edge
  %call.i.i35 = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i26) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i26) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool4.not = icmp eq i32 %call.i.i35, 0
  br i1 %tobool4.not, label %if.end6, label %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge

ad5592r_spi_wnop_r16.exit.cleanup_crit_edge:      ; preds = %ad5592r_spi_wnop_r16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %ad5592r_spi_wnop_r16.exit
  %36 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i37) #4
  %38 = getelementptr inbounds i8, ptr %t.i37, i32 12
  %39 = call ptr @memset(ptr %38, i32 0, i32 84)
  %40 = ptrtoint ptr %t.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spi_msg_nop.i, ptr %t.i37, align 4
  %rx_buf.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i37, i32 0, i32 1
  %41 = ptrtoint ptr %rx_buf.i39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spi_msg, ptr %rx_buf.i39, align 4
  %len.i40 = getelementptr inbounds %struct.spi_transfer, ptr %t.i37, i32 0, i32 2
  %42 = ptrtoint ptr %len.i40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len.i40, align 4
  %43 = ptrtoint ptr %spi_msg_nop.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %spi_msg_nop.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i36) #4
  %44 = getelementptr inbounds i8, ptr %msg.i.i36, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i36, ptr %msg.i.i36, align 4
  %prev.i.i.i.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %msg.i.i36, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i36, ptr %prev.i.i.i.i.i.i41, align 4
  %resources.i.i.i.i.i42 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i36, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i42, ptr %resources.i.i.i.i.i42, align 4
  %prev.i2.i.i.i.i.i43 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i36, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i42, ptr %prev.i2.i.i.i.i.i43, align 4
  %transfer_list.i.i.i.i44 = getelementptr inbounds %struct.spi_transfer, ptr %t.i37, i32 0, i32 18
  %call.i.i.i.i.i.i45 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i44, ptr noundef nonnull %msg.i.i36, ptr noundef nonnull %msg.i.i36) #4
  br i1 %call.i.i.i.i.i.i45, label %if.end.i.i.i.i.i.i47, label %if.end6.ad5592r_spi_wnop_r16.exit49_crit_edge

if.end6.ad5592r_spi_wnop_r16.exit49_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5592r_spi_wnop_r16.exit49

if.end.i.i.i.i.i.i47:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i44, ptr %prev.i.i.i.i.i.i41, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i36, ptr %transfer_list.i.i.i.i44, align 4
  %prev3.i.i.i.i.i.i46 = getelementptr inbounds %struct.spi_transfer, ptr %t.i37, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i36, ptr %prev3.i.i.i.i.i.i46, align 4
  %53 = ptrtoint ptr %msg.i.i36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i44, ptr %msg.i.i36, align 4
  br label %ad5592r_spi_wnop_r16.exit49

ad5592r_spi_wnop_r16.exit49:                      ; preds = %if.end.i.i.i.i.i.i47, %if.end6.ad5592r_spi_wnop_r16.exit49_crit_edge
  %call.i.i48 = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i.i36) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i36) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool9.not = icmp eq i32 %call.i.i48, 0
  br i1 %tobool9.not, label %if.end11, label %ad5592r_spi_wnop_r16.exit49.cleanup_crit_edge

ad5592r_spi_wnop_r16.exit49.cleanup_crit_edge:    ; preds = %ad5592r_spi_wnop_r16.exit49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %ad5592r_spi_wnop_r16.exit49
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %spi_msg to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %spi_msg, align 128
  %56 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %ad5592r_spi_wnop_r16.exit49.cleanup_crit_edge, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge, %spi_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ %call.i.i35, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge ], [ %call.i.i48, %ad5592r_spi_wnop_r16.exit49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_reg_write(ptr noundef %st, i8 noundef zeroext %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %conv = zext i8 %reg to i16
  %shl = shl i16 %conv, 11
  %or = or i16 %shl, %value
  %spi_msg = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 17
  %2 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or, ptr %spi_msg, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi_msg, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_reg_read(ptr noundef %st, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %msg.i.i18 = alloca %struct.spi_message, align 4
  %t.i19 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %conv = zext i8 %reg to i16
  %shl = shl nuw nsw i16 %conv, 2
  %or = or i16 %shl, 14400
  %spi_msg = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 17
  %2 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or, ptr %spi_msg, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi_msg, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %spi_write.exit.cleanup_crit_edge

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %spi_write.exit
  %17 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i19) #4
  %19 = getelementptr inbounds i8, ptr %t.i19, i32 12
  %20 = call ptr @memset(ptr %19, i32 0, i32 84)
  %spi_msg_nop.i = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 18
  %21 = ptrtoint ptr %t.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spi_msg_nop.i, ptr %t.i19, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i19, i32 0, i32 1
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spi_msg, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i19, i32 0, i32 2
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %len.i, align 4
  %24 = ptrtoint ptr %spi_msg_nop.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %spi_msg_nop.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i18) #4
  %25 = getelementptr inbounds i8, ptr %msg.i.i18, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i18, ptr %msg.i.i18, align 4
  %prev.i.i.i.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %msg.i.i18, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i18, ptr %prev.i.i.i.i.i.i20, align 4
  %resources.i.i.i.i.i21 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i18, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i21, ptr %resources.i.i.i.i.i21, align 4
  %prev.i2.i.i.i.i.i22 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i18, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i21, ptr %prev.i2.i.i.i.i.i22, align 4
  %transfer_list.i.i.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %t.i19, i32 0, i32 18
  %call.i.i.i.i.i.i24 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i23, ptr noundef nonnull %msg.i.i18, ptr noundef nonnull %msg.i.i18) #4
  br i1 %call.i.i.i.i.i.i24, label %if.end.i.i.i.i.i.i26, label %if.end.ad5592r_spi_wnop_r16.exit_crit_edge

if.end.ad5592r_spi_wnop_r16.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5592r_spi_wnop_r16.exit

if.end.i.i.i.i.i.i26:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i23, ptr %prev.i.i.i.i.i.i20, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i18, ptr %transfer_list.i.i.i.i23, align 4
  %prev3.i.i.i.i.i.i25 = getelementptr inbounds %struct.spi_transfer, ptr %t.i19, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i18, ptr %prev3.i.i.i.i.i.i25, align 4
  %34 = ptrtoint ptr %msg.i.i18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i23, ptr %msg.i.i18, align 4
  br label %ad5592r_spi_wnop_r16.exit

ad5592r_spi_wnop_r16.exit:                        ; preds = %if.end.i.i.i.i.i.i26, %if.end.ad5592r_spi_wnop_r16.exit_crit_edge
  %call.i.i27 = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i18) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i18) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %tobool5.not = icmp eq i32 %call.i.i27, 0
  br i1 %tobool5.not, label %if.end7, label %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge

ad5592r_spi_wnop_r16.exit.cleanup_crit_edge:      ; preds = %ad5592r_spi_wnop_r16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %ad5592r_spi_wnop_r16.exit
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %spi_msg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %spi_msg, align 128
  %37 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge, %spi_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ %call.i.i27, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_gpio_read(ptr noundef %st, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_in = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 14
  %0 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_in, align 8
  %conv = zext i8 %1 to i16
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  %or.i = or i16 %conv, 21504
  %spi_msg.i = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 17
  %4 = ptrtoint ptr %spi_msg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or.i, ptr %spi_msg.i, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_msg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad5592r_reg_write.exit_crit_edge

entry.ad5592r_reg_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5592r_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5592r_reg_write.exit

ad5592r_reg_write.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad5592r_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %ad5592r_reg_write.exit.cleanup_crit_edge

ad5592r_reg_write.exit.cleanup_crit_edge:         ; preds = %ad5592r_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ad5592r_reg_write.exit
  %19 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %21 = getelementptr inbounds i8, ptr %t.i, i32 12
  %22 = call ptr @memset(ptr %21, i32 0, i32 84)
  %spi_msg_nop.i = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 18
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spi_msg_nop.i, ptr %t.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %24 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spi_msg.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len.i, align 4
  %26 = ptrtoint ptr %spi_msg_nop.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %spi_msg_nop.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.ad5592r_spi_wnop_r16.exit_crit_edge

if.end.ad5592r_spi_wnop_r16.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5592r_spi_wnop_r16.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %ad5592r_spi_wnop_r16.exit

ad5592r_spi_wnop_r16.exit:                        ; preds = %if.end.i.i.i.i.i.i, %if.end.ad5592r_spi_wnop_r16.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge

ad5592r_spi_wnop_r16.exit.cleanup_crit_edge:      ; preds = %ad5592r_spi_wnop_r16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %ad5592r_spi_wnop_r16.exit
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %spi_msg.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %spi_msg.i, align 128
  %conv7 = trunc i16 %38 to i8
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv7, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge, %ad5592r_reg_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i.i.i, %ad5592r_reg_write.exit.cleanup_crit_edge ], [ %call.i.i, %ad5592r_spi_wnop_r16.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ad5592r_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_ad5592r__230_168_ad5592r_spi_driver_init6, !1, !"__initcall__kmod_ad5592r__230_168_ad5592r_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5592r.c", i32 168, i32 1}
!2 = !{ptr @__exitcall_ad5592r_spi_driver_exit, !1, !"__exitcall_ad5592r_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5592r.c", i32 170, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5592r.c", i32 171, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5592r.c", i32 172, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5592r.c", i32 160, i32 11}
!12 = !{ptr @ad5592r_spi_driver, !13, !"ad5592r_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5592r.c", i32 158, i32 26}
!14 = !{ptr @ad5592r_spi_ids, !15, !"ad5592r_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5592r.c", i32 140, i32 35}
!16 = !{ptr @ad5592r_rw_ops, !17, !"ad5592r_rw_ops", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5592r.c", i32 118, i32 36}
!18 = !{ptr @ad5592r_of_match, !19, !"ad5592r_of_match", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5592r.c", i32 146, i32 34}
!20 = !{ptr @ad5592r_acpi_match, !21, !"ad5592r_acpi_match", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ad5592r.c", i32 152, i32 36}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

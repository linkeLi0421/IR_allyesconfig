; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mc44s803.c_pt.bc'
source_filename = "../drivers/media/tuners/mc44s803.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mc44s803_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mc44s803_attach\09\09\09\09"
module asm "\09.long\09__crc_mc44s803_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc44s803_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mc44s803_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mc44s803_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mc44s803_priv = type { ptr, ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mc44s803_config = type { i8, i8 }

@mc44s803_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mc44s803: unsupported ID (%x should be 0x14)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mc44s803_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/mc44s803.c\00", [32 x i8] zeroinitializer }, align 32
@mc44s803_attach._entry_ptr = internal global ptr @mc44s803_attach._entry, section ".printk_index", align 4
@mc44s803_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016mc44s803: successfully identified (ID = %x)\0A\00", [49 x i8] zeroinitializer }, align 32
@mc44s803_attach._entry_ptr.5 = internal global ptr @mc44s803_attach._entry.3, section ".printk_index", align 4
@mc44s803_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Freescale MC44S803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 1000000000, i32 100000, i32 0, i32 0, i32 0 }, ptr @mc44s803_release, ptr @mc44s803_init, ptr null, ptr null, ptr null, ptr @mc44s803_set_params, ptr null, ptr null, ptr @mc44s803_get_frequency, ptr null, ptr @mc44s803_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mc44s803_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc44s803_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mc44s803_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc44s803_attach to i32), ptr @__kstrtab_mc44s803_attach, ptr @__kstrtabns_mc44s803_attach }, section "___ksymtab+mc44s803_attach", align 4
@__UNIQUE_ID_author290 = internal constant [33 x i8] c"mc44s803.author=Jochen Friedrich\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [61 x i8] c"mc44s803.description=Freescale MC44S803 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [44 x i8] c"mc44s803.file=drivers/media/tuners/mc44s803\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"mc44s803.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mc44s803_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014mc44s803: I2C read failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mc44s803_readreg\00", [47 x i8] zeroinitializer }, align 32
@mc44s803_readreg._entry_ptr = internal global ptr @mc44s803_readreg._entry, section ".printk_index", align 4
@mc44s803_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014mc44s803: I2C write failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc44s803_writereg\00", [46 x i8] zeroinitializer }, align 32
@mc44s803_writereg._entry_ptr = internal global ptr @mc44s803_writereg._entry, section ".printk_index", align 4
@mc44s803_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014mc44s803: I/O Error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mc44s803_init\00", [18 x i8] zeroinitializer }, align 32
@mc44s803_init._entry_ptr = internal global ptr @mc44s803_init._entry, section ".printk_index", align 4
@mc44s803_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mc44s803_set_params\00", [44 x i8] zeroinitializer }, align 32
@mc44s803_set_params._entry_ptr = internal global ptr @mc44s803_set_params._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 336, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 341, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"mc44s803_tuner_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 291, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 60, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 35, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 197, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [35 x i8] c"../drivers/media/tuners/mc44s803.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 274, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_mc44s803_attach, ptr @mc44s803_attach._entry, ptr @mc44s803_attach._entry.3, ptr @mc44s803_attach._entry_ptr, ptr @mc44s803_attach._entry_ptr.5, ptr @mc44s803_init._entry, ptr @mc44s803_init._entry_ptr, ptr @mc44s803_readreg._entry, ptr @mc44s803_readreg._entry_ptr, ptr @mc44s803_set_params._entry, ptr @mc44s803_set_params._entry_ptr, ptr @mc44s803_writereg._entry, ptr @mc44s803_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @mc44s803_tuner_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc44s803_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mc44s803_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.mc44s803_priv, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %fe3 = getelementptr inbounds %struct.mc44s803_priv, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %fe3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fe, ptr %fe3, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buf.i, align 1, !annotation !49
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !49
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i, ptr %buf1.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %14, align 1
  %conv.i.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %buf.i.i, align 1
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %20, align 1
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -5, ptr %21, align 1
  %32 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c2, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i, label %mc44s803_writereg.exit.i

mc44s803_writereg.exit.i:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  br label %mc44s803_readreg.exit.thread

if.end.i:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %34 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c2, align 4
  %call4.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.not.i, label %if.end12, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %mc44s803_readreg.exit.thread

mc44s803_readreg.exit.thread:                     ; preds = %do.end.i, %mc44s803_writereg.exit.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %error

if.end12:                                         ; preds = %if.end.i
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %38 = lshr i8 %37, 1
  %39 = and i8 %38, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %39)
  %cmp14.not = icmp eq i8 %39, 20
  br i1 %cmp14.not, label %do.end22, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %39 to i32
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %error

do.end22:                                         ; preds = %if.end12
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 20) #11
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %40 = call ptr @memcpy(ptr %tuner_ops, ptr @mc44s803_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %41 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %42 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool29.not = icmp eq ptr %43, null
  br i1 %tobool29.not, label %do.end22.cleanup_crit_edge, label %if.then30

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 %43(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

error:                                            ; preds = %do.end, %mc44s803_readreg.exit.thread
  %44 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool37.not = icmp eq ptr %45, null
  br i1 %tobool37.not, label %error.if.end42_crit_edge, label %if.then38

error.if.end42_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then38:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 %45(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %error.if.end42_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then30, %do.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end42 ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.then30 ], [ %fe, %do.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc44s803_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc44s803_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i222 = alloca [3 x i8], align 1
  %msg.i223 = alloca %struct.i2c_msg, align 4
  %buf.i209 = alloca [3 x i8], align 1
  %msg.i210 = alloca %struct.i2c_msg, align 4
  %buf.i191 = alloca [3 x i8], align 1
  %msg.i192 = alloca %struct.i2c_msg, align 4
  %buf.i178 = alloca [3 x i8], align 1
  %msg.i179 = alloca %struct.i2c_msg, align 4
  %buf.i165 = alloca [3 x i8], align 1
  %msg.i166 = alloca %struct.i2c_msg, align 4
  %buf.i152 = alloca [3 x i8], align 1
  %msg.i153 = alloca %struct.i2c_msg, align 4
  %buf.i139 = alloca [3 x i8], align 1
  %msg.i140 = alloca %struct.i2c_msg, align 4
  %buf.i126 = alloca [3 x i8], align 1
  %msg.i127 = alloca %struct.i2c_msg, align 4
  %buf.i113 = alloca [3 x i8], align 1
  %msg.i114 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262143, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buf.i, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 20, ptr %5, align 1
  %i2c.i = getelementptr inbounds %struct.mc44s803_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end6, label %mc44s803_writereg.exit

mc44s803_writereg.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %exit

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i113) #7
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i113, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i113, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114) #7
  %22 = getelementptr inbounds i8, ptr %msg.i114, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i115 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i114 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i115, ptr %msg.i114, align 4
  %flags.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i116 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i116, align 2
  %buf1.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 3
  %30 = ptrtoint ptr %buf1.i118 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i113, ptr %buf1.i118, align 4
  %31 = ptrtoint ptr %buf.i113 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buf.i113, align 1
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %20, align 1
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %21, align 1
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  %call.i120 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i114, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 1
  br i1 %cmp.not.i121, label %if.end10, label %mc44s803_writereg.exit125

mc44s803_writereg.exit125:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i113) #7
  br label %exit

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i113) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i126) #7
  %36 = getelementptr inbounds [3 x i8], ptr %buf.i126, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %buf.i126, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i127) #7
  %38 = getelementptr inbounds i8, ptr %msg.i127, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262143, ptr %38, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv.i128 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i127 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i128, ptr %msg.i127, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i129, align 2
  %buf1.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 3
  %46 = ptrtoint ptr %buf1.i131 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i126, ptr %buf1.i131, align 4
  %47 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %buf.i126, align 1
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 44, ptr %36, align 1
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %37, align 1
  %50 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c.i, align 4
  %call.i133 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i127, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i133)
  %cmp.not.i134 = icmp eq i32 %call.i133, 1
  br i1 %cmp.not.i134, label %if.end14, label %mc44s803_writereg.exit138

mc44s803_writereg.exit138:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i126) #7
  br label %exit

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i126) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i139) #7
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i139, i32 0, i32 1
  %53 = getelementptr inbounds [3 x i8], ptr %buf.i139, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i140) #7
  %54 = getelementptr inbounds i8, ptr %msg.i140, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 262143, ptr %54, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv.i141 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i140 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i141, ptr %msg.i140, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i142, align 2
  %buf1.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 3
  %62 = ptrtoint ptr %buf1.i144 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf.i139, ptr %buf1.i144, align 4
  %63 = ptrtoint ptr %buf.i139 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %buf.i139, align 1
  %64 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 32, ptr %52, align 1
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %53, align 1
  %66 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c.i, align 4
  %call.i146 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i140, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i146)
  %cmp.not.i147 = icmp eq i32 %call.i146, 1
  br i1 %cmp.not.i147, label %if.end18, label %mc44s803_writereg.exit151

mc44s803_writereg.exit151:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i139) #7
  br label %exit

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i139) #7
  call void @msleep(i32 noundef 10) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i152) #7
  %68 = getelementptr inbounds [3 x i8], ptr %buf.i152, i32 0, i32 1
  %69 = getelementptr inbounds [3 x i8], ptr %buf.i152, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i153) #7
  %70 = getelementptr inbounds i8, ptr %msg.i153, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 262143, ptr %70, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv.i154 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i153 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i154, ptr %msg.i153, align 4
  %flags.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i155 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i155, align 2
  %buf1.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153, i32 0, i32 3
  %78 = ptrtoint ptr %buf1.i157 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i152, ptr %buf1.i157, align 4
  %79 = ptrtoint ptr %buf.i152 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %buf.i152, align 1
  %80 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 36, ptr %68, align 1
  %81 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %69, align 1
  %82 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c.i, align 4
  %call.i159 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i153, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i159)
  %cmp.not.i160 = icmp eq i32 %call.i159, 1
  br i1 %cmp.not.i160, label %if.end22, label %mc44s803_writereg.exit164

mc44s803_writereg.exit164:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i153) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i152) #7
  br label %exit

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i153) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i152) #7
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i165) #7
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i165, i32 0, i32 1
  %85 = getelementptr inbounds [3 x i8], ptr %buf.i165, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166) #7
  %86 = getelementptr inbounds i8, ptr %msg.i166, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 262143, ptr %86, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  %conv.i167 = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i166 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i167, ptr %msg.i166, align 4
  %flags.i168 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i168 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i168, align 2
  %buf1.i170 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 3
  %94 = ptrtoint ptr %buf1.i170 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i165, ptr %buf1.i170, align 4
  %95 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 15, ptr %buf.i165, align 1
  %96 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -28, ptr %84, align 1
  %97 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %85, align 1
  %98 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c.i, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i166, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp.not.i173, label %if.end26, label %mc44s803_writereg.exit177

mc44s803_writereg.exit177:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i165) #7
  br label %exit

if.end26:                                         ; preds = %if.end22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i165) #7
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %dig_out = getelementptr inbounds %struct.mc44s803_config, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dig_out to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dig_out, align 1
  %shl = shl i8 %103, 4
  %and = and i8 %shl, 16
  %or29 = or i8 %and, 103
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i178) #7
  %104 = getelementptr inbounds [3 x i8], ptr %buf.i178, i32 0, i32 1
  %105 = getelementptr inbounds [3 x i8], ptr %buf.i178, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i179) #7
  %106 = getelementptr inbounds i8, ptr %msg.i179, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 262143, ptr %106, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %conv.i180 = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i179 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i180, ptr %msg.i179, align 4
  %flags.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i181 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i181, align 2
  %buf1.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179, i32 0, i32 3
  %114 = ptrtoint ptr %buf1.i183 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buf.i178, ptr %buf1.i183, align 4
  %115 = ptrtoint ptr %buf.i178 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 24, ptr %buf.i178, align 1
  %116 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %or29, ptr %104, align 1
  %117 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -89, ptr %105, align 1
  %118 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i2c.i, align 4
  %call.i185 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i179, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i185)
  %cmp.not.i186 = icmp eq i32 %call.i185, 1
  br i1 %cmp.not.i186, label %if.end33, label %mc44s803_writereg.exit190

mc44s803_writereg.exit190:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i179) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i178) #7
  br label %exit

if.end33:                                         ; preds = %if.end26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i179) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i178) #7
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %dig_out35 = getelementptr inbounds %struct.mc44s803_config, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %dig_out35 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %dig_out35, align 1
  %shl37 = shl i8 %123, 4
  %and38 = and i8 %shl37, 16
  %or40 = or i8 %and38, 103
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i191) #7
  %124 = getelementptr inbounds [3 x i8], ptr %buf.i191, i32 0, i32 1
  %125 = getelementptr inbounds [3 x i8], ptr %buf.i191, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i192) #7
  %126 = getelementptr inbounds i8, ptr %msg.i192, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 262143, ptr %126, align 4
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 1
  %conv.i193 = zext i8 %131 to i16
  %132 = ptrtoint ptr %msg.i192 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i193, ptr %msg.i192, align 4
  %flags.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i194, align 2
  %buf1.i196 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 3
  %134 = ptrtoint ptr %buf1.i196 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %buf.i191, ptr %buf1.i196, align 4
  %135 = ptrtoint ptr %buf.i191 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %buf.i191, align 1
  %136 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %or40, ptr %124, align 1
  %137 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -89, ptr %125, align 1
  %138 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i2c.i, align 4
  %call.i203 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i192, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i203)
  %cmp.not.i204 = icmp eq i32 %call.i203, 1
  br i1 %cmp.not.i204, label %if.end44, label %mc44s803_writereg.exit208

mc44s803_writereg.exit208:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i191) #7
  br label %exit

if.end44:                                         ; preds = %if.end33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i191) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i209) #7
  %140 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 1
  %141 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i210) #7
  %142 = getelementptr inbounds i8, ptr %msg.i210, i32 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 262143, ptr %142, align 4
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %145, align 1
  %conv.i211 = zext i8 %147 to i16
  %148 = ptrtoint ptr %msg.i210 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i211, ptr %msg.i210, align 4
  %flags.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i212 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i212, align 2
  %buf1.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210, i32 0, i32 3
  %150 = ptrtoint ptr %buf1.i214 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %buf.i209, ptr %buf1.i214, align 4
  %151 = ptrtoint ptr %buf.i209 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %buf.i209, align 1
  %152 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 3, ptr %140, align 1
  %153 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 9, ptr %141, align 1
  %154 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i2c.i, align 4
  %call.i216 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i210, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i216)
  %cmp.not.i217 = icmp eq i32 %call.i216, 1
  br i1 %cmp.not.i217, label %if.end48, label %mc44s803_writereg.exit221

mc44s803_writereg.exit221:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i209) #7
  br label %exit

if.end48:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i209) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i222) #7
  %156 = getelementptr inbounds [3 x i8], ptr %buf.i222, i32 0, i32 1
  %157 = getelementptr inbounds [3 x i8], ptr %buf.i222, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i223) #7
  %158 = getelementptr inbounds i8, ptr %msg.i223, i32 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 262143, ptr %158, align 4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 1
  %conv.i224 = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i223 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i224, ptr %msg.i223, align 4
  %flags.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i223, i32 0, i32 1
  %165 = ptrtoint ptr %flags.i225 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flags.i225, align 2
  %buf1.i227 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i223, i32 0, i32 3
  %166 = ptrtoint ptr %buf1.i227 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %buf.i222, ptr %buf1.i227, align 4
  %167 = ptrtoint ptr %buf.i222 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 13, ptr %buf.i222, align 1
  %168 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 12, ptr %156, align 1
  %169 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 10, ptr %157, align 1
  %170 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c.i, align 4
  %call.i229 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i223, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i229)
  %cmp.not.i230 = icmp eq i32 %call.i229, 1
  br i1 %cmp.not.i230, label %if.end52, label %mc44s803_writereg.exit234

mc44s803_writereg.exit234:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i223) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i222) #7
  br label %exit

if.end52:                                         ; preds = %if.end48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i223) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i222) #7
  %172 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool55.not = icmp eq ptr %173, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.then56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = call i32 %173(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

exit:                                             ; preds = %mc44s803_writereg.exit234, %mc44s803_writereg.exit221, %mc44s803_writereg.exit208, %mc44s803_writereg.exit190, %mc44s803_writereg.exit177, %mc44s803_writereg.exit164, %mc44s803_writereg.exit151, %mc44s803_writereg.exit138, %mc44s803_writereg.exit125, %mc44s803_writereg.exit
  %174 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool63.not = icmp eq ptr %175, null
  br i1 %tobool63.not, label %exit.do.end_crit_edge, label %if.then64

exit.do.end_crit_edge:                            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then64:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 %175(ptr noundef %fe, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %if.then64, %exit.do.end_crit_edge
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then56, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.then56 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc44s803_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i174 = alloca [3 x i8], align 1
  %msg.i175 = alloca %struct.i2c_msg, align 4
  %buf.i156 = alloca [3 x i8], align 1
  %msg.i157 = alloca %struct.i2c_msg, align 4
  %buf.i138 = alloca [3 x i8], align 1
  %msg.i139 = alloca %struct.i2c_msg, align 4
  %buf.i125 = alloca [3 x i8], align 1
  %msg.i126 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %frequency1 = getelementptr inbounds %struct.mc44s803_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %frequency1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency1, align 4
  %5 = load i32, ptr %dtv_property_cache, align 4
  %add3 = add i32 %5, 1086500000
  %div = udiv i32 %add3, 1000000
  %mul = mul nuw i32 %div, 1000000
  %mul5 = mul nuw nsw i32 %div, 60
  %add7 = add nuw nsw i32 %mul5, 13
  %div8 = udiv i32 %add7, 26
  %sub = sub i32 -36075000, %5
  %add11 = add i32 %sub, %mul
  %div12 = udiv i32 %add11, 100000
  %mul13 = mul nuw nsw i32 %div12, 60
  %add15 = add nuw nsw i32 %mul13, 130
  %div16 = udiv i32 %add15, 260
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %7(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262143, ptr %10, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf1.i, align 4
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %buf.i, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 112, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 50, ptr %9, align 1
  %i2c.i = getelementptr inbounds %struct.mc44s803_priv, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end28, label %mc44s803_writereg.exit

mc44s803_writereg.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %exit

if.end28:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %sub29 = shl nuw nsw i32 %div, 4
  %shl30 = add nuw nsw i32 %sub29, 65504
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i125) #7
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i125, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i125, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i126) #7
  %26 = getelementptr inbounds i8, ptr %msg.i126, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262143, ptr %26, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i127 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i126 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i127, ptr %msg.i126, align 4
  %flags.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i128, align 2
  %buf1.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 3
  %34 = ptrtoint ptr %buf1.i130 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i125, ptr %buf1.i130, align 4
  %35 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %buf.i125, align 1
  %and3.i = lshr i32 %shl30, 8
  %conv5.i = trunc i32 %and3.i to i8
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv5.i, ptr %24, align 1
  %37 = trunc i32 %shl30 to i8
  %conv8.i = or i8 %37, 5
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv8.i, ptr %25, align 1
  %39 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c.i, align 4
  %call.i132 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i126, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i132)
  %cmp.not.i133 = icmp eq i32 %call.i132, 1
  br i1 %cmp.not.i133, label %if.end36, label %mc44s803_writereg.exit137

mc44s803_writereg.exit137:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i125) #7
  br label %exit

if.end36:                                         ; preds = %if.end28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i125) #7
  %sub37 = shl nuw nsw i32 %div12, 4
  %shl38 = add nuw nsw i32 %sub37, 524256
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i138) #7
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i138, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %buf.i138, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i139) #7
  %43 = getelementptr inbounds i8, ptr %msg.i139, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 262143, ptr %43, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.i140 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i139 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i140, ptr %msg.i139, align 4
  %flags.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i141 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i141, align 2
  %buf1.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 3
  %51 = ptrtoint ptr %buf1.i143 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i138, ptr %buf1.i143, align 4
  %and39 = lshr i32 %shl38, 16
  %52 = trunc i32 %and39 to i8
  %conv2.i145 = and i8 %52, 7
  %53 = ptrtoint ptr %buf.i138 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv2.i145, ptr %buf.i138, align 1
  %and3.i146 = lshr i32 %shl38, 8
  %conv5.i147 = trunc i32 %and3.i146 to i8
  %54 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv5.i147, ptr %41, align 1
  %55 = trunc i32 %shl38 to i8
  %conv8.i148 = or i8 %55, 6
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv8.i148, ptr %42, align 1
  %57 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c.i, align 4
  %call.i150 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i139, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 1
  br i1 %cmp.not.i151, label %if.end44, label %mc44s803_writereg.exit155

mc44s803_writereg.exit155:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i138) #7
  br label %exit

if.end44:                                         ; preds = %if.end36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i138) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i156) #7
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i156, i32 0, i32 1
  %60 = getelementptr inbounds [3 x i8], ptr %buf.i156, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i157) #7
  %61 = getelementptr inbounds i8, ptr %msg.i157, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 262143, ptr %61, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i158 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i157 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i158, ptr %msg.i157, align 4
  %flags.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i157, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i159, align 2
  %buf1.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i157, i32 0, i32 3
  %69 = ptrtoint ptr %buf1.i161 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.i156, ptr %buf1.i161, align 4
  %and46 = lshr i32 %div8, 8
  %70 = trunc i32 %and46 to i8
  %71 = and i8 %70, 31
  %conv2.i163 = or i8 %71, 32
  %72 = ptrtoint ptr %buf.i156 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv2.i163, ptr %buf.i156, align 1
  %conv5.i165 = trunc i32 %div8 to i8
  %73 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv5.i165, ptr %59, align 1
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 25, ptr %60, align 1
  %75 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c.i, align 4
  %call.i168 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i157, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i168)
  %cmp.not.i169 = icmp eq i32 %call.i168, 1
  br i1 %cmp.not.i169, label %if.end52, label %mc44s803_writereg.exit173

mc44s803_writereg.exit173:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i157) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i156) #7
  br label %exit

if.end52:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i157) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i156) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i174) #7
  %77 = getelementptr inbounds [3 x i8], ptr %buf.i174, i32 0, i32 1
  %78 = getelementptr inbounds [3 x i8], ptr %buf.i174, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i175) #7
  %79 = getelementptr inbounds i8, ptr %msg.i175, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 262143, ptr %79, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i176 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i175 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i176, ptr %msg.i175, align 4
  %flags.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i177, align 2
  %buf1.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 0, i32 3
  %87 = ptrtoint ptr %buf1.i179 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i174, ptr %buf1.i179, align 4
  %and54 = lshr i32 %div16, 8
  %88 = trunc i32 %and54 to i8
  %89 = and i8 %88, 31
  %conv2.i181 = or i8 %89, 32
  %90 = ptrtoint ptr %buf.i174 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv2.i181, ptr %buf.i174, align 1
  %conv5.i183 = trunc i32 %div16 to i8
  %91 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv5.i183, ptr %77, align 1
  %92 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 41, ptr %78, align 1
  %93 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c.i, align 4
  %call.i186 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i175, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i186)
  %cmp.not.i187 = icmp eq i32 %call.i186, 1
  br i1 %cmp.not.i187, label %if.end60, label %mc44s803_writereg.exit191

mc44s803_writereg.exit191:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i175) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i174) #7
  br label %exit

if.end60:                                         ; preds = %if.end52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i175) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i174) #7
  %95 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool63.not = icmp eq ptr %96, null
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %if.then64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 %96(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

exit:                                             ; preds = %mc44s803_writereg.exit191, %mc44s803_writereg.exit173, %mc44s803_writereg.exit155, %mc44s803_writereg.exit137, %mc44s803_writereg.exit
  %97 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool71.not = icmp eq ptr %98, null
  br i1 %tobool71.not, label %exit.do.end_crit_edge, label %if.then72

exit.do.end_crit_edge:                            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then72:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 %98(ptr noundef %fe, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %if.then72, %exit.do.end_crit_edge
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then64, %if.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.then64 ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mc44s803_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.mc44s803_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mc44s803_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 36125000, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mc44s803.c", i32 336, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mc44s803_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mc44s803_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/tuners/mc44s803.c", i32 341, i32 2}
!8 = !{ptr @mc44s803_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mc44s803_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mc44s803_attach, !11, !"__ksymtab_mc44s803_attach", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/mc44s803.c", i32 359, i32 1}
!12 = !{ptr @__UNIQUE_ID_author290, !13, !"__UNIQUE_ID_author290", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/mc44s803.c", i32 361, i32 1}
!14 = !{ptr @__UNIQUE_ID_description291, !15, !"__UNIQUE_ID_description291", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/mc44s803.c", i32 362, i32 1}
!16 = !{ptr @__UNIQUE_ID_file292, !17, !"__UNIQUE_ID_file292", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/mc44s803.c", i32 363, i32 1}
!18 = !{ptr @__UNIQUE_ID_license293, !17, !"__UNIQUE_ID_license293", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/mc44s803.c", i32 60, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mc44s803_readreg._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mc44s803_readreg._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/mc44s803.c", i32 35, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mc44s803_writereg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mc44s803_writereg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mc44s803_tuner_ops, !30, !"mc44s803_tuner_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/mc44s803.c", i32 291, i32 35}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/mc44s803.c", i32 197, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mc44s803_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mc44s803_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/mc44s803.c", i32 274, i32 2}
!38 = !{ptr @mc44s803_set_params._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mc44s803_set_params._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}

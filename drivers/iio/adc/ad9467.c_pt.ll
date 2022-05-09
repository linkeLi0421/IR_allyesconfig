; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad9467.c_pt.bc'
source_filename = "../drivers/iio/adc/ad9467.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad9467_chip_info = type { %struct.adi_axi_adc_chip_info, i32, i32 }
%struct.adi_axi_adc_chip_info = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.ad9467_state = type { ptr, ptr, i32, ptr, ptr }
%struct.adi_axi_adc_conv = type { ptr, ptr, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ad9467__230_472_ad9467_driver_init6 = internal global ptr @ad9467_driver_init, section ".initcall6.init", align 4
@ad9467_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad9467_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad9467_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad9467_driver_exit = internal global ptr @ad9467_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [63 x i8] c"ad9467.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [52 x i8] c"ad9467.description=Analog Devices AD9467 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"ad9467.file=drivers/iio/adc/ad9467\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"ad9467.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad9467\00", [25 x i8] zeroinitializer }, align 32
@ad9467_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9265\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad9467_chip_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9434\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad9467_chip_tbl, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9467\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad9467_chip_tbl, i64 72) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ad9467_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 442, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mismatch CHIP_ID, got 0x%X, expected 0x%X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad9467_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad9467.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad9467_probe._entry_ptr = internal global ptr @ad9467_probe._entry, section ".printk_index", align 4
@ad9467_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 352, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error setting ADC sample rate %ld\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad9467_write_raw\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad9467_write_raw._entry_ptr = internal global ptr @ad9467_write_raw._entry, section ".printk_index", align 4
@ad9467_chip_tbl = internal constant { [3 x %struct.ad9467_chip_info], [52 x i8] } { [3 x %struct.ad9467_chip_info] [%struct.ad9467_chip_info { %struct.adi_axi_adc_chip_info { ptr null, i32 100, ptr @ad9467_channels, i32 1, ptr @ad9265_scale_table, i32 4, i32 125000000 }, i32 64, i32 192 }, %struct.ad9467_chip_info { %struct.adi_axi_adc_chip_info { ptr null, i32 106, ptr @ad9434_channels, i32 1, ptr @ad9434_scale_table, i32 17, i32 500000000 }, i32 0, i32 192 }, %struct.ad9467_chip_info { %struct.adi_axi_adc_chip_info { ptr null, i32 80, ptr @ad9467_channels, i32 1, ptr @ad9467_scale_table, i32 6, i32 250000000 }, i32 8, i32 15 }], [52 x i8] zeroinitializer }, align 32
@ad9467_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 83, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad9265_scale_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 1250, i32 0], [2 x i32] [i32 1500, i32 64], [2 x i32] [i32 1750, i32 128], [2 x i32] [i32 2000, i32 192]], [32 x i8] zeroinitializer }, align 32
@ad9434_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 83, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad9434_scale_table = internal constant { [17 x [2 x i32]], [56 x i8] } { [17 x [2 x i32]] [[2 x i32] [i32 1600, i32 28], [2 x i32] [i32 1580, i32 29], [2 x i32] [i32 1550, i32 30], [2 x i32] [i32 1520, i32 31], [2 x i32] [i32 1500, i32 0], [2 x i32] [i32 1470, i32 1], [2 x i32] [i32 1440, i32 2], [2 x i32] [i32 1420, i32 3], [2 x i32] [i32 1390, i32 4], [2 x i32] [i32 1360, i32 5], [2 x i32] [i32 1340, i32 6], [2 x i32] [i32 1310, i32 7], [2 x i32] [i32 1280, i32 8], [2 x i32] [i32 1260, i32 9], [2 x i32] [i32 1230, i32 10], [2 x i32] [i32 1200, i32 11], [2 x i32] [i32 1180, i32 12]], [56 x i8] zeroinitializer }, align 32
@ad9467_scale_table = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 2000, i32 0], [2 x i32] [i32 2100, i32 6], [2 x i32] [i32 2200, i32 7], [2 x i32] [i32 2300, i32 8], [2 x i32] [i32 2400, i32 9], [2 x i32] [i32 2500, i32 10]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ad9467_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 465, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 467, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"ad9467_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 457, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 407, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 419, i32 56 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 424, i32 54 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 441, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 351, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ad9467_chip_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 231, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ad9467_channels\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 227, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"ad9265_scale_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 179, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"ad9434_channels\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 223, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"ad9434_scale_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 183, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"ad9467_scale_table\00", align 1
@___asan_gen_.77 = private constant [28 x i8] c"../drivers/iio/adc/ad9467.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 190, i32 27 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad9467_driver_exit, ptr @__initcall__kmod_ad9467__230_472_ad9467_driver_init6, ptr @ad9467_driver_exit, ptr @ad9467_probe._entry, ptr @ad9467_probe._entry_ptr, ptr @ad9467_write_raw._entry, ptr @ad9467_write_raw._entry_ptr, ptr @ad9467_driver, ptr @.str, ptr @ad9467_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ad9467_chip_tbl, ptr @ad9467_channels, ptr @ad9265_scale_table, ptr @ad9434_channels, ptr @ad9434_scale_table, ptr @ad9467_scale_table], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_chip_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9265_scale_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9434_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9434_scale_table to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9467_scale_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad9467_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad9467_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad9467_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_adi_axi_adc_conv_register(ptr noundef %spi, i32 noundef 20) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %call2) #5
  %1 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call7, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %clk = getelementptr inbounds %struct.ad9467_state, ptr %call7, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %clk, align 4
  %cmp.i106 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call.i = tail call i32 @clk_prepare(ptr noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.clk_prepare_enable.exit_crit_edge

if.end16.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end21_crit_edge, label %if.then3.i

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call10) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end16.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end16.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end21_crit_edge

clk_prepare_enable.exit.if.end21_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %clk_prepare_enable.exit.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %call.i107 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9467_clk_disable, ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end26, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call28 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 3) #5
  %pwrdown_gpio = getelementptr inbounds %struct.ad9467_state, ptr %call7, i32 0, i32 3
  %6 = ptrtoint ptr %pwrdown_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call28, ptr %pwrdown_gpio, align 4
  %cmp.i110 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call36 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.ad9467_state, ptr %call7, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call36, ptr %reset_gpio, align 4
  %cmp.i111 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %tobool44.not = icmp eq ptr %call36, null
  br i1 %tobool44.not, label %if.end42.if.end52_crit_edge, label %if.then45

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then45:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_gpio, align 4
  %call47 = tail call i32 @gpiod_direction_output(ptr noundef %12, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %while.body.preheader, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.preheader:                             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  br label %if.end52

if.end52:                                         ; preds = %while.body.preheader, %if.end42.if.end52_crit_edge
  %23 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %call2, align 4
  %call53 = tail call fastcc i32 @ad9467_spi_read(ptr noundef %spi, i32 noundef 1)
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call2, align 4
  %id55 = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %id55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %27)
  %cmp56.not = icmp eq i32 %call53, %27
  br i1 %cmp56.not, label %if.end62, label %do.end

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %call53, i32 noundef %27) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %reg_access = getelementptr inbounds %struct.adi_axi_adc_conv, ptr %call2, i32 0, i32 2
  %28 = ptrtoint ptr %reg_access to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ad9467_reg_access, ptr %reg_access, align 4
  %write_raw = getelementptr inbounds %struct.adi_axi_adc_conv, ptr %call2, i32 0, i32 4
  %29 = ptrtoint ptr %write_raw to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ad9467_write_raw, ptr %write_raw, align 4
  %read_raw = getelementptr inbounds %struct.adi_axi_adc_conv, ptr %call2, i32 0, i32 3
  %30 = ptrtoint ptr %read_raw to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ad9467_read_raw, ptr %read_raw, align 4
  %preenable_setup = getelementptr inbounds %struct.adi_axi_adc_conv, ptr %call2, i32 0, i32 1
  %31 = ptrtoint ptr %preenable_setup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ad9467_preenable_setup, ptr %preenable_setup, align 4
  %default_output_mode = getelementptr inbounds %struct.ad9467_chip_info, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %default_output_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %default_output_mode, align 4
  %or = or i32 %33, 1
  %output_mode = getelementptr inbounds %struct.ad9467_state, ptr %call7, i32 0, i32 2
  %34 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %output_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end, %if.then45.cleanup_crit_edge, %if.then39, %if.then31, %devm_add_action_or_reset.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then13, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %3, %if.then13 ], [ %7, %if.then31 ], [ %9, %if.then39 ], [ -19, %do.end ], [ 0, %if.end62 ], [ -19, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i107, %devm_add_action_or_reset.exit ], [ %call47, %if.then45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_adi_axi_adc_conv_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adi_axi_adc_conv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9467_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ad9467_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9467_spi_read(ptr noundef %spi, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %tbuf = alloca [2 x i8], align 1
  %rbuf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tbuf) #5
  %0 = getelementptr inbounds [2 x i8], ptr %tbuf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbuf) #5
  %1 = ptrtoint ptr %rbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rbuf, align 1, !annotation !57
  %shr = lshr i32 %reg, 8
  %2 = trunc i32 %shr to i8
  %conv = or i8 %2, -128
  %3 = ptrtoint ptr %tbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %tbuf, align 1
  %conv1 = trunc i32 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %0, align 1
  %call = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %tbuf, i32 noundef 2, ptr noundef nonnull %rbuf, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %rbuf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rbuf, align 1
  %conv6 = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tbuf) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_reg_access(ptr noundef %conv, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %tbuf.i = alloca [2 x i8], align 1
  %rbuf.i = alloca [1 x i8], align 1
  %msg.i.i.i19 = alloca %struct.spi_message, align 4
  %t.i.i20 = alloca %struct.spi_transfer, align 4
  %buf.i21 = alloca [3 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %cmp = icmp eq ptr %readval, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #5
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %shr.i = lshr i32 %reg, 8
  %conv.i = trunc i32 %shr.i to i8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %buf.i, align 1
  %conv1.i = trunc i32 %reg to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %2, align 1
  %conv3.i = trunc i32 %writeval to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.ad9467_spi_write.exit_crit_edge

if.then.ad9467_spi_write.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad9467_spi_write.exit

ad9467_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %if.then.ad9467_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i21) #5
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i21, i32 0, i32 1
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i21, i32 0, i32 2
  %23 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf.i21, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %21, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i20) #5
  %26 = getelementptr inbounds i8, ptr %t.i.i20, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i21, ptr %t.i.i20, align 4
  %len1.i.i22 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i.i22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len1.i.i22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i19) #5
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i19, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i.i19, ptr %msg.i.i.i19, align 4
  %prev.i.i.i.i.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i19, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i19, ptr %prev.i.i.i.i.i.i.i23, align 4
  %resources.i.i.i.i.i.i24 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i19, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i.i24, ptr %resources.i.i.i.i.i.i24, align 4
  %prev.i2.i.i.i.i.i.i25 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i19, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i.i24, ptr %prev.i2.i.i.i.i.i.i25, align 4
  %transfer_list.i.i.i.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 18
  %call.i.i.i.i.i.i.i27 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i26, ptr noundef nonnull %msg.i.i.i19, ptr noundef nonnull %msg.i.i.i19) #5
  br i1 %call.i.i.i.i.i.i.i27, label %if.end.i.i.i.i.i.i.i29, label %ad9467_spi_write.exit.ad9467_spi_write.exit31_crit_edge

ad9467_spi_write.exit.ad9467_spi_write.exit31_crit_edge: ; preds = %ad9467_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit31

if.end.i.i.i.i.i.i.i29:                           ; preds = %ad9467_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i.i26, ptr %prev.i.i.i.i.i.i.i23, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i19, ptr %transfer_list.i.i.i.i.i26, align 4
  %prev3.i.i.i.i.i.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i19, ptr %prev3.i.i.i.i.i.i.i28, align 4
  %39 = ptrtoint ptr %msg.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i.i26, ptr %msg.i.i.i19, align 4
  br label %ad9467_spi_write.exit31

ad9467_spi_write.exit31:                          ; preds = %if.end.i.i.i.i.i.i.i29, %ad9467_spi_write.exit.ad9467_spi_write.exit31_crit_edge
  %call.i.i.i30 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i19) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i19) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i20) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i21) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tbuf.i) #5
  %40 = getelementptr inbounds [2 x i8], ptr %tbuf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbuf.i) #5
  %41 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %rbuf.i, align 1, !annotation !57
  %shr.i32 = lshr i32 %reg, 8
  %42 = trunc i32 %shr.i32 to i8
  %conv.i33 = or i8 %42, -128
  %43 = ptrtoint ptr %tbuf.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i33, ptr %tbuf.i, align 1
  %conv1.i34 = trunc i32 %reg to i8
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv1.i34, ptr %40, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %tbuf.i, i32 noundef 2, ptr noundef nonnull %rbuf.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ad9467_spi_read.exit.thread, label %ad9467_spi_read.exit

ad9467_spi_read.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tbuf.i) #5
  br label %cleanup

ad9467_spi_read.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rbuf.i, align 1
  %conv6.i = zext i8 %46 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tbuf.i) #5
  %47 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv6.i, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %ad9467_spi_read.exit, %ad9467_spi_read.exit.thread, %ad9467_spi_write.exit31
  %retval.0 = phi i32 [ %call.i.i.i, %ad9467_spi_write.exit31 ], [ 0, %ad9467_spi_read.exit ], [ %call.i, %ad9467_spi_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_write_raw(ptr noundef %conv, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i30.i = alloca %struct.spi_message, align 4
  %t.i.i31.i = alloca %struct.spi_transfer, align 4
  %buf.i32.i = alloca [3 x i8], align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conv, align 4
  %call = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conv, align 4
  %call.i = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not.i = icmp eq i32 %val, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %sw.bb
  %num_scales.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %num_scales.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scales.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp244.not.i = icmp eq i32 %6, 0
  br i1 %cmp244.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %7 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conv, align 4
  %channels.i.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels.i.i, align 4
  %scale_table.i.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %scale_table.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scale_table.i.i, align 4
  %realbits.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %10, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %realbits.i.i, align 1
  %sh_prom.i.i = zext i8 %14 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [2 x i32], ptr %12, i32 %i.045.i
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i.i, align 4
  %conv3.i.i = zext i32 %16 to i64
  %mul.i.i = mul nuw nsw i64 %conv3.i.i, 1000000
  %shr.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv5.i.i = trunc i64 %shr.i.i to i32
  %rem.i.i = urem i32 %conv5.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %conv5.i.i)
  %17 = icmp ult i32 %conv5.i.i, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %val2)
  %cmp9.not.i = icmp eq i32 %rem.i.i, %val2
  %or.cond.i = and i1 %17, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %scale_table.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %scale_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scale_table.i, align 4
  %arrayidx14.i = getelementptr [2 x i32], ptr %21, i32 %i.045.i, i32 1
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #5
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %buf.i.i, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 24, ptr %24, align 1
  %conv3.i29.i = trunc i32 %23 to i8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i29.i, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %29 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 92)
  %31 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %33 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end12.i.ad9467_spi_write.exit.i_crit_edge

if.end12.i.ad9467_spi_write.exit.i_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad9467_spi_write.exit.i

ad9467_spi_write.exit.i:                          ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end12.i.ad9467_spi_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i32.i) #5
  %45 = getelementptr inbounds [3 x i8], ptr %buf.i32.i, i32 0, i32 1
  %46 = getelementptr inbounds [3 x i8], ptr %buf.i32.i, i32 0, i32 2
  %47 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %buf.i32.i, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %45, align 1
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i31.i) #5
  %50 = getelementptr inbounds i8, ptr %t.i.i31.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 92)
  %52 = ptrtoint ptr %t.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i32.i, ptr %t.i.i31.i, align 4
  %len1.i.i33.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31.i, i32 0, i32 2
  %53 = ptrtoint ptr %len1.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %len1.i.i33.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i30.i) #5
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i30.i, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 40)
  %56 = ptrtoint ptr %msg.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %msg.i.i.i30.i, ptr %msg.i.i.i30.i, align 4
  %prev.i.i.i.i.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i30.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i.i30.i, ptr %prev.i.i.i.i.i.i.i34.i, align 4
  %resources.i.i.i.i.i.i35.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30.i, i32 0, i32 10
  %58 = ptrtoint ptr %resources.i.i.i.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %resources.i.i.i.i.i.i35.i, ptr %resources.i.i.i.i.i.i35.i, align 4
  %prev.i2.i.i.i.i.i.i36.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30.i, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %prev.i2.i.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %resources.i.i.i.i.i.i35.i, ptr %prev.i2.i.i.i.i.i.i36.i, align 4
  %transfer_list.i.i.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i38.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i37.i, ptr noundef nonnull %msg.i.i.i30.i, ptr noundef nonnull %msg.i.i.i30.i) #5
  br i1 %call.i.i.i.i.i.i.i38.i, label %if.end.i.i.i.i.i.i.i40.i, label %ad9467_spi_write.exit.i.ad9467_spi_write.exit42.i_crit_edge

ad9467_spi_write.exit.i.ad9467_spi_write.exit42.i_crit_edge: ; preds = %ad9467_spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit42.i

if.end.i.i.i.i.i.i.i40.i:                         ; preds = %ad9467_spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i.i.i.i.i37.i, ptr %prev.i.i.i.i.i.i.i34.i, align 4
  %61 = ptrtoint ptr %transfer_list.i.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i30.i, ptr %transfer_list.i.i.i.i.i37.i, align 4
  %prev3.i.i.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31.i, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i30.i, ptr %prev3.i.i.i.i.i.i.i39.i, align 4
  %63 = ptrtoint ptr %msg.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i.i.i.i.i37.i, ptr %msg.i.i.i30.i, align 4
  br label %ad9467_spi_write.exit42.i

ad9467_spi_write.exit42.i:                        ; preds = %if.end.i.i.i.i.i.i.i40.i, %ad9467_spi_write.exit.i.ad9467_spi_write.exit42.i_crit_edge
  %call.i.i.i41.i = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %msg.i.i.i30.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i30.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i31.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i32.i) #5
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.ad9467_state, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_round_rate(ptr noundef %65, i32 noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb2.do.end_crit_edge, label %lor.lhs.false

sw.bb2.do.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %sw.bb2
  %max_rate = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %67)
  %cmp5 = icmp ugt i32 %call3, %67
  br i1 %cmp5, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %sw.bb2.do.end_crit_edge
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.9, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk, align 4
  %call8 = tail call i32 @clk_set_rate(ptr noundef %71, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %for.inc.i.cleanup_crit_edge, %ad9467_spi_write.exit42.i, %for.cond.preheader.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call8, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %ad9467_spi_write.exit42.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_read_raw(ptr noundef %conv, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %tbuf.i.i = alloca [2 x i8], align 1
  %rbuf.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  %0 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conv, align 4
  %call.i = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tbuf.i.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %tbuf.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbuf.i.i) #5
  %6 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %rbuf.i.i, align 1, !annotation !57
  %7 = ptrtoint ptr %tbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %tbuf.i.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %5, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %4, ptr noundef nonnull %tbuf.i.i, i32 noundef 2, ptr noundef nonnull %rbuf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.ad9467_spi_read.exit.i_crit_edge, label %if.end.i.i

sw.bb.ad9467_spi_read.exit.i_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_read.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rbuf.i.i, align 1
  %conv6.i.i = zext i8 %10 to i32
  br label %ad9467_spi_read.exit.i

ad9467_spi_read.exit.i:                           ; preds = %if.end.i.i, %sw.bb.ad9467_spi_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.end.i.i ], [ %call.i.i, %sw.bb.ad9467_spi_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tbuf.i.i) #5
  %vref_mask.i = getelementptr inbounds %struct.ad9467_chip_info, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %vref_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vref_mask.i, align 4
  %and.i = and i32 %12, %retval.0.i.i
  %num_scales.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %num_scales.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_scales.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25.not.i = icmp eq i32 %14, 0
  br i1 %cmp25.not.i, label %ad9467_spi_read.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

ad9467_spi_read.exit.i.for.end.i_crit_edge:       ; preds = %ad9467_spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %ad9467_spi_read.exit.i
  %scale_table.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %scale_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scale_table.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [2 x i32], ptr %16, i32 %i.026.i, i32 1
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %18)
  %cmp4.i = icmp eq i32 %and.i, %18
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %ad9467_spi_read.exit.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %ad9467_spi_read.exit.i.for.end.i_crit_edge ], [ %i.026.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %14)
  %cmp7.i = icmp eq i32 %i.0.lcssa.i, %14
  br i1 %cmp7.i, label %for.end.i.cleanup_crit_edge, label %if.end10.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conv, align 4
  %channels.i.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels.i.i, align 4
  %scale_table.i.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %scale_table.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scale_table.i.i, align 4
  %arrayidx1.i.i = getelementptr [2 x i32], ptr %24, i32 %i.0.lcssa.i
  %25 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i.i, align 4
  %conv3.i.i = zext i32 %26 to i64
  %mul.i.i = mul nuw nsw i64 %conv3.i.i, 1000000
  %realbits.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %22, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %realbits.i.i, align 1
  %sh_prom.i.i = zext i8 %28 to i64
  %shr.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv5.i.i = trunc i64 %shr.i.i to i32
  %conv5.i.i.frozen = freeze i32 %conv5.i.i
  %div.i.i = udiv i32 %conv5.i.i.frozen, 1000000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i.i, ptr %val, align 4
  %30 = mul i32 %div.i.i, 1000000
  %rem.i.i.decomposed = sub i32 %conv5.i.i.frozen, %30
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rem.i.i.decomposed, ptr %val2, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.ad9467_state, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %33) #5
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call3, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.end10.i, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ], [ 2, %if.end10.i ], [ -34, %for.end.i.cleanup_crit_edge ], [ -34, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9467_preenable_setup(ptr noundef %conv) #2 align 64 {
entry:
  %msg.i.i.i4.i = alloca %struct.spi_message, align 4
  %t.i.i5.i = alloca %struct.spi_transfer, align 4
  %buf.i6.i = alloca [3 x i8], align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @adi_axi_adc_conv_priv(ptr noundef %conv) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %output_mode = getelementptr inbounds %struct.ad9467_state, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_mode, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #5
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %4, align 1
  %conv3.i.i = trunc i32 %3 to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i.i, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.ad9467_spi_write.exit.i_crit_edge

entry.ad9467_spi_write.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad9467_spi_write.exit.i

ad9467_spi_write.exit.i:                          ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.ad9467_spi_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i, label %ad9467_spi_write.exit.i.ad9467_outputmode_set.exit_crit_edge, label %if.end.i

ad9467_spi_write.exit.i.ad9467_outputmode_set.exit_crit_edge: ; preds = %ad9467_spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_outputmode_set.exit

if.end.i:                                         ; preds = %ad9467_spi_write.exit.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i6.i) #5
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i6.i, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i6.i, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf.i6.i, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i5.i) #5
  %28 = getelementptr inbounds i8, ptr %t.i.i5.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i6.i, ptr %t.i.i5.i, align 4
  %len1.i.i7.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i5.i, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %len1.i.i7.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i4.i) #5
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i4.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i.i4.i, ptr %msg.i.i.i4.i, align 4
  %prev.i.i.i.i.i.i.i8.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i4.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i4.i, ptr %prev.i.i.i.i.i.i.i8.i, align 4
  %resources.i.i.i.i.i.i9.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i4.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i.i9.i, ptr %resources.i.i.i.i.i.i9.i, align 4
  %prev.i2.i.i.i.i.i.i10.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i4.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i.i9.i, ptr %prev.i2.i.i.i.i.i.i10.i, align 4
  %transfer_list.i.i.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i5.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i12.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i11.i, ptr noundef nonnull %msg.i.i.i4.i, ptr noundef nonnull %msg.i.i.i4.i) #5
  br i1 %call.i.i.i.i.i.i.i12.i, label %if.end.i.i.i.i.i.i.i14.i, label %if.end.i.ad9467_spi_write.exit16.i_crit_edge

if.end.i.ad9467_spi_write.exit16.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad9467_spi_write.exit16.i

if.end.i.i.i.i.i.i.i14.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i.i11.i, ptr %prev.i.i.i.i.i.i.i8.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i4.i, ptr %transfer_list.i.i.i.i.i11.i, align 4
  %prev3.i.i.i.i.i.i.i13.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i5.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i4.i, ptr %prev3.i.i.i.i.i.i.i13.i, align 4
  %41 = ptrtoint ptr %msg.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i.i11.i, ptr %msg.i.i.i4.i, align 4
  br label %ad9467_spi_write.exit16.i

ad9467_spi_write.exit16.i:                        ; preds = %if.end.i.i.i.i.i.i.i14.i, %if.end.i.ad9467_spi_write.exit16.i_crit_edge
  %call.i.i.i15.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i4.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i4.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i5.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i6.i) #5
  br label %ad9467_outputmode_set.exit

ad9467_outputmode_set.exit:                       ; preds = %ad9467_spi_write.exit16.i, %ad9467_spi_write.exit.i.ad9467_outputmode_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i15.i, %ad9467_spi_write.exit16.i ], [ %call.i.i.i.i, %ad9467_spi_write.exit.i.ad9467_outputmode_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_ad9467__230_472_ad9467_driver_init6, !1, !"__initcall__kmod_ad9467__230_472_ad9467_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad9467.c", i32 472, i32 1}
!2 = !{ptr @__exitcall_ad9467_driver_exit, !1, !"__exitcall_ad9467_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad9467.c", i32 474, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad9467.c", i32 475, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad9467.c", i32 476, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad9467.c", i32 467, i32 11}
!12 = !{ptr @ad9467_driver, !13, !"ad9467_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad9467.c", i32 465, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad9467.c", i32 407, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad9467.c", i32 419, i32 56}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad9467.c", i32 424, i32 54}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad9467.c", i32 441, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ad9467_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ad9467_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad9467.c", i32 351, i32 4}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ad9467_write_raw._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @ad9467_write_raw._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ad9467_of_match, !35, !"ad9467_of_match", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad9467.c", i32 457, i32 34}
!36 = !{ptr @ad9467_chip_tbl, !37, !"ad9467_chip_tbl", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad9467.c", i32 231, i32 38}
!38 = !{ptr @ad9467_channels, !39, !"ad9467_channels", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad9467.c", i32 227, i32 35}
!40 = !{ptr @ad9265_scale_table, !41, !"ad9265_scale_table", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ad9467.c", i32 179, i32 27}
!42 = !{ptr @ad9434_channels, !43, !"ad9434_channels", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad9467.c", i32 223, i32 35}
!44 = !{ptr @ad9434_scale_table, !45, !"ad9434_scale_table", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ad9467.c", i32 183, i32 27}
!46 = !{ptr @ad9467_scale_table, !47, !"ad9467_scale_table", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ad9467.c", i32 190, i32 27}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}

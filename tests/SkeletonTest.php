<?php

namespace Kata\Tests;

use Kata\SkeletonClass;
use PHPUnit\Framework\TestCase;

class SkeletonTest extends TestCase
{
    /** @test */
    public function first_test()
    {
        // Arrange
        $testingClass = new SkeletonClass();

        // Act
        $result = $testingClass->testingIsTrue();

        // Assert
        $this->assertTrue($result);
    }
}